Output a list of all modules on the cluster to the file `module_list.txt`.
Output a list of all versions of GCC, and a module description, to the file `module_GCC.txt`.
Output the binary path for the module `MATLAB/2017a` and any other modules it must load, to the file `matlab_module.txt`.
Output a list of all versions of Python to the file `python_modules.txt`
Output a list of all partitions on the cluster to the file `partition.txt`.
Output the list of waiting jobs only on the cloud partition to the file `cloud_waiting.txt`.
Write a job script, `R_single.slurm`, with the parameters of cloud partition, 1 cpu, 10 minutes walltime, using R/3.5.0-GCC-6.2.0 and submit it.
Write a job script, `Python_exclude.slurm`, with the parameters of cloud partition, 1 cpu, 10 minutes walltime, any version of Python, but will not run on spartan-rc001 to spartan-rc005, inclusive.  
Write a job script, `Multitask.slurm`, which requires 32 tasks, loads the minimum modules, and is designed to run with optimal performance.
Write a job script, `Multitask_queue.slurm`, which requires 32 tasks, loads the minimum modules, and is designed to launch as soon as possible.
