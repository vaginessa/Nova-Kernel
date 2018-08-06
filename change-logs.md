#             187~Mod
#           Nova-Kernel
# ***********Changelog***********
#          
# Beta 1.0
# 

*Synced With th latest LineageOS Sources as of 08.05.18
*Initial Release (With Huge Help From SunilPaulMatthew's GitHub Commit Log and Build Framework, huge time saver!)
*Compiled with Bleeding-Edge 8.2 toolchain (SunilPaulMathew)
*Spectrum profile support (KazuDante)
*Enable OC to 3072:
  -DISCLAIMER: (You Must Adjust Voltages for you OWN specific device on higher OC steps)
*ZZmoove: adjusted to acommodate Overclocking (Thanks to Legitsu)
*Enable 268 mhz underclock (Thanks to SunilPaulMatthew)
*Tweak bandwith on higher OC steps (Thanks to ktoonsz)
*Tweak deadline: Allow 0ms deadline latency, increase the read speed (Ktoonsz)
*Set audience sleep delay to 0 to fix delay upon making phone calls
*Async I/O latency to a ssd greatly increased (34% gain,kleikamp & Ktoonsz)
*Fix possible memory leak with sysfs when stats table are freed (Ktoonsz)
*Bump up Max Voltage (Adjusted for higher OC) (Ktoonsz)
*Dirty Writeback Tweaks
*Increased VM_MAX_READAHEAD to 512
*Increased default entropy levels (both read and write)
*Optimized Kernel Samepage Merging
*QuickWakeup (Thanks CrazyGamer)
*PowerSuspend  (Thanks Faux123)
*Enable Cortex_A15 Optimizations (Fusion-Rom Dev Team)
*Add Missing Graphite Define (Ktoonsz)
*Slimbus Overclock (Ktoonsz)
*Slimbus Optimized Overclocking Of Master Component (CrazyGamer)
*Runtime_Compcache Enabled
*VFP Tweaks (Ktoonsz)
*EXT4 Tweaks(Ktoonsz)
*GPU Overclock up to 657 (Ktoonsz)
*Enable Frontswap
*Disable Swap Readahead
*Added Boeffla wakelock blocker (Thanks to sunilpaulmathew & franciscofranco)
*Increase Maximum Swappiness
*Added Kernel mode neon (ShinySide)
*Disable Direct Reclaim File Pages
*Enable Unaligned Capability For ARM (CrazyGamerGR)
*Update min-default adreno frequency to be 200 MHz (kholk)
*Fixed memory entry leak when calling Adreno Convertaddr (Shubhraprakash Das)
*Change clock rates to 19.2 MHz (Faux123/Qualcomm)
*Optimize Sched/Fair a bit (Faux123)
*Applied many new compiler optimizations (Synergy kernel Team & Decimalman)
*Zswap: Uses LZ4 now (if available)
*Added support for LZ4-compressed kernel 
*Fix memory leak in Mass Storage
*Numerous oom_kill tweaks
*Alucard, LazyPlug & Mako Hotplugging
*Intellithermal V.2 Thermal Engine
*Compatible With Kernel Auditor & SmartPack-Kernel Manager
** Much More I'm Forgetting

# 
# All Changes
# Signed Off
# By
# The-Skater-187
