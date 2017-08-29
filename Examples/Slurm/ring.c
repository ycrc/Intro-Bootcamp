#include <mpi.h>
#include <stdio.h>

#define SIZE 10

void func(int me, int proc) {
  int i;
  int field[SIZE];
  MPI_Status status;

  for (i=0; i<SIZE; i++)
    field[i] = i;

  MPI_Barrier(MPI_COMM_WORLD);

  for (i=0; i<1000000; ++i) {
    if (me==0) {
      if (i%10000 == 0) {
        printf("Step %d\n", i);
        fflush(stdout);
      }
      MPI_Send(&field, SIZE, MPI_INT, 1, 4711, MPI_COMM_WORLD);
      MPI_Recv(&field, SIZE, MPI_INT, proc-1, 4711, MPI_COMM_WORLD, &status);
    }
    else {
      MPI_Recv(&field, SIZE, MPI_INT, me-1, 4711, MPI_COMM_WORLD, &status);
      MPI_Send(&field, SIZE, MPI_INT, (me+1)%proc, 4711, MPI_COMM_WORLD);
    }
  }
  MPI_Bcast (&field, SIZE, MPI_INT, 0, MPI_COMM_WORLD);
  printf("%d done.\n", me);
}

int main(int argc, char **argv) {
  int proc, me;
  char host[64];

  MPI_Init (&argc, & argv);
  MPI_Comm_size (MPI_COMM_WORLD, &proc);
  MPI_Comm_rank (MPI_COMM_WORLD, &me);

  gethostname(host, sizeof(host));
  printf("Hello from %s, node %d of %d\n", host, me, proc);
  fflush(stdout);

  func(me, proc);
    
  MPI_Finalize ();
}

