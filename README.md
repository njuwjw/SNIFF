# SNIFF: Scenario-based Flexible Modeling and Scalable Falsification for Reconfigurable CPSs
## Overview
SNIFF is a scenario-based ***modeling*** and ***falsification*** tool for ***reconfigurable CPSs***.
It supports:

- `hierarchical modeling for reconfigurable CPS`:
  providing template models for agent inherent features, together with an instantiation mechanism to activate single agent's runtime behavior, communication configurations for multiple agents' connected behaviors, and scenario task configurations for their dynamic topologies.

- `temporal logic falsification for reconfigurable CPS`:
  employing classification-model-based optimization to explore search space effectively and cut unnecessary system simulations and robustness calculations for efficiency.


## Installation
Dependencies:
- Operating System: Ubuntu Desktop == 22.04.3 LTS

>Our software can run directly on a computer with the newly installed operating system of Ubuntu Desktop 22.04.3 LTS. 
>
>For other environments, we cannot guarantee the stability of the software.

To download our tool, clone the complete repository into a directory (named as ROOT, the same below) of your Ubuntu system.

    git clone https://github.com/SNIFFanonymous/SNIFF.git


## Running SNIFF
You can run the below commands to execute SNIFF:

    cd ROOT/SNIFF tool
    export LD_LIBRARY_PATH=./lib:LD_LIBRARY_PATH.
    sudo chmod +x SNIFF
    ./SNIFF


Try demos in the `examples/` folder or create a project yourself:[fig]

[todo]


## Structures

```
SNIFF
├── SNIFF tool
│      ├── lib
│      ├── platforms
│      └── SNIFF
├── examples
│      ├── uav
│            ├── models
│            ├── tasks
│            └── specs
│      └── assemblyLine
│            ├── models
│            ├── tasks
│            └── specs
├── experiments
│      ├── ...LIB????????
│      └── script.sh
└── README
```
- `SNIFF tool `: Tools executable file and dependency libraries
- `examples `: 
- `experiments `: .........
