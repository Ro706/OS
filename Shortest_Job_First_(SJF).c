#include <stdio.h>
#include <stdlib.h>

struct Process {
    int pid;
    int bt;
};

void SJF(struct Process proc[], int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (proc[j].bt > proc[j + 1].bt) {
                struct Process temp = proc[j];
                proc[j] = proc[j + 1];
                proc[j + 1] = temp;
            }
        }
    }

    int wt[n];
    int tat[n];

    wt[0] = 0;
    for (int i = 1; i < n; i++) {
        wt[i] = proc[i - 1].bt + wt[i - 1];
    }

    for (int i = 0; i < n; i++) {
        tat[i] = proc[i].bt + wt[i];
    }

    printf("Process\tBurst Time\tWaiting Time\tTurnaround Time\n");
    for (int i = 0; i < n; i++) {
        printf("%d\t\t%d\t\t%d\t\t%d\n", proc[i].pid, proc[i].bt, wt[i], tat[i]);
    }

    float total_wt = 0, total_tat = 0;
    for (int i = 0; i < n; i++) {
        total_wt += wt[i];
        total_tat += tat[i];
    }
    printf("Average Waiting Time: %.2f\n", total_wt / n);
    printf("Average Turnaround Time: %.2f\n", total_tat / n);
}

int main() {
    int n = 4;
    struct Process proc[] = {{1, 6}, {2, 8}, {3, 7}, {4, 3}};
    SJF(proc, n);
    return 0;
}
