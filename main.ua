# Experimental!
~Cfg {Outputs Inputs MutRate ← 0.1|MutChance ← 0.1}
Init    ← ⁅₃⧈{⊃(-⊸¬gen⊓⊟⚂|↯⊓⋅∘0)} # ? LayerSizes
Forward ← ˜∧(↥0˜/◇(+/+×))         # Out ? In Net
Mix     ← ⍚₀≡₀(⊢°⍆⊟)
Fitness ← /+/+°⍉⌵-⊓≡¤⊞Forward Cfg!⊃Outputs Inputs    # ? Cfg Nets
Mutate  ← ⍚₀≡₀(+×⊓(×-⊸¬⚂|>⚂)) Cfg!⊃MutRate MutChance # ? Cfg Net
Gen     ← Mutate⟜(↙⊃⧻(°⍆/⊂˙⊞Mix ↙⌈÷3⊸⧻)⊏⍏⊸Fitness)   # ? Cfg Nets
Train   ← ◌⍥⟜Gen                                     # ? Gens Cfg Nets
Best    ← ⊏⊢⍏⊸Fitness                                # ? Cfg Nets

⍥⟜Init 32 [2 3 1]             # Init population
Cfg ⊸≡[/≠] [0_0 0_1 1_0 1_1]  # XOR
⊃⋅∘Train 60                   # Train
⁅₃ ≡⌟Forward ⊃Cfg~Inputs Best # Select best and test
