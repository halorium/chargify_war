Chargify Coding Challenge: WAR
==============================

The following scripts can be run:

```bash
chargify_war $ ruby stats.rb 100
```

Output will be in the form of:

```bash
Number of games: 100
Average number of wars:  28.23
Average number of hands: 483.8
Lowest number of hands:  52
Highest number of hands: 2503
Player 1 wins: 40
Player 2 wins: 60
```

```bash
chargify_war $ ruby benchmark.rb 100
```

Output will be in the form of:

```bash
    user     system      total        real
0.080000   0.000000   0.080000 (  0.076309)
```

Tests are also available using rspec and can be run:

```bash
chargify_war $ bundle
chargify_war $ rspec
```
