Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CD81D3251
	for <lists+jfs-discussion@lfdr.de>; Thu, 14 May 2020 16:12:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jZEaO-0002km-Kb; Thu, 14 May 2020 14:11:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rong.a.chen@intel.com>) id 1jZ6C9-0003p6-UH
 for jfs-discussion@lists.sourceforge.net; Thu, 14 May 2020 05:14:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z//Y28aKRkKfom6nD9+qGC4r+QK7AB3Li0zTfapqXBs=; b=Y04x3kTlh3QeeV0wxs1f5hG4TP
 0toLNP4Afui7DeV8Mp/mj/hX47iQeTliv7sKEsdy+Gz8MWGRTdkwneYdejbISGuo0Kc19vFUO0zkN
 b8IJ5yXcSidAJdqRg+spxfCtgbNkRz1o8/yr2Me8Hn1Zl8d0yx94iVq89970xc4/MXvk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z//Y28aKRkKfom6nD9+qGC4r+QK7AB3Li0zTfapqXBs=; b=VuzoeBt59Ud4WeUQkqpW7DweVj
 5+/fydB4O0fIsm7rC7fuCN2zAE3hMmJa7tDE5N9cZu0GIX6qgoXV8jiVR8EZBYcdjyX9/LRC2rZUH
 Ya3fEjz35ty8Q16j/sJsQm89Bnb0AYt+m3QoFAXGtP5g/lYaF8KgO0vRGZ9h7g3vNSVE=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jZ6C9-006NoZ-BN
 for jfs-discussion@lists.sourceforge.net; Thu, 14 May 2020 05:14:09 +0000
IronPort-SDR: 1asJkkXTWPuaF92d+O6Jfma8JSFndrP4066XMECeIZUHb7ZrNj9YLMzW++IGXbsbKxA19c2hNL
 ymyDruMQA/IQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 22:14:02 -0700
IronPort-SDR: GrzFGNe/Ug4Qrod1ehyju/zf2A8usqmaoTW/ayOolUl+Mig1ZkQXxvYl1RDD0Phl/abuvOWwH+
 TkhDk7CipN9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,390,1583222400"; 
 d="yaml'?scan'208";a="464193743"
Received: from shao2-debian.sh.intel.com (HELO localhost) ([10.239.13.3])
 by fmsmga005.fm.intel.com with ESMTP; 13 May 2020 22:13:53 -0700
Date: Thu, 14 May 2020 13:13:35 +0800
From: kernel test robot <rong.a.chen@intel.com>
To: Jia-Ju Bai <baijiaju1990@gmail.com>
Message-ID: <20200514051335.GM17565@shao2-debian>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="kkcDP0v44wDpNmbp"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200505145013.8040-1-baijiaju1990@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Mailman-Approved-At: Thu, 14 May 2020 14:11:43 +0000
Subject: [Jfs-discussion] [fs] 05c5a0273b: will-it-scale.per_thread_ops
 -74.6% regression
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 Christian Kujau <lists@nerdbynature.de>, linux-kernel@vger.kernel.org,
 lkp@lists.01.org, Jia-Ju Bai <baijiaju1990@gmail.com>, Markus.Elfring@web.de
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


--kkcDP0v44wDpNmbp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Greeting,

FYI, we noticed a -74.6% regression of will-it-scale.per_thread_ops due to commit:


commit: 05c5a0273bc25627b9e9bbebc858b74e88f49c5b ("[PATCH v2] fs: jfs: fix a possible data race in txBegin()")
url: https://github.com/0day-ci/linux/commits/Jia-Ju-Bai/fs-jfs-fix-a-possible-data-race-in-txBegin/20200506-064230
base: https://github.com/kleikamp/linux-shaggy jfs-next

in testcase: will-it-scale
on test machine: 8 threads Intel(R) Core(TM) i7-3770K CPU @ 3.50GHz with 16G memory
with following parameters:

	nr_task: 100%
	mode: thread
	test: unlink2
	cpufreq_governor: performance
	ucode: 0x21

test-description: Will It Scale takes a testcase and runs it from 1 through to n parallel copies to see if the testcase will scale. It builds both a process and threads based test in order to see any differences between the two.
test-url: https://github.com/antonblanchard/will-it-scale

In addition to that, the commit also has significant impact on the following tests:

+------------------+----------------------------------------------------------------------+
| testcase: change | will-it-scale: will-it-scale.per_process_ops -84.4% regression       |
| test machine     | 288 threads Intel(R) Xeon Phi(TM) CPU 7295 @ 1.50GHz with 80G memory |
| test parameters  | cpufreq_governor=performance                                         |
|                  | mode=process                                                         |
|                  | nr_task=100%                                                         |
|                  | test=getppid1                                                        |
|                  | ucode=0x11                                                           |
+------------------+----------------------------------------------------------------------+
| testcase: change | netperf: netperf.Throughput_total_tps -71.8% regression              |
| test machine     | 72 threads Intel(R) Xeon(R) Gold 6139 CPU @ 2.30GHz with 128G memory |
| test parameters  | cluster=cs-localhost                                                 |
|                  | cpufreq_governor=performance                                         |
|                  | ip=ipv4                                                              |
|                  | nr_threads=1                                                         |
|                  | runtime=300s                                                         |
|                  | test=TCP_CRR                                                         |
|                  | ucode=0x2000065                                                      |
+------------------+----------------------------------------------------------------------+


If you fix the issue, kindly add following tag
Reported-by: kernel test robot <rong.a.chen@intel.com>


Details are as below:
-------------------------------------------------------------------------------------------------->


To reproduce:

        git clone https://github.com/intel/lkp-tests.git
        cd lkp-tests
        bin/lkp install job.yaml  # job file is attached in this email
        bin/lkp run     job.yaml

=========================================================================================
compiler/cpufreq_governor/kconfig/mode/nr_task/rootfs/tbox_group/test/testcase/ucode:
  gcc-7/performance/x86_64-rhel-7.6/thread/100%/debian-x86_64-20191114.cgz/lkp-ivb-d01/unlink2/will-it-scale/0x21

commit: 
  7aba5dcc23 ("jfs: Replace zero-length array with flexible-array member")
  05c5a0273b ("fs: jfs: fix a possible data race in txBegin()")

7aba5dcc234635b4 05c5a0273bc25627b9e9bbebc85 
---------------- --------------------------- 
       fail:runs  %reproduction    fail:runs
           |             |             |    
           :4           25%           1:4     dmesg.RIP:kmem_cache_alloc
           :4           25%           1:4     dmesg.WARNING:at#for_ip_interrupt_entry/0x
          3:4          -75%            :4     dmesg.WARNING:at#for_ip_swapgs_restore_regs_and_return_to_usermode/0x
          3:4          -75%            :4     dmesg.WARNING:stack_recursion
           :4           50%           2:4     kmsg.IP-Config:Failed_to_open_erspan0
           :4           50%           2:4     kmsg.IP-Config:Failed_to_open_gretap0
          1:4          -25%            :4     kmsg.cbb7>]usb_hcd_irq
          1:4          -25%            :4     kmsg.d54b4>]usb_hcd_irq
           :4           25%           1:4     kmsg.f3a47>]usb_hcd_irq
           :4           25%           1:4     kmsg.f681a>]usb_hcd_irq
          1:4          -25%            :4     kmsg.f8c>]usb_hcd_irq
          1:4          -25%            :4     kmsg.fffb>]usb_hcd_irq
           :4           50%           2:4     kmsg.kvm:already_loaded_the_other_module
         %stddev     %change         %stddev
             \          |                \  
    131035           -74.6%      33245        will-it-scale.per_thread_ops
    947843            -3.9%     910679        will-it-scale.time.involuntary_context_switches
      2048           +10.2%       2257        will-it-scale.time.system_time
    332.26           -68.9%     103.44        will-it-scale.time.user_time
   1048286           -74.6%     265968        will-it-scale.workload
     18.83           +32.4%      24.93 ±  2%  boot-time.boot
      7.96           -17.9%       6.54 ± 14%  boot-time.dhcp
    128.66           +34.1%     172.50 ±  2%  boot-time.idle
    253528 ±141%   +1060.4%    2941982        cpuidle.C3.time
      1369 ±127%    +489.0%       8068 ±  9%  cpuidle.C3.usage
   7903103 ± 15%     -39.2%    4801161 ±  6%  cpuidle.C6.time
      2.54 ±  4%      +0.8        3.39        mpstat.cpu.all.soft%
     82.77            +8.7       91.45        mpstat.cpu.all.sys%
     14.40            -9.5        4.90        mpstat.cpu.all.usr%
    134740 ±  8%     +15.1%     155027 ±  2%  softirqs.CPU4.TIMER
    134471 ±  5%     +15.9%     155790        softirqs.CPU7.TIMER
     22928           +11.8%      25638        softirqs.SCHED
     84.00           +11.9%      94.00        vmstat.cpu.sy
     14.00           -71.4%       4.00        vmstat.cpu.us
      6741            -5.2%       6391        vmstat.system.cs
    147592 ±  3%     -13.9%     127112        meminfo.DirectMap4k
     49716           +37.7%      68474        meminfo.KReclaimable
     49716           +37.7%      68474        meminfo.SReclaimable
     22434 ±  4%      +7.5%      24125 ±  2%  meminfo.Shmem
    115521 ±  3%     +20.9%     139668        meminfo.Slab
      4073            +1.0%       4116        proc-vmstat.nr_kernel_stack
      5603 ±  4%      +7.6%       6030 ±  2%  proc-vmstat.nr_shmem
     12529           +37.8%      17269        proc-vmstat.nr_slab_reclaimable
     17051 ±  3%     +10.9%      18913        proc-vmstat.nr_slab_unreclaimable
  30456663 ±  3%     -77.4%    6890093        proc-vmstat.numa_hit
  30456663 ±  3%     -77.4%    6890093        proc-vmstat.numa_local
  71202984 ±  4%     -54.3%   32526510        proc-vmstat.pgalloc_normal
    384490            -1.2%     380065        proc-vmstat.pgfault
  71172080 ±  4%     -54.3%   32497466        proc-vmstat.pgfree
      2.55 ± 11%     +46.0%       3.72 ±  3%  sched_debug.cfs_rq:/.nr_spread_over.avg
      3.94 ± 13%     +23.1%       4.85 ±  8%  sched_debug.cfs_rq:/.nr_spread_over.stddev
      1.00          +250.0%       3.50 ± 66%  sched_debug.cfs_rq:/.util_est_enqueued.min
      0.45 ±  9%     +17.5%       0.53        sched_debug.cpu.nr_running.stddev
    398099 ± 16%     -25.4%     297012 ±  5%  sched_debug.cpu.nr_switches.max
     68866 ± 45%     +53.8%     105917 ± 10%  sched_debug.cpu.nr_switches.min
    108672 ± 28%     -36.9%      68536 ± 11%  sched_debug.cpu.nr_switches.stddev
    394087 ± 16%     -26.5%     289489 ±  6%  sched_debug.cpu.sched_count.max
      9159 ±  9%     -11.9%       8071 ±  3%  sched_debug.cpu.sched_goidle.max
    195763 ± 16%     -26.3%     144197 ±  6%  sched_debug.cpu.ttwu_count.max
     31795 ± 51%     +51.6%      48206 ± 13%  sched_debug.cpu.ttwu_count.min
    194370 ± 16%     -26.5%     142882 ±  6%  sched_debug.cpu.ttwu_local.max
    221.50 ± 31%     +45.6%     322.50 ± 23%  interrupts.53:PCI-MSI.528389-edge.eth3-TxRx-4
    406.50 ± 17%    -100.0%       0.00        interrupts.CPU0.49:PCI-MSI.528385-edge.eth3-TxRx-0
    410.75 ± 51%    -100.0%       0.00        interrupts.CPU1.50:PCI-MSI.528386-edge.eth3-TxRx-1
    295.25 ± 41%    -100.0%       0.00        interrupts.CPU2.51:PCI-MSI.528387-edge.eth3-TxRx-2
     10726 ± 33%     -33.8%       7098        interrupts.CPU2.NMI:Non-maskable_interrupts
     10726 ± 33%     -33.8%       7098        interrupts.CPU2.PMI:Performance_monitoring_interrupts
    209.50 ± 18%    -100.0%       0.00        interrupts.CPU3.52:PCI-MSI.528388-edge.eth3-TxRx-3
    221.50 ± 31%    -100.0%       0.00        interrupts.CPU4.53:PCI-MSI.528389-edge.eth3-TxRx-4
    379.75 ± 23%    -100.0%       0.00        interrupts.CPU5.54:PCI-MSI.528390-edge.eth3-TxRx-5
    546708 ± 20%     +36.4%     745448        interrupts.CPU5.LOC:Local_timer_interrupts
      1345 ± 27%    +192.1%       3928 ± 19%  interrupts.CPU5.RES:Rescheduling_interrupts
    213.25 ± 25%    -100.0%       0.00        interrupts.CPU6.55:PCI-MSI.528391-edge.eth3-TxRx-6
      9758 ± 30%     -27.1%       7112        interrupts.CPU6.NMI:Non-maskable_interrupts
      9758 ± 30%     -27.1%       7112        interrupts.CPU6.PMI:Performance_monitoring_interrupts
    179.25 ±  7%    -100.0%       0.00        interrupts.CPU7.56:PCI-MSI.528392-edge.eth3-TxRx-7
     25363 ±  8%     +14.0%      28913 ±  5%  interrupts.RES:Rescheduling_interrupts
      5.08 ±  3%     -61.9%       1.94        perf-stat.i.MPKI
 3.074e+09           +45.1%  4.462e+09        perf-stat.i.branch-instructions
      1.08            -0.7        0.35        perf-stat.i.branch-miss-rate%
  33284020           -54.6%   15106837        perf-stat.i.branch-misses
     12.57 ±  2%      +6.8       19.34        perf-stat.i.cache-miss-rate%
   9810523 ±  2%      -8.5%    8977759        perf-stat.i.cache-misses
  78283875 ±  3%     -40.2%   46849959        perf-stat.i.cache-references
      6783            -4.9%       6448        perf-stat.i.context-switches
      1.90           -36.6%       1.21        perf-stat.i.cpi
     61.66 ±  7%     -45.5%      33.59        perf-stat.i.cpu-migrations
      2990 ±  2%      +8.7%       3250        perf-stat.i.cycles-between-cache-misses
      1.84 ± 15%      -0.6        1.20 ±  8%  perf-stat.i.dTLB-load-miss-rate%
 4.474e+09           +52.4%  6.816e+09        perf-stat.i.dTLB-loads
      0.32 ±  7%      -0.2        0.13 ± 10%  perf-stat.i.dTLB-store-miss-rate%
  10493472 ±  7%     -47.5%    5505011 ± 10%  perf-stat.i.dTLB-store-misses
 3.233e+09           +30.1%  4.206e+09        perf-stat.i.dTLB-stores
     90.39 ±  2%      +7.9       98.33        perf-stat.i.iTLB-load-miss-rate%
   2871267 ±  2%     -65.4%     993192        perf-stat.i.iTLB-load-misses
    314540 ± 26%     -94.8%      16476 ± 12%  perf-stat.i.iTLB-loads
  1.54e+10           +57.0%  2.417e+10        perf-stat.i.instructions
      5386          +352.4%      24367        perf-stat.i.instructions-per-iTLB-miss
      0.53           +57.6%       0.83        perf-stat.i.ipc
      0.42           +21.2%       0.50 ±  6%  perf-stat.i.metric.K/sec
      1358           +42.9%       1941        perf-stat.i.metric.M/sec
      5.08 ±  3%     -61.9%       1.94        perf-stat.overall.MPKI
      1.08            -0.7        0.34        perf-stat.overall.branch-miss-rate%
     12.54 ±  2%      +6.6       19.16        perf-stat.overall.cache-miss-rate%
      1.90           -36.5%       1.21        perf-stat.overall.cpi
      2986 ±  2%      +8.7%       3248        perf-stat.overall.cycles-between-cache-misses
      1.85 ± 15%      -0.6        1.20 ±  8%  perf-stat.overall.dTLB-load-miss-rate%
      0.32 ±  7%      -0.2        0.13 ± 10%  perf-stat.overall.dTLB-store-miss-rate%
     90.18 ±  2%      +8.2       98.37        perf-stat.overall.iTLB-load-miss-rate%
      5366          +353.6%      24341        perf-stat.overall.instructions-per-iTLB-miss
      0.53           +57.6%       0.83        perf-stat.overall.ipc
   4425502          +516.9%   27302878        perf-stat.overall.path-length
 3.064e+09           +45.1%  4.447e+09        perf-stat.ps.branch-instructions
  33174183           -54.6%   15059388        perf-stat.ps.branch-misses
   9777682 ±  2%      -8.5%    8947700        perf-stat.ps.cache-misses
  78021322 ±  3%     -40.2%   46693223        perf-stat.ps.cache-references
      6761            -4.9%       6427        perf-stat.ps.context-switches
     61.46 ±  7%     -45.5%      33.48        perf-stat.ps.cpu-migrations
 4.459e+09           +52.4%  6.793e+09        perf-stat.ps.dTLB-loads
  10458278 ±  7%     -47.5%    5486565 ± 10%  perf-stat.ps.dTLB-store-misses
 3.222e+09           +30.1%  4.192e+09        perf-stat.ps.dTLB-stores
   2861644 ±  2%     -65.4%     989874        perf-stat.ps.iTLB-load-misses
    313490 ± 26%     -94.8%      16429 ± 12%  perf-stat.ps.iTLB-loads
 1.535e+10           +57.0%  2.409e+10        perf-stat.ps.instructions
 4.639e+12           +56.5%  7.262e+12        perf-stat.total.instructions
      3864           +39.8%       5401        slabinfo.Acpi-Operand.active_objs
      3864           +39.8%       5401        slabinfo.Acpi-Operand.num_objs
    529.25 ±  5%    -100.0%       0.00        slabinfo.Acpi-Parse.active_objs
    529.25 ±  5%    -100.0%       0.00        slabinfo.Acpi-Parse.num_objs
    497.25 ±  8%     -17.9%     408.00        slabinfo.Acpi-State.active_objs
    497.25 ±  8%     -17.9%     408.00        slabinfo.Acpi-State.num_objs
    121.50 ± 12%    -100.0%       0.00        slabinfo.UDPv6.active_objs
    121.50 ± 12%    -100.0%       0.00        slabinfo.UDPv6.num_objs
      3399 ±  6%     -26.6%       2494 ±  4%  slabinfo.anon_vma.active_objs
      3399 ±  6%     -24.3%       2572 ±  5%  slabinfo.anon_vma.num_objs
      1018 ±  3%    -100.0%       0.00        slabinfo.cred_jar.active_objs
      1018 ±  3%    -100.0%       0.00        slabinfo.cred_jar.num_objs
     83981 ±  2%     -22.6%      65026 ±  3%  slabinfo.dentry.active_objs
      4003 ±  2%     -41.9%       2327 ±  3%  slabinfo.dentry.active_slabs
     84073 ±  2%     -22.5%      65193 ±  3%  slabinfo.dentry.num_objs
      4003 ±  2%     -41.9%       2327 ±  3%  slabinfo.dentry.num_slabs
    176.50 ±  2%    -100.0%       0.00        slabinfo.dmaengine-unmap-16.active_objs
    176.50 ±  2%    -100.0%       0.00        slabinfo.dmaengine-unmap-16.num_objs
    272.50 ±  9%    -100.0%       0.00        slabinfo.file_lock_cache.active_objs
    272.50 ±  9%    -100.0%       0.00        slabinfo.file_lock_cache.num_objs
     39280 ±  6%     -48.5%      20210 ± 10%  slabinfo.filp.active_objs
      1232 ±  5%     -48.2%     638.50 ± 10%  slabinfo.filp.active_slabs
     39445 ±  5%     -48.2%      20452 ± 10%  slabinfo.filp.num_objs
      1232 ±  5%     -48.2%     638.50 ± 10%  slabinfo.filp.num_slabs
    140.25          -100.0%       0.00        slabinfo.fsnotify_mark_connector.active_objs
    800.00 ±  6%    -100.0%       0.00        slabinfo.fsnotify_mark_connector.num_objs
      1548           -20.2%       1235        slabinfo.inode_cache.active_slabs
      1548           -20.2%       1235        slabinfo.inode_cache.num_slabs
    984.25           +34.0%       1318        slabinfo.kernfs_node_cache.active_slabs
    984.25           +34.0%       1318        slabinfo.kernfs_node_cache.num_slabs
      1406           -23.1%       1081        slabinfo.kmalloc-192.active_objs
      1406           -23.1%       1081        slabinfo.kmalloc-192.num_objs
      1839           -26.1%       1360        slabinfo.kmalloc-1k.active_objs
      1839           -26.1%       1360        slabinfo.kmalloc-1k.num_objs
      1393           +27.4%       1776        slabinfo.kmalloc-256.active_objs
      1393           +27.4%       1776        slabinfo.kmalloc-256.num_objs
    773.75 ±  2%     +76.7%       1367        slabinfo.kmalloc-2k.active_objs
    773.75 ±  2%     +76.7%       1367        slabinfo.kmalloc-2k.num_objs
    220.75 ±  4%    +111.1%     466.00        slabinfo.kmalloc-4k.active_objs
    222.50 ±  3%    +109.4%     466.00        slabinfo.kmalloc-4k.num_objs
      1607 ± 11%     +33.3%       2143        slabinfo.kmalloc-512.active_objs
      1640 ± 10%     +30.7%       2143        slabinfo.kmalloc-512.num_objs
      1055 ±  6%     +54.6%       1632        slabinfo.kmalloc-rcl-64.active_objs
      1055 ±  6%     +54.6%       1632        slabinfo.kmalloc-rcl-64.num_objs
    808.50 ±  2%     -19.5%     651.00 ±  3%  slabinfo.kmalloc-rcl-96.active_objs
    808.50 ±  2%     -19.5%     651.00 ±  3%  slabinfo.kmalloc-rcl-96.num_objs
    448.00 ± 10%     -39.3%     272.00 ±  5%  slabinfo.kmem_cache_node.active_objs
    448.00 ± 10%     -39.3%     272.00 ±  5%  slabinfo.kmem_cache_node.num_objs
      2505 ±  7%    -100.0%       0.00        slabinfo.lsm_file_cache.active_objs
      2505 ±  7%    -100.0%       0.00        slabinfo.lsm_file_cache.num_objs
    243.75 ±  8%    -100.0%       0.00        slabinfo.mnt_cache.active_objs
    243.75 ±  8%    -100.0%       0.00        slabinfo.mnt_cache.num_objs
    511.50 ±  3%     -54.5%     232.50 ±  6%  slabinfo.numa_policy.active_objs
    511.50 ±  3%     -54.5%     232.50 ±  6%  slabinfo.numa_policy.num_objs
    648.00 ±  4%    +111.3%       1369 ±  2%  slabinfo.pid.active_objs
    648.00 ±  4%    +111.3%       1369 ±  2%  slabinfo.pid.num_objs
     39796 ±  6%     -48.2%      20599 ± 10%  slabinfo.shmem_inode_cache.active_objs
      1732 ±  6%     -54.1%     794.50 ± 10%  slabinfo.shmem_inode_cache.active_slabs
     39842 ±  6%     -48.1%      20665 ± 10%  slabinfo.shmem_inode_cache.num_objs
      1732 ±  6%     -54.1%     794.50 ± 10%  slabinfo.shmem_inode_cache.num_slabs
    637.25 ±  3%     -22.4%     494.50 ±  2%  slabinfo.task_delay_info.active_objs
    637.25 ±  3%     -22.4%     494.50 ±  2%  slabinfo.task_delay_info.num_objs
    110.50 ± 13%    +160.6%     288.00        slabinfo.task_group.active_objs
    145.50 ± 11%     +97.9%     288.00        slabinfo.task_group.num_objs
     10.20           -10.2        0.00        perf-profile.calltrace.cycles-pp.shmem_mknod.path_openat.do_filp_open.do_sys_openat2.do_sys_open
      7.41            -7.4        0.00        perf-profile.calltrace.cycles-pp.shmem_get_inode.shmem_mknod.path_openat.do_filp_open.do_sys_openat2
     14.30            -4.3        9.99        perf-profile.calltrace.cycles-pp.__GI___libc_close
     10.95            -2.3        8.64 ±  2%  perf-profile.calltrace.cycles-pp.do_syscall_64.entry_SYSCALL_64_after_hwframe.__GI___libc_close
     11.10            -2.1        9.01 ±  2%  perf-profile.calltrace.cycles-pp.entry_SYSCALL_64_after_hwframe.__GI___libc_close
      3.55 ±  2%      -1.5        2.02        perf-profile.calltrace.cycles-pp.link_path_walk.path_openat.do_filp_open.do_sys_openat2.do_sys_open
      2.93            -1.4        1.50        perf-profile.calltrace.cycles-pp.do_dentry_open.path_openat.do_filp_open.do_sys_openat2.do_sys_open
      3.48 ±  2%      -1.4        2.12        perf-profile.calltrace.cycles-pp.link_path_walk.path_parentat.filename_parentat.do_unlinkat.do_syscall_64
      5.73            -1.1        4.65        perf-profile.calltrace.cycles-pp.filename_parentat.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe.unlink
      1.29 ±  4%      -1.0        0.26 ±100%  perf-profile.calltrace.cycles-pp.strncpy_from_user.getname_flags.do_sys_openat2.do_sys_open.do_syscall_64
     48.31            -0.8       47.48        perf-profile.calltrace.cycles-pp.__GI___libc_open
      5.33 ±  2%      -0.8        4.52 ±  2%  perf-profile.calltrace.cycles-pp.path_parentat.filename_parentat.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe
      2.53 ±  4%      -0.8        1.75        perf-profile.calltrace.cycles-pp.__x64_sys_unlink.do_syscall_64.entry_SYSCALL_64_after_hwframe.unlink
      2.37 ±  4%      -0.7        1.72 ±  2%  perf-profile.calltrace.cycles-pp.getname_flags.__x64_sys_unlink.do_syscall_64.entry_SYSCALL_64_after_hwframe.unlink
      2.42 ±  2%      -0.6        1.77        perf-profile.calltrace.cycles-pp.getname_flags.do_sys_openat2.do_sys_open.do_syscall_64.entry_SYSCALL_64_after_hwframe
      1.40 ±  5%      -0.6        0.83 ±  3%  perf-profile.calltrace.cycles-pp.___slab_alloc.__slab_alloc.kmem_cache_alloc.shmem_alloc_inode.alloc_inode
      1.42 ±  5%      -0.6        0.85 ±  2%  perf-profile.calltrace.cycles-pp.__slab_alloc.kmem_cache_alloc.shmem_alloc_inode.alloc_inode.new_inode_pseudo
      1.29 ±  5%      -0.5        0.79 ±  3%  perf-profile.calltrace.cycles-pp.new_slab.___slab_alloc.__slab_alloc.kmem_cache_alloc.shmem_alloc_inode
      1.98 ±  3%      -0.4        1.55        perf-profile.calltrace.cycles-pp.walk_component.link_path_walk.path_openat.do_filp_open.do_sys_openat2
      2.20 ±  7%      -0.4        1.82 ±  5%  perf-profile.calltrace.cycles-pp.__x64_sys_close.do_syscall_64.entry_SYSCALL_64_after_hwframe.__GI___libc_close
      0.89 ±  4%      -0.4        0.52        perf-profile.calltrace.cycles-pp.__d_lookup_rcu.lookup_fast.walk_component.link_path_walk.path_openat
      0.62            -0.4        0.26 ±100%  perf-profile.calltrace.cycles-pp.call_rcu.__dentry_kill.dput.do_unlinkat.do_syscall_64
      0.90 ±  7%      -0.3        0.55 ±  2%  perf-profile.calltrace.cycles-pp.__d_lookup_rcu.lookup_fast.walk_component.link_path_walk.path_parentat
      1.96 ±  4%      -0.3        1.62        perf-profile.calltrace.cycles-pp.walk_component.link_path_walk.path_parentat.filename_parentat.do_unlinkat
      1.03            -0.3        0.72        perf-profile.calltrace.cycles-pp.inode_init_always.alloc_inode.new_inode_pseudo.new_inode.shmem_get_inode
      3.27 ±  2%      -0.3        2.96        perf-profile.calltrace.cycles-pp.alloc_inode.new_inode_pseudo.new_inode.shmem_get_inode.shmem_mknod
      1.65 ±  4%      -0.2        1.46        perf-profile.calltrace.cycles-pp.lookup_fast.walk_component.link_path_walk.path_openat.do_filp_open
      0.80 ±  2%      -0.2        0.63        perf-profile.calltrace.cycles-pp.apparmor_file_alloc_security.security_file_alloc.__alloc_file.alloc_empty_file.path_openat
      1.26            -0.2        1.10 ±  2%  perf-profile.calltrace.cycles-pp.destroy_inode.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe.unlink
      0.91 ±  3%      -0.1        0.78        perf-profile.calltrace.cycles-pp.shmem_free_inode.shmem_evict_inode.evict.do_unlinkat.do_syscall_64
      3.58            -0.1        3.49        perf-profile.calltrace.cycles-pp.__fput.task_work_run.exit_to_usermode_loop.do_syscall_64.entry_SYSCALL_64_after_hwframe
      1.10            -0.1        1.02 ±  3%  perf-profile.calltrace.cycles-pp.__destroy_inode.destroy_inode.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe
      1.01 ±  3%      +0.1        1.06        perf-profile.calltrace.cycles-pp.ima_file_check.path_openat.do_filp_open.do_sys_openat2.do_sys_open
      0.89 ±  2%      +0.1        0.97 ±  5%  perf-profile.calltrace.cycles-pp.complete_walk.path_openat.do_filp_open.do_sys_openat2.do_sys_open
      3.79            +0.1        3.88        perf-profile.calltrace.cycles-pp.alloc_empty_file.path_openat.do_filp_open.do_sys_openat2.do_sys_open
      0.81 ±  3%      +0.1        0.95        perf-profile.calltrace.cycles-pp.security_task_getsecid.ima_file_check.path_openat.do_filp_open.do_sys_openat2
      0.71 ±  4%      +0.2        0.86        perf-profile.calltrace.cycles-pp.may_open.path_openat.do_filp_open.do_sys_openat2.do_sys_open
      0.54 ±  3%      +0.2        0.71 ±  5%  perf-profile.calltrace.cycles-pp.legitimize_path.unlazy_walk.complete_walk.path_openat.do_filp_open
      3.61 ±  2%      +0.2        3.79        perf-profile.calltrace.cycles-pp.__alloc_file.alloc_empty_file.path_openat.do_filp_open.do_sys_openat2
      5.79            +0.2        5.97        perf-profile.calltrace.cycles-pp.exit_to_usermode_loop.do_syscall_64.entry_SYSCALL_64_after_hwframe.__GI___libc_close
      0.57 ±  3%      +0.2        0.76        perf-profile.calltrace.cycles-pp.iput.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe.unlink
      1.24 ±  2%      +0.2        1.44        perf-profile.calltrace.cycles-pp.kmem_cache_alloc.__alloc_file.alloc_empty_file.path_openat.do_filp_open
      0.74 ±  2%      +0.2        0.94 ±  4%  perf-profile.calltrace.cycles-pp.unlazy_walk.complete_walk.path_openat.do_filp_open.do_sys_openat2
      0.96 ±  3%      +0.2        1.16 ±  3%  perf-profile.calltrace.cycles-pp.dentry_unlink_inode.vfs_unlink.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe
      0.67 ±  3%      +0.2        0.90 ±  2%  perf-profile.calltrace.cycles-pp.apparmor_task_getsecid.security_task_getsecid.ima_file_check.path_openat.do_filp_open
      1.50            +0.3        1.77        perf-profile.calltrace.cycles-pp.security_file_alloc.__alloc_file.alloc_empty_file.path_openat.do_filp_open
      0.73 ±  2%      +0.3        1.00 ±  2%  perf-profile.calltrace.cycles-pp.complete_walk.path_parentat.filename_parentat.do_unlinkat.do_syscall_64
      1.16 ± 14%      +0.3        1.46 ±  5%  perf-profile.calltrace.cycles-pp.__close_fd.__x64_sys_close.do_syscall_64.entry_SYSCALL_64_after_hwframe.__GI___libc_close
      1.61            +0.4        1.97        perf-profile.calltrace.cycles-pp.__dentry_kill.dput.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe
      0.60 ±  3%      +0.4        0.96 ±  2%  perf-profile.calltrace.cycles-pp.unlazy_walk.complete_walk.path_parentat.filename_parentat.do_unlinkat
      0.77            +0.4        1.14        perf-profile.calltrace.cycles-pp.mnt_want_write.path_openat.do_filp_open.do_sys_openat2.do_sys_open
      0.82 ±  3%      +0.4        1.19        perf-profile.calltrace.cycles-pp.kmem_cache_alloc.getname_flags.do_sys_openat2.do_sys_open.do_syscall_64
      0.76 ±  7%      +0.4        1.17        perf-profile.calltrace.cycles-pp.mnt_want_write.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe.unlink
      0.75 ±  5%      +0.5        1.21 ±  2%  perf-profile.calltrace.cycles-pp.kmem_cache_alloc.getname_flags.__x64_sys_unlink.do_syscall_64.entry_SYSCALL_64_after_hwframe
      0.39 ± 57%      +0.5        0.86 ±  2%  perf-profile.calltrace.cycles-pp.__follow_mount_rcu.lookup_fast.walk_component.link_path_walk.path_openat
      5.16            +0.5        5.64        perf-profile.calltrace.cycles-pp.task_work_run.exit_to_usermode_loop.do_syscall_64.entry_SYSCALL_64_after_hwframe.__GI___libc_close
      0.00            +0.5        0.52        perf-profile.calltrace.cycles-pp.lock_acquire.__lock_text_start.new_inode_pseudo.new_inode.shmem_get_inode
      0.00            +0.5        0.52        perf-profile.calltrace.cycles-pp.mntput_no_expire.__fput.task_work_run.exit_to_usermode_loop.do_syscall_64
      0.00            +0.5        0.53        perf-profile.calltrace.cycles-pp._raw_spin_unlock_irq.task_work_run.exit_to_usermode_loop.do_syscall_64.entry_SYSCALL_64_after_hwframe
      0.57 ±  4%      +0.5        1.10 ±  2%  perf-profile.calltrace.cycles-pp.kmem_cache_alloc.security_file_alloc.__alloc_file.alloc_empty_file.path_openat
      0.00            +0.5        0.53 ±  3%  perf-profile.calltrace.cycles-pp.mntput_no_expire.terminate_walk.path_openat.do_filp_open.do_sys_openat2
      0.00            +0.5        0.54 ±  4%  perf-profile.calltrace.cycles-pp.__lock_text_start.d_add.simple_lookup.lookup_open.path_openat
      0.00            +0.5        0.54 ±  4%  perf-profile.calltrace.cycles-pp.mntput_no_expire.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe.unlink
      0.00            +0.6        0.56        perf-profile.calltrace.cycles-pp.__lock_text_start.new_inode_pseudo.new_inode.shmem_get_inode.shmem_mknod
      0.00            +0.6        0.56        perf-profile.calltrace.cycles-pp.__lock_acquire.lock_acquire.dput.do_unlinkat.do_syscall_64
      0.00            +0.6        0.56        perf-profile.calltrace.cycles-pp.lock_acquire.down_write.vfs_unlink.do_unlinkat.do_syscall_64
      0.00            +0.6        0.58 ±  4%  perf-profile.calltrace.cycles-pp.do_raw_spin_lock.__alloc_fd.do_sys_openat2.do_sys_open.do_syscall_64
      0.00            +0.6        0.59        perf-profile.calltrace.cycles-pp.xas_start.xas_load.xas_find.find_get_entries.shmem_undo_range
      0.00            +0.6        0.59 ±  5%  perf-profile.calltrace.cycles-pp.__d_instantiate.d_instantiate.shmem_mknod.lookup_open.path_openat
      0.00            +0.6        0.59 ± 11%  perf-profile.calltrace.cycles-pp.lockref_put_or_lock.dput.path_openat.do_filp_open.do_sys_openat2
      0.00            +0.6        0.60        perf-profile.calltrace.cycles-pp.lock_acquire.find_get_entries.shmem_undo_range.shmem_truncate_range.shmem_evict_inode
      0.00            +0.6        0.61 ±  4%  perf-profile.calltrace.cycles-pp.lockref_get_not_dead.legitimize_path.unlazy_walk.complete_walk.path_openat
      0.00            +0.6        0.61        perf-profile.calltrace.cycles-pp.lock_release.dput.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe
      0.00            +0.6        0.61        perf-profile.calltrace.cycles-pp._raw_spin_unlock_irqrestore.__wake_up_common_lock.__d_lookup_done.d_add.simple_lookup
      0.00            +0.6        0.61 ±  2%  perf-profile.calltrace.cycles-pp.lock_acquire._raw_spin_lock_irq.task_work_run.exit_to_usermode_loop.do_syscall_64
      0.00            +0.6        0.61        perf-profile.calltrace.cycles-pp.__lock_acquire.lock_acquire.__lock_text_start.d_delete.vfs_unlink
      0.00            +0.6        0.62 ±  3%  perf-profile.calltrace.cycles-pp.lockref_put_or_lock.dput.__fput.task_work_run.exit_to_usermode_loop
      0.00            +0.6        0.64 ±  3%  perf-profile.calltrace.cycles-pp.lockref_get_not_dead.legitimize_path.unlazy_walk.complete_walk.path_parentat
      0.00            +0.6        0.64        perf-profile.calltrace.cycles-pp.lockref_put_or_lock.dput.shmem_unlink.vfs_unlink.do_unlinkat
      0.00            +0.6        0.64 ±  9%  perf-profile.calltrace.cycles-pp.__softirqentry_text_start.run_ksoftirqd.smpboot_thread_fn.kthread.ret_from_fork
      0.00            +0.6        0.64 ±  9%  perf-profile.calltrace.cycles-pp.rcu_core.__softirqentry_text_start.run_ksoftirqd.smpboot_thread_fn.kthread
      0.00            +0.6        0.64 ±  9%  perf-profile.calltrace.cycles-pp.rcu_do_batch.rcu_core.__softirqentry_text_start.run_ksoftirqd.smpboot_thread_fn
      0.00            +0.6        0.64 ±  9%  perf-profile.calltrace.cycles-pp.run_ksoftirqd.smpboot_thread_fn.kthread.ret_from_fork
      0.00            +0.6        0.64        perf-profile.calltrace.cycles-pp.lock_acquire.d_alloc_parallel.lookup_open.path_openat.do_filp_open
      0.55 ±  4%      +0.6        1.19 ±  3%  perf-profile.calltrace.cycles-pp.path_init.path_openat.do_filp_open.do_sys_openat2.do_sys_open
      0.00            +0.6        0.65        perf-profile.calltrace.cycles-pp.lockref_put_or_lock.dput.terminate_walk.path_openat.do_filp_open
      0.00            +0.6        0.65 ±  9%  perf-profile.calltrace.cycles-pp.smpboot_thread_fn.kthread.ret_from_fork
      0.00            +0.7        0.66        perf-profile.calltrace.cycles-pp.__lock_acquire.lock_acquire.__lock_text_start.evict.do_unlinkat
      0.00            +0.7        0.66        perf-profile.calltrace.cycles-pp.xas_load.xas_find.find_get_entries.shmem_undo_range.shmem_truncate_range
      0.60 ±  5%      +0.7        1.27        perf-profile.calltrace.cycles-pp.path_init.path_parentat.filename_parentat.do_unlinkat.do_syscall_64
      0.00            +0.7        0.68 ±  8%  perf-profile.calltrace.cycles-pp.ret_from_fork
      0.00            +0.7        0.68 ±  8%  perf-profile.calltrace.cycles-pp.kthread.ret_from_fork
      0.00            +0.7        0.68 ±  2%  perf-profile.calltrace.cycles-pp.fsnotify_grab_connector.fsnotify_destroy_marks.__destroy_inode.destroy_inode.do_unlinkat
      0.00            +0.7        0.69 ±  2%  perf-profile.calltrace.cycles-pp.lock_is_held_type.___might_sleep.dput.do_unlinkat.do_syscall_64
      0.00            +0.7        0.70        perf-profile.calltrace.cycles-pp.xas_find.find_get_entries.shmem_undo_range.shmem_truncate_range.shmem_evict_inode
      0.00            +0.7        0.71 ±  3%  perf-profile.calltrace.cycles-pp.fsnotify_destroy_marks.__destroy_inode.destroy_inode.do_unlinkat.do_syscall_64
      0.00            +0.7        0.72 ±  4%  perf-profile.calltrace.cycles-pp.fsnotify_grab_connector.fsnotify_destroy_marks.dentry_unlink_inode.vfs_unlink.do_unlinkat
      0.00            +0.7        0.73 ±  4%  perf-profile.calltrace.cycles-pp.legitimize_path.unlazy_walk.complete_walk.path_parentat.filename_parentat
      0.65 ± 10%      +0.7        1.39        perf-profile.calltrace.cycles-pp.__d_lookup.d_lookup.lookup_dcache.__lookup_hash.do_unlinkat
      0.00            +0.7        0.74 ±  4%  perf-profile.calltrace.cycles-pp.__d_lookup.d_lookup.lookup_open.path_openat.do_filp_open
      0.00            +0.7        0.74 ±  6%  perf-profile.calltrace.cycles-pp.set_root.nd_jump_root.path_init.path_openat.do_filp_open
      0.00            +0.7        0.74        perf-profile.calltrace.cycles-pp.__fd_install.do_sys_openat2.do_sys_open.do_syscall_64.entry_SYSCALL_64_after_hwframe
      0.00            +0.8        0.75        perf-profile.calltrace.cycles-pp.inode_permission.may_open.path_openat.do_filp_open.do_sys_openat2
      0.00            +0.8        0.75 ±  4%  perf-profile.calltrace.cycles-pp.fsnotify_destroy_marks.dentry_unlink_inode.vfs_unlink.do_unlinkat.do_syscall_64
      0.00            +0.8        0.77        perf-profile.calltrace.cycles-pp._raw_spin_lock_irq.task_work_run.exit_to_usermode_loop.do_syscall_64.entry_SYSCALL_64_after_hwframe
      0.00            +0.8        0.77 ±  3%  perf-profile.calltrace.cycles-pp.set_root.nd_jump_root.path_init.path_parentat.filename_parentat
      0.00            +0.8        0.78 ±  3%  perf-profile.calltrace.cycles-pp.ktime_get_coarse_real_ts64.current_time.shmem_truncate_range.shmem_evict_inode.evict
      0.00            +0.8        0.79        perf-profile.calltrace.cycles-pp.down_write.path_openat.do_filp_open.do_sys_openat2.do_sys_open
      0.00            +0.8        0.79 ±  5%  perf-profile.calltrace.cycles-pp.nd_jump_root.path_init.path_openat.do_filp_open.do_sys_openat2
      0.00            +0.8        0.80        perf-profile.calltrace.cycles-pp.inode_sb_list_add.new_inode.shmem_get_inode.shmem_mknod.lookup_open
      0.00            +0.8        0.80 ±  2%  perf-profile.calltrace.cycles-pp.aa_get_task_label.apparmor_task_getsecid.security_task_getsecid.ima_file_check.path_openat
      0.00            +0.8        0.82 ±  2%  perf-profile.calltrace.cycles-pp.nd_jump_root.path_init.path_parentat.filename_parentat.do_unlinkat
      0.00            +0.8        0.83        perf-profile.calltrace.cycles-pp.lock_acquire.__lock_text_start.d_delete.vfs_unlink.do_unlinkat
      0.00            +0.8        0.83        perf-profile.calltrace.cycles-pp.down_write_nested.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe.unlink
      0.00            +0.8        0.83 ±  2%  perf-profile.calltrace.cycles-pp.current_time.shmem_truncate_range.shmem_evict_inode.evict.do_unlinkat
      0.00            +0.8        0.84 ±  2%  perf-profile.calltrace.cycles-pp.clear_inode.shmem_evict_inode.evict.do_unlinkat.do_syscall_64
      0.00            +0.8        0.84 ±  2%  perf-profile.calltrace.cycles-pp.ktime_get_coarse_real_ts64.current_time.shmem_mknod.lookup_open.path_openat
      0.00            +0.8        0.84        perf-profile.calltrace.cycles-pp.get_cached_acl.get_acl.posix_acl_create.simple_acl_create.shmem_mknod
     44.66            +0.9       45.53        perf-profile.calltrace.cycles-pp.do_syscall_64.entry_SYSCALL_64_after_hwframe.__GI___libc_open
      0.00            +0.9        0.88        perf-profile.calltrace.cycles-pp.lock_acquire.__lock_text_start.evict.do_unlinkat.do_syscall_64
      0.00            +0.9        0.88        perf-profile.calltrace.cycles-pp.ktime_get_coarse_real_ts64.current_time.shmem_get_inode.shmem_mknod.lookup_open
      0.00            +0.9        0.88        perf-profile.calltrace.cycles-pp.__lock_text_start.d_delete.vfs_unlink.do_unlinkat.do_syscall_64
      0.95 ±  3%      +0.9        1.83        perf-profile.calltrace.cycles-pp.find_get_entries.shmem_undo_range.shmem_truncate_range.shmem_evict_inode.evict
      0.00            +0.9        0.89 ±  2%  perf-profile.calltrace.cycles-pp.__follow_mount_rcu.lookup_fast.walk_component.link_path_walk.path_parentat
      0.00            +0.9        0.90 ±  2%  perf-profile.calltrace.cycles-pp.current_time.shmem_mknod.lookup_open.path_openat.do_filp_open
      0.00            +0.9        0.90 ±  2%  perf-profile.calltrace.cycles-pp.lock_acquire.dput.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe
      0.00            +0.9        0.91 ±  3%  perf-profile.calltrace.cycles-pp.__lock_acquire.lock_acquire.__lock_text_start.lockref_put_or_lock.dput
      0.00            +0.9        0.91        perf-profile.calltrace.cycles-pp.get_acl.posix_acl_create.simple_acl_create.shmem_mknod.lookup_open
      0.00            +0.9        0.91 ±  2%  perf-profile.calltrace.cycles-pp.shmem_reserve_inode.shmem_get_inode.shmem_mknod.lookup_open.path_openat
      0.00            +0.9        0.93 ±  2%  perf-profile.calltrace.cycles-pp.__lock_text_start.evict.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe
      0.00            +0.9        0.93        perf-profile.calltrace.cycles-pp.current_time.shmem_get_inode.shmem_mknod.lookup_open.path_openat
      0.00            +0.9        0.93 ±  2%  perf-profile.calltrace.cycles-pp.___might_sleep.dput.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe
      0.00            +0.9        0.95 ±  2%  perf-profile.calltrace.cycles-pp.ktime_get_coarse_real_ts64.current_time.shmem_unlink.vfs_unlink.do_unlinkat
      0.00            +1.0        0.97        perf-profile.calltrace.cycles-pp.d_delete.vfs_unlink.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe
      0.13 ±173%      +1.0        1.10 ±  2%  perf-profile.calltrace.cycles-pp.__sb_start_write.mnt_want_write.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe
      0.00            +1.0        0.98 ±  2%  perf-profile.calltrace.cycles-pp.down_write.vfs_unlink.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe
      0.00            +1.0        0.99 ±  2%  perf-profile.calltrace.cycles-pp.current_time.shmem_unlink.vfs_unlink.do_unlinkat.do_syscall_64
      0.00            +1.0        1.02 ±  2%  perf-profile.calltrace.cycles-pp.posix_acl_create.simple_acl_create.shmem_mknod.lookup_open.path_openat
      0.00            +1.1        1.06 ±  2%  perf-profile.calltrace.cycles-pp.__sb_start_write.mnt_want_write.path_openat.do_filp_open.do_sys_openat2
     44.83            +1.1       45.94        perf-profile.calltrace.cycles-pp.entry_SYSCALL_64_after_hwframe.__GI___libc_open
      0.00            +1.2        1.18 ±  2%  perf-profile.calltrace.cycles-pp.lock_acquire.__lock_text_start.lockref_put_or_lock.dput.do_unlinkat
      0.00            +1.2        1.21 ±  2%  perf-profile.calltrace.cycles-pp.simple_acl_create.shmem_mknod.lookup_open.path_openat.do_filp_open
      0.00            +1.2        1.23 ±  2%  perf-profile.calltrace.cycles-pp.__lock_text_start.lockref_put_or_lock.dput.do_unlinkat.do_syscall_64
      0.13 ±173%      +1.2        1.37 ±  4%  perf-profile.calltrace.cycles-pp.dput.path_openat.do_filp_open.do_sys_openat2.do_sys_open
      0.00            +1.3        1.28 ±  3%  perf-profile.calltrace.cycles-pp.dput.__fput.task_work_run.exit_to_usermode_loop.do_syscall_64
      0.00            +1.3        1.29        perf-profile.calltrace.cycles-pp.d_instantiate.shmem_mknod.lookup_open.path_openat.do_filp_open
      1.93 ±  2%      +1.3        3.22        perf-profile.calltrace.cycles-pp.shmem_undo_range.shmem_truncate_range.shmem_evict_inode.evict.do_unlinkat
      0.00            +1.3        1.33        perf-profile.calltrace.cycles-pp.__wake_up_common_lock.__d_lookup_done.d_add.simple_lookup.lookup_open
      0.00            +1.4        1.35        perf-profile.calltrace.cycles-pp.dput.terminate_walk.path_openat.do_filp_open.do_sys_openat2
      0.65            +1.4        2.04        perf-profile.calltrace.cycles-pp.terminate_walk.path_openat.do_filp_open.do_sys_openat2.do_sys_open
      1.36            +1.4        2.75        perf-profile.calltrace.cycles-pp.shmem_unlink.vfs_unlink.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe
      0.00            +1.4        1.41        perf-profile.calltrace.cycles-pp.dput.shmem_unlink.vfs_unlink.do_unlinkat.do_syscall_64
      0.00            +1.4        1.42        perf-profile.calltrace.cycles-pp.kmem_cache_alloc.__d_alloc.d_alloc.d_alloc_parallel.lookup_open
      0.00            +1.4        1.44        perf-profile.calltrace.cycles-pp.__d_lookup_done.d_add.simple_lookup.lookup_open.path_openat
      0.88 ±  6%      +1.5        2.37        perf-profile.calltrace.cycles-pp.__lookup_hash.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe.unlink
      0.79 ±  7%      +1.6        2.35        perf-profile.calltrace.cycles-pp.lookup_dcache.__lookup_hash.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe
      0.74 ±  8%      +1.6        2.33        perf-profile.calltrace.cycles-pp.d_lookup.lookup_dcache.__lookup_hash.do_unlinkat.do_syscall_64
      0.00            +1.6        1.59        perf-profile.calltrace.cycles-pp.d_lookup.lookup_open.path_openat.do_filp_open.do_sys_openat2
      0.00            +1.6        1.65        perf-profile.calltrace.cycles-pp.lockref_put_or_lock.dput.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe
      0.00            +1.8        1.75        perf-profile.calltrace.cycles-pp.__d_alloc.d_alloc.d_alloc_parallel.lookup_open.path_openat
      2.31            +1.8        4.10        perf-profile.calltrace.cycles-pp.shmem_truncate_range.shmem_evict_inode.evict.do_unlinkat.do_syscall_64
      6.51            +2.0        8.48        perf-profile.calltrace.cycles-pp.evict.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe.unlink
      3.96            +2.1        6.03        perf-profile.calltrace.cycles-pp.shmem_evict_inode.evict.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe
      0.00            +2.3        2.29        perf-profile.calltrace.cycles-pp.d_add.simple_lookup.lookup_open.path_openat.do_filp_open
      4.78 ±  2%      +2.4        7.17        perf-profile.calltrace.cycles-pp.vfs_unlink.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe.unlink
      0.00            +2.4        2.42        perf-profile.calltrace.cycles-pp.simple_lookup.lookup_open.path_openat.do_filp_open.do_sys_openat2
      0.00            +2.5        2.48        perf-profile.calltrace.cycles-pp.d_alloc.d_alloc_parallel.lookup_open.path_openat.do_filp_open
     41.72            +2.8       44.54        perf-profile.calltrace.cycles-pp.do_sys_open.do_syscall_64.entry_SYSCALL_64_after_hwframe.__GI___libc_open
     41.52            +2.9       44.45        perf-profile.calltrace.cycles-pp.do_sys_openat2.do_sys_open.do_syscall_64.entry_SYSCALL_64_after_hwframe.__GI___libc_open
      0.00            +3.7        3.73        perf-profile.calltrace.cycles-pp.new_inode_pseudo.new_inode.shmem_get_inode.shmem_mknod.lookup_open
      3.44            +3.8        7.21        perf-profile.calltrace.cycles-pp.dput.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe.unlink
      0.00            +4.2        4.22        perf-profile.calltrace.cycles-pp.d_alloc_parallel.lookup_open.path_openat.do_filp_open.do_sys_openat2
     35.02            +4.2       39.27        perf-profile.calltrace.cycles-pp.do_filp_open.do_sys_openat2.do_sys_open.do_syscall_64.entry_SYSCALL_64_after_hwframe
     34.56            +4.6       39.12        perf-profile.calltrace.cycles-pp.path_openat.do_filp_open.do_sys_openat2.do_sys_open.do_syscall_64
      0.00            +4.7        4.73        perf-profile.calltrace.cycles-pp.new_inode.shmem_get_inode.shmem_mknod.lookup_open.path_openat
     36.35            +4.8       41.16        perf-profile.calltrace.cycles-pp.unlink
     32.71            +6.6       39.34        perf-profile.calltrace.cycles-pp.do_syscall_64.entry_SYSCALL_64_after_hwframe.unlink
     32.87            +6.8       39.69        perf-profile.calltrace.cycles-pp.entry_SYSCALL_64_after_hwframe.unlink
      0.00            +7.4        7.37        perf-profile.calltrace.cycles-pp.shmem_get_inode.shmem_mknod.lookup_open.path_openat.do_filp_open
     27.33            +9.3       36.63        perf-profile.calltrace.cycles-pp.do_unlinkat.do_syscall_64.entry_SYSCALL_64_after_hwframe.unlink
      0.00           +11.7       11.72        perf-profile.calltrace.cycles-pp.shmem_mknod.lookup_open.path_openat.do_filp_open.do_sys_openat2
      0.00           +21.2       21.16        perf-profile.calltrace.cycles-pp.lookup_open.path_openat.do_filp_open.do_sys_openat2.do_sys_open
      8.03 ±  4%      -8.0        0.00        perf-profile.children.cycles-pp._raw_spin_lock
     14.48            -4.4       10.04        perf-profile.children.cycles-pp.__GI___libc_close
      4.45 ±  3%      -3.4        1.00 ±  5%  perf-profile.children.cycles-pp.syscall_return_via_sysret
      4.11 ±  3%      -3.0        1.10        perf-profile.children.cycles-pp.entry_SYSCALL_64
      7.11            -2.9        4.18        perf-profile.children.cycles-pp.link_path_walk
      2.62 ±  3%      -1.7        0.96        perf-profile.children.cycles-pp.strncpy_from_user
      3.10 ±  8%      -1.6        1.54 ±  7%  perf-profile.children.cycles-pp.native_queued_spin_lock_slowpath
      2.96            -1.5        1.50        perf-profile.children.cycles-pp.do_dentry_open
      4.80 ±  3%      -1.3        3.52        perf-profile.children.cycles-pp.getname_flags
      5.33 ±  2%      -1.2        4.12        perf-profile.children.cycles-pp.irq_exit
      1.88 ±  3%      -1.2        0.70 ±  2%  perf-profile.children.cycles-pp.__check_object_size
      2.29 ±  4%      -1.1        1.19        perf-profile.children.cycles-pp.__slab_alloc
      1.53 ±  4%      -1.1        0.43        perf-profile.children.cycles-pp.fsnotify
      5.75            -1.1        4.66        perf-profile.children.cycles-pp.filename_parentat
      2.23 ±  5%      -1.1        1.15        perf-profile.children.cycles-pp.___slab_alloc
      1.38 ±  2%      -1.0        0.33 ±  7%  perf-profile.children.cycles-pp._cond_resched
      1.69 ±  4%      -1.0        0.69        perf-profile.children.cycles-pp.rcu_cblist_dequeue
     48.50            -1.0       47.52        perf-profile.children.cycles-pp.__GI___libc_open
      1.96 ±  4%      -0.9        1.06 ±  2%  perf-profile.children.cycles-pp.new_slab
      1.22            -0.9        0.34 ±  5%  perf-profile.children.cycles-pp.security_file_open
      5.37 ±  2%      -0.8        4.53 ±  2%  perf-profile.children.cycles-pp.path_parentat
      3.99 ±  3%      -0.8        3.20        perf-profile.children.cycles-pp.walk_component
      1.20 ±  4%      -0.8        0.42 ±  9%  perf-profile.children.cycles-pp.__might_sleep
      2.54 ±  4%      -0.8        1.76 ±  2%  perf-profile.children.cycles-pp.__x64_sys_unlink
      2.12 ±  4%      -0.8        1.36        perf-profile.children.cycles-pp.inode_permission
      5.30 ±  2%      -0.7        4.56        perf-profile.children.cycles-pp.rcu_do_batch
      1.01            -0.7        0.28 ±  5%  perf-profile.children.cycles-pp.apparmor_file_open
      0.97 ±  6%      -0.7        0.25 ±  4%  perf-profile.children.cycles-pp.__slab_free
      5.32 ±  2%      -0.7        4.60        perf-profile.children.cycles-pp.rcu_core
      1.12 ±  4%      -0.7        0.43 ±  5%  perf-profile.children.cycles-pp.generic_permission
      0.89 ±  6%      -0.7        0.21 ±  2%  perf-profile.children.cycles-pp.inode_init_once
      0.93 ±  3%      -0.7        0.27        perf-profile.children.cycles-pp.security_file_free
      5.64            -0.6        5.01        perf-profile.children.cycles-pp.smp_apic_timer_interrupt
      5.67            -0.6        5.04        perf-profile.children.cycles-pp.apic_timer_interrupt
      5.36 ±  2%      -0.6        4.74        perf-profile.children.cycles-pp.__softirqentry_text_start
      1.89 ±  5%      -0.6        1.27 ±  2%  perf-profile.children.cycles-pp.__d_lookup_rcu
      1.84 ±  2%      -0.6        1.23        perf-profile.children.cycles-pp.call_rcu
      0.73 ±  9%      -0.6        0.13 ±  7%  perf-profile.children.cycles-pp.rcu_all_qs
      0.81 ±  2%      -0.6        0.23 ±  2%  perf-profile.children.cycles-pp.apparmor_file_free_security
      1.36 ±  2%      -0.6        0.80        perf-profile.children.cycles-pp.inode_sb_list_add
      0.72 ±  3%      -0.5        0.19        perf-profile.children.cycles-pp.__mnt_want_write
      0.70 ±  4%      -0.5        0.17 ±  3%  perf-profile.children.cycles-pp.__x86_indirect_thunk_rax
      0.81 ±  2%      -0.5        0.28 ±  3%  perf-profile.children.cycles-pp.filp_close
      0.72            -0.5        0.21 ±  7%  perf-profile.children.cycles-pp.security_path_unlink
      0.68 ±  4%      -0.5        0.18 ±  5%  perf-profile.children.cycles-pp.rcu_segcblist_enqueue
      0.77 ±  4%      -0.4        0.34        perf-profile.children.cycles-pp.file_free_rcu
      0.71 ±  8%      -0.4        0.29        perf-profile.children.cycles-pp.__virt_addr_valid
      0.67 ±  2%      -0.4        0.25 ±  4%  perf-profile.children.cycles-pp.security_path_mknod
      2.21 ±  7%      -0.4        1.83 ±  5%  perf-profile.children.cycles-pp.__x64_sys_close
      0.50 ±  3%      -0.4        0.14 ± 11%  perf-profile.children.cycles-pp.__legitimize_mnt
      0.44 ±  4%      -0.3        0.10 ± 10%  perf-profile.children.cycles-pp.__list_del_entry_valid
      3.36 ±  4%      -0.3        3.02        perf-profile.children.cycles-pp.lookup_fast
      0.49 ±  4%      -0.3        0.15 ±  6%  perf-profile.children.cycles-pp.common_perm_rm
      0.47 ±  3%      -0.3        0.14 ±  7%  perf-profile.children.cycles-pp.fput_many
      3.28 ±  2%      -0.3        2.97        perf-profile.children.cycles-pp.alloc_inode
      1.05            -0.3        0.74        perf-profile.children.cycles-pp.inode_init_always
      0.47 ±  4%      -0.3        0.17 ±  3%  perf-profile.children.cycles-pp.common_perm
      0.49            -0.3        0.20 ±  7%  perf-profile.children.cycles-pp.may_delete
      0.39 ± 11%      -0.3        0.10 ±  5%  perf-profile.children.cycles-pp.timestamp_truncate
      0.44 ±  5%      -0.3        0.16 ±  9%  perf-profile.children.cycles-pp.common_perm_create
      0.41 ±  3%      -0.3        0.13        perf-profile.children.cycles-pp.drop_nlink
      0.52 ±  7%      -0.3        0.24 ±  4%  perf-profile.children.cycles-pp.shmem_free_in_core_inode
      0.41 ± 12%      -0.3        0.14 ±  3%  perf-profile.children.cycles-pp.fpregs_assert_state_consistent
      0.43 ±  4%      -0.3        0.16        perf-profile.children.cycles-pp.memset_erms
      0.38 ±  2%      -0.3        0.11 ±  4%  perf-profile.children.cycles-pp.__pthread_enable_asynccancel
      0.33 ±  3%      -0.3        0.08 ± 12%  perf-profile.children.cycles-pp.__list_add_valid
      0.34 ±  5%      -0.2        0.10 ± 15%  perf-profile.children.cycles-pp.__fsnotify_parent
      0.43 ±  6%      -0.2        0.18 ±  8%  perf-profile.children.cycles-pp.__srcu_read_lock
      0.38 ±  3%      -0.2        0.14 ±  7%  perf-profile.children.cycles-pp.__check_heap_object
      0.34 ±  5%      -0.2        0.11 ±  4%  perf-profile.children.cycles-pp.__d_drop
      0.31 ±  3%      -0.2        0.08 ±  5%  perf-profile.children.cycles-pp.___d_drop
      0.33 ± 11%      -0.2        0.11 ±  4%  perf-profile.children.cycles-pp.security_inode_permission
      0.29 ±  3%      -0.2        0.08 ±  6%  perf-profile.children.cycles-pp.task_work_add
      0.30 ±  8%      -0.2        0.09        perf-profile.children.cycles-pp.security_inode_init_security
      0.32 ±  3%      -0.2        0.11 ±  9%  perf-profile.children.cycles-pp.set_cached_acl
      0.27 ±  2%      -0.2        0.07 ±  7%  perf-profile.children.cycles-pp.__d_rehash
      4.93 ±  2%      -0.2        4.74        perf-profile.children.cycles-pp.new_inode
      0.24 ±  7%      -0.2        0.06 ±  9%  perf-profile.children.cycles-pp.__srcu_read_unlock
      0.82 ±  2%      -0.2        0.63        perf-profile.children.cycles-pp.apparmor_file_alloc_security
      0.28 ± 13%      -0.2        0.10 ±  5%  perf-profile.children.cycles-pp.map_id_range_down
      0.29 ±  2%      -0.2        0.11 ±  4%  perf-profile.children.cycles-pp.__pthread_disable_asynccancel
      0.26 ±  3%      -0.2        0.09        perf-profile.children.cycles-pp.d_set_d_op
      0.24 ± 12%      -0.2        0.07 ± 14%  perf-profile.children.cycles-pp.prandom_u32
      0.44 ±  5%      -0.2        0.28        perf-profile.children.cycles-pp.__alloc_pages_nodemask
      0.39 ±  6%      -0.2        0.23 ±  4%  perf-profile.children.cycles-pp.i_callback
      1.27            -0.2        1.10 ±  3%  perf-profile.children.cycles-pp.destroy_inode
      0.18 ±  6%      -0.2        0.03 ±100%  perf-profile.children.cycles-pp.always_delete_dentry
      0.23 ±  8%      -0.2        0.07 ± 14%  perf-profile.children.cycles-pp.memcpy_erms
      0.23 ±  4%      -0.2        0.07 ± 28%  perf-profile.children.cycles-pp.percpu_counter_add_batch
      0.18            -0.2        0.03 ±100%  perf-profile.children.cycles-pp.shmem_create
      0.23            -0.1        0.09 ± 17%  perf-profile.children.cycles-pp.ihold
      0.37 ±  6%      -0.1        0.23 ±  6%  perf-profile.children.cycles-pp.get_page_from_freelist
      0.19 ±  6%      -0.1        0.06        perf-profile.children.cycles-pp.map_id_up
      0.92 ±  2%      -0.1        0.79        perf-profile.children.cycles-pp.shmem_free_inode
      0.33 ±  6%      -0.1        0.20 ± 10%  perf-profile.children.cycles-pp.__lookup_mnt
      3.66            -0.1        3.53        perf-profile.children.cycles-pp.__fput
      0.15 ± 14%      -0.1        0.03 ±100%  perf-profile.children.cycles-pp.path_get
      0.15 ± 11%      -0.1        0.03 ±100%  perf-profile.children.cycles-pp.current_umask
      0.17 ±  8%      -0.1        0.05        perf-profile.children.cycles-pp.__x64_sys_open
      0.18 ± 12%      -0.1        0.07 ±  7%  perf-profile.children.cycles-pp.make_kuid
      0.17 ±  4%      -0.1        0.06        perf-profile.children.cycles-pp.file_ra_state_init
      0.27 ±  4%      -0.1        0.16 ±  9%  perf-profile.children.cycles-pp.put_cpu_partial
      0.13 ±  5%      -0.1        0.03 ±100%  perf-profile.children.cycles-pp.apparmor_path_mknod
      0.17 ±  9%      -0.1        0.07 ±  7%  perf-profile.children.cycles-pp.mnt_drop_write
      0.15 ± 11%      -0.1        0.05        perf-profile.children.cycles-pp.make_kgid
      0.18 ±  2%      -0.1        0.08 ±  5%  perf-profile.children.cycles-pp.restore_nameidata
      0.12 ± 12%      -0.1        0.03 ±100%  perf-profile.children.cycles-pp.prandom_u32_state
      0.25 ±  4%      -0.1        0.16 ±  9%  perf-profile.children.cycles-pp.unfreeze_partials
      0.15 ± 12%      -0.1        0.06 ± 16%  perf-profile.children.cycles-pp.should_failslab
      1.13            -0.1        1.04 ±  3%  perf-profile.children.cycles-pp.__destroy_inode
      0.17 ± 12%      -0.1        0.09 ± 22%  perf-profile.children.cycles-pp.putname
      0.11 ±  4%      -0.1        0.03 ±100%  perf-profile.children.cycles-pp.process_measurement
      0.10 ± 13%      -0.1        0.03 ±100%  perf-profile.children.cycles-pp.__wake_up_bit
      0.12 ± 10%      -0.1        0.06 ±  9%  perf-profile.children.cycles-pp.security_d_instantiate
      0.15 ± 12%      -0.1        0.09        perf-profile.children.cycles-pp._find_next_bit
      0.12 ± 13%      -0.1        0.07 ±  7%  perf-profile.children.cycles-pp.d_flags_for_inode
      0.14 ±  7%      -0.1        0.08 ±  5%  perf-profile.children.cycles-pp.security_inode_free
      0.11 ± 11%      -0.1        0.06        perf-profile.children.cycles-pp.get_unused_fd_flags
      0.11 ±  7%      -0.1        0.06 ±  9%  perf-profile.children.cycles-pp.legitimize_links
      0.12 ±  4%      -0.0        0.08        perf-profile.children.cycles-pp.inode_init_owner
      0.15 ±  8%      -0.0        0.12        perf-profile.children.cycles-pp.__free_pages_ok
      0.09 ±  4%      -0.0        0.06        perf-profile.children.cycles-pp.rcu_segcblist_pend_cbs
      0.11 ± 14%      -0.0        0.08        perf-profile.children.cycles-pp.free_one_page
      0.16 ±  7%      +0.0        0.18 ±  5%  perf-profile.children.cycles-pp.expand_files
      0.00            +0.1        0.05        perf-profile.children.cycles-pp.__fsnotify_inode_delete
      0.03 ±100%      +0.1        0.08 ±  5%  perf-profile.children.cycles-pp.update_load_avg
      0.00            +0.1        0.06        perf-profile.children.cycles-pp.account_system_index_time
      0.00            +0.1        0.06 ± 16%  perf-profile.children.cycles-pp.execve
      0.00            +0.1        0.06 ± 16%  perf-profile.children.cycles-pp.__x64_sys_execve
      0.00            +0.1        0.06 ± 16%  perf-profile.children.cycles-pp.__do_execve_file
      0.00            +0.1        0.06 ± 16%  perf-profile.children.cycles-pp.ksys_write
      0.00            +0.1        0.06 ± 16%  perf-profile.children.cycles-pp.vfs_write
      0.00            +0.1        0.06 ± 16%  perf-profile.children.cycles-pp.new_sync_write
      1.02 ±  4%      +0.1        1.08        perf-profile.children.cycles-pp.ima_file_check
      0.00            +0.1        0.07 ±  7%  perf-profile.children.cycles-pp.lockdep_sys_exit
      0.00            +0.1        0.07 ±  7%  perf-profile.children.cycles-pp.clockevents_program_event
      0.00            +0.1        0.07 ± 28%  perf-profile.children.cycles-pp.__handle_mm_fault
      0.01 ±173%      +0.1        0.10 ± 26%  perf-profile.children.cycles-pp.page_fault
      0.00            +0.1        0.08 ± 29%  perf-profile.children.cycles-pp.handle_mm_fault
      0.00            +0.1        0.08 ±  5%  perf-profile.children.cycles-pp.run_timer_softirq
      0.00            +0.1        0.08 ±  5%  perf-profile.children.cycles-pp.perf_mux_hrtimer_handler
      0.00            +0.1        0.09 ± 22%  perf-profile.children.cycles-pp.do_page_fault
      0.50 ±  3%      +0.1        0.60 ±  5%  perf-profile.children.cycles-pp.__d_instantiate
      0.00            +0.1        0.10        perf-profile.children.cycles-pp.ktime_get
      0.00            +0.1        0.11 ±  4%  perf-profile.children.cycles-pp.fs_reclaim_release
      0.00            +0.1        0.11 ±  9%  perf-profile.children.cycles-pp.static_obj
      0.00            +0.1        0.11 ±  4%  perf-profile.children.cycles-pp.debug_mutex_init
      0.00            +0.1        0.12 ± 13%  perf-profile.children.cycles-pp.update_curr
      0.45 ± 10%      +0.1        0.56        perf-profile.children.cycles-pp._atomic_dec_and_lock
      0.09 ± 20%      +0.1        0.21 ± 12%  perf-profile.children.cycles-pp.task_tick_fair
      0.07 ± 11%      +0.1        0.20        perf-profile.children.cycles-pp.__wake_up_common
      0.74 ±  4%      +0.1        0.87        perf-profile.children.cycles-pp.may_open
      0.00            +0.1        0.14 ±  3%  perf-profile.children.cycles-pp.__mutex_init
      0.82 ±  3%      +0.1        0.95        perf-profile.children.cycles-pp.security_task_getsecid
      0.11 ± 16%      +0.1        0.26 ±  5%  perf-profile.children.cycles-pp.scheduler_tick
      0.00            +0.2        0.17 ±  3%  perf-profile.children.cycles-pp.trace_hardirqs_on_caller
      5.83            +0.2        6.00        perf-profile.children.cycles-pp.exit_to_usermode_loop
      0.00            +0.2        0.17 ±  5%  perf-profile.children.cycles-pp.__put_unused_fd
      0.55 ±  4%      +0.2        0.73        perf-profile.children.cycles-pp.xas_find
      0.98 ±  2%      +0.2        1.17 ±  3%  perf-profile.children.cycles-pp.dentry_unlink_inode
      3.62            +0.2        3.81        perf-profile.children.cycles-pp.__alloc_file
      0.00            +0.2        0.18 ±  2%  perf-profile.children.cycles-pp.__init_waitqueue_head
      0.00            +0.2        0.19 ±  5%  perf-profile.children.cycles-pp.__rwlock_init
      3.54 ±  2%      +0.2        3.75        perf-profile.children.cycles-pp.new_inode_pseudo
      0.00            +0.2        0.21 ±  2%  perf-profile.children.cycles-pp.trace_hardirqs_off_caller
      0.00            +0.2        0.21 ±  4%  perf-profile.children.cycles-pp.__need_fs_reclaim
      0.67 ±  3%      +0.2        0.91        perf-profile.children.cycles-pp.apparmor_task_getsecid
      0.15 ± 18%      +0.2        0.39        perf-profile.children.cycles-pp.update_process_times
      0.15 ± 16%      +0.2        0.40        perf-profile.children.cycles-pp.tick_sched_handle
      1.51            +0.3        1.77        perf-profile.children.cycles-pp.security_file_alloc
      0.94 ±  3%      +0.3        1.21 ±  2%  perf-profile.children.cycles-pp.simple_acl_create
      0.18 ± 16%      +0.3        0.45 ±  3%  perf-profile.children.cycles-pp.tick_sched_timer
      1.17 ± 14%      +0.3        1.46 ±  5%  perf-profile.children.cycles-pp.__close_fd
      0.00            +0.3        0.29        perf-profile.children.cycles-pp.alloc_slab_page
      0.36 ±  8%      +0.3        0.66        perf-profile.children.cycles-pp.xas_load
      0.19 ±  9%      +0.3        0.50        perf-profile.children.cycles-pp._raw_spin_trylock
      0.10 ± 10%      +0.3        0.41 ±  2%  perf-profile.children.cycles-pp.__init_rwsem
      3.07 ±  4%      +0.3        3.40        perf-profile.children.cycles-pp.kmem_cache_free
      1.63 ±  2%      +0.4        1.98 ±  3%  perf-profile.children.cycles-pp.complete_walk
      1.64            +0.4        2.00        perf-profile.children.cycles-pp.__dentry_kill
      0.40 ±  9%      +0.4        0.76        perf-profile.children.cycles-pp.__fd_install
      0.24 ±  7%      +0.4        0.60        perf-profile.children.cycles-pp.xas_start
      2.11 ±  2%      +0.4        2.49        perf-profile.children.cycles-pp.d_alloc
      0.00            +0.4        0.40        perf-profile.children.cycles-pp.__address_space_init_once
      0.00            +0.4        0.41        perf-profile.children.cycles-pp.reacquire_held_locks
      0.21 ±  5%      +0.4        0.63 ±  6%  perf-profile.children.cycles-pp._raw_spin_lock_irqsave
      0.00            +0.4        0.42 ±  3%  perf-profile.children.cycles-pp.trace_hardirqs_on_thunk
      0.00            +0.4        0.42        perf-profile.children.cycles-pp.register_lock_class
      0.00            +0.4        0.43        perf-profile.children.cycles-pp.tracer_hardirqs_on
      0.26 ± 11%      +0.4        0.69 ±  4%  perf-profile.children.cycles-pp.__hrtimer_run_queues
      0.87 ±  2%      +0.4        1.31        perf-profile.children.cycles-pp.d_instantiate
      0.22 ±  6%      +0.5        0.69        perf-profile.children.cycles-pp.__sb_end_write
      0.99 ±  3%      +0.5        1.46 ±  5%  perf-profile.children.cycles-pp.legitimize_path
      0.18 ±  2%      +0.5        0.65 ±  2%  perf-profile.children.cycles-pp._raw_spin_unlock_irqrestore
      5.18            +0.5        5.66        perf-profile.children.cycles-pp.task_work_run
      0.35 ±  5%      +0.5        0.84 ±  2%  perf-profile.children.cycles-pp.clear_inode
      0.00            +0.5        0.49 ±  8%  perf-profile.children.cycles-pp.trace_hardirqs_off_thunk
      0.33 ±  8%      +0.5        0.82 ±  2%  perf-profile.children.cycles-pp.aa_get_task_label
      1.92 ±  3%      +0.5        2.42        perf-profile.children.cycles-pp.simple_lookup
      0.00            +0.5        0.51 ±  6%  perf-profile.children.cycles-pp.do_raw_spin_unlock
      0.49 ±  8%      +0.5        1.03 ±  2%  perf-profile.children.cycles-pp.posix_acl_create
      1.38 ±  2%      +0.6        1.94 ±  3%  perf-profile.children.cycles-pp.unlazy_walk
      0.31 ± 13%      +0.6        0.87 ±  2%  perf-profile.children.cycles-pp.hrtimer_interrupt
      0.00            +0.6        0.58 ±  3%  perf-profile.children.cycles-pp.lockdep_init_map
      0.38 ±  2%      +0.6        0.97        perf-profile.children.cycles-pp.d_delete
      0.00            +0.6        0.59 ±  2%  perf-profile.children.cycles-pp.tracer_hardirqs_off
      0.87            +0.6        1.47        perf-profile.children.cycles-pp.fsnotify_destroy_marks
      0.04 ± 58%      +0.6        0.65 ±  9%  perf-profile.children.cycles-pp.smpboot_thread_fn
      0.03 ±100%      +0.6        0.64 ±  9%  perf-profile.children.cycles-pp.run_ksoftirqd
      0.06 ± 13%      +0.6        0.68 ±  8%  perf-profile.children.cycles-pp.kthread
      0.07 ± 17%      +0.6        0.69 ±  9%  perf-profile.children.cycles-pp.ret_from_fork
      0.34 ±  8%      +0.6        0.99 ±  6%  perf-profile.children.cycles-pp.lockref_get
      0.76 ±  2%      +0.7        1.42        perf-profile.children.cycles-pp.fsnotify_grab_connector
      0.76 ±  5%      +0.7        1.44        perf-profile.children.cycles-pp.__d_lookup_done
      0.18 ± 14%      +0.7        0.92        perf-profile.children.cycles-pp.get_acl
      1.58 ±  3%      +0.7        2.33        perf-profile.children.cycles-pp.mnt_want_write
      0.00            +0.8        0.78 ±  7%  perf-profile.children.cycles-pp.rcu_lockdep_current_cpu_online
      0.08 ± 16%      +0.8        0.87        perf-profile.children.cycles-pp.get_cached_acl
      0.98 ±  4%      +0.8        1.78 ±  2%  perf-profile.children.cycles-pp.__follow_mount_rcu
      0.82 ±  3%      +0.8        1.63 ±  3%  perf-profile.children.cycles-pp.nd_jump_root
      1.49 ±  3%      +0.8        2.31        perf-profile.children.cycles-pp.d_add
      0.00            +0.8        0.82        perf-profile.children.cycles-pp.trace_hardirqs_on
      0.00            +0.8        0.83        perf-profile.children.cycles-pp.down_write_nested
      0.49            +0.9        1.36        perf-profile.children.cycles-pp.__wake_up_common_lock
      0.90 ±  2%      +0.9        1.77        perf-profile.children.cycles-pp.down_write
      0.97 ±  3%      +0.9        1.86        perf-profile.children.cycles-pp.find_get_entries
      0.00            +0.9        0.92        perf-profile.children.cycles-pp.trace_hardirqs_off
      0.29 ±  7%      +1.0        1.25 ±  5%  perf-profile.children.cycles-pp.lockref_get_not_dead
      0.00            +1.0        0.97 ±  2%  perf-profile.children.cycles-pp.lockdep_hardirqs_off
      0.56 ±  4%      +1.0        1.54 ±  4%  perf-profile.children.cycles-pp.set_root
      0.77 ±  2%      +1.0        1.75 ±  4%  perf-profile.children.cycles-pp._raw_spin_lock_irq
      0.00            +1.0        1.00        perf-profile.children.cycles-pp.rcu_is_watching
      1.02            +1.1        2.12        perf-profile.children.cycles-pp.terminate_walk
      0.00            +1.1        1.15        perf-profile.children.cycles-pp.rcu_read_lock_any_held
      0.37 ±  7%      +1.2        1.60 ±  2%  perf-profile.children.cycles-pp.mntput_no_expire
      1.98 ±  2%      +1.3        3.24        perf-profile.children.cycles-pp.shmem_undo_range
      0.92 ±  8%      +1.3        2.19 ±  2%  perf-profile.children.cycles-pp.__sb_start_write
      1.17 ±  3%      +1.3        2.47 ±  2%  perf-profile.children.cycles-pp.path_init
      0.00            +1.3        1.31        perf-profile.children.cycles-pp.match_held_lock
      0.00            +1.3        1.31        perf-profile.children.cycles-pp.__raw_spin_lock_init
      0.85 ±  8%      +1.3        2.17        perf-profile.children.cycles-pp.__d_lookup
      0.00            +1.3        1.33 ±  3%  perf-profile.children.cycles-pp._raw_spin_unlock_irq
      1.38            +1.4        2.75        perf-profile.children.cycles-pp.shmem_unlink
      0.00            +1.4        1.40        perf-profile.children.cycles-pp.debug_check_no_locks_freed
      0.89 ±  7%      +1.5        2.37        perf-profile.children.cycles-pp.__lookup_hash
     10.25            +1.5       11.73        perf-profile.children.cycles-pp.shmem_mknod
      0.80 ±  7%      +1.6        2.35        perf-profile.children.cycles-pp.lookup_dcache
      2.70            +1.6        4.26        perf-profile.children.cycles-pp.d_alloc_parallel
      0.00            +1.8        1.76        perf-profile.children.cycles-pp.rcu_read_lock_held
      0.00            +1.8        1.77 ±  2%  perf-profile.children.cycles-pp.rcu_read_lock_held_common
      2.31            +1.8        4.11        perf-profile.children.cycles-pp.shmem_truncate_range
      6.65 ±  2%      +1.9        8.58        perf-profile.children.cycles-pp.kmem_cache_alloc
      6.54            +2.0        8.50        perf-profile.children.cycles-pp.evict
      0.00            +2.0        2.04        perf-profile.children.cycles-pp.rcu_read_lock_sched_held
      3.98            +2.0        6.03        perf-profile.children.cycles-pp.shmem_evict_inode
      0.00            +2.2        2.17        perf-profile.children.cycles-pp.find_held_lock
      4.83 ±  2%      +2.4        7.19        perf-profile.children.cycles-pp.vfs_unlink
      1.15 ±  3%      +2.5        3.67        perf-profile.children.cycles-pp.current_time
      0.00            +2.7        2.70        perf-profile.children.cycles-pp.mark_held_locks
      0.00            +2.8        2.75        perf-profile.children.cycles-pp.fs_reclaim_acquire
     41.72            +2.8       44.57        perf-profile.children.cycles-pp.do_sys_open
     41.57            +2.9       44.50        perf-profile.children.cycles-pp.do_sys_openat2
      1.00 ±  6%      +2.9        3.94        perf-profile.children.cycles-pp.d_lookup
      0.00            +3.2        3.16 ±  3%  perf-profile.children.cycles-pp.do_raw_spin_lock
      1.01            +3.2        4.18        perf-profile.children.cycles-pp.lockref_put_or_lock
      0.27 ± 19%      +3.2        3.48        perf-profile.children.cycles-pp.ktime_get_coarse_real_ts64
      0.00            +4.0        3.96        perf-profile.children.cycles-pp.debug_lockdep_rcu_enabled
      0.00            +4.2        4.18        perf-profile.children.cycles-pp.lockdep_hardirqs_on
     35.05            +4.2       39.29        perf-profile.children.cycles-pp.do_filp_open
     34.71            +4.5       39.17        perf-profile.children.cycles-pp.path_openat
     36.56            +4.7       41.22        perf-profile.children.cycles-pp.unlink
      0.00            +4.7        4.69        perf-profile.children.cycles-pp._raw_spin_unlock
      1.89            +4.7        6.59        perf-profile.children.cycles-pp.___might_sleep
     88.53            +5.3       93.86        perf-profile.children.cycles-pp.do_syscall_64
     88.99            +6.0       94.97        perf-profile.children.cycles-pp.entry_SYSCALL_64_after_hwframe
      0.00            +6.5        6.52        perf-profile.children.cycles-pp.mark_lock
      5.30            +7.5       12.79        perf-profile.children.cycles-pp.dput
      0.00            +9.0        9.00        perf-profile.children.cycles-pp.lock_is_held_type
     27.44            +9.2       36.69        perf-profile.children.cycles-pp.do_unlinkat
      0.00           +11.0       11.03        perf-profile.children.cycles-pp.lock_release
      0.00           +14.2       14.16        perf-profile.children.cycles-pp.__lock_text_start
      0.00           +21.2       21.17        perf-profile.children.cycles-pp.lookup_open
      0.00           +23.8       23.81        perf-profile.children.cycles-pp.__lock_acquire
      0.00           +32.4       32.39        perf-profile.children.cycles-pp.lock_acquire
      7.78 ±  2%      -5.8        2.02 ±  6%  perf-profile.self.cycles-pp.do_syscall_64
      4.44 ±  3%      -3.5        0.99 ±  5%  perf-profile.self.cycles-pp.syscall_return_via_sysret
      3.65 ±  4%      -2.7        0.98        perf-profile.self.cycles-pp.entry_SYSCALL_64
      2.55 ±  2%      -1.7        0.87        perf-profile.self.cycles-pp.kmem_cache_alloc
      2.91 ±  8%      -1.6        1.32 ±  7%  perf-profile.self.cycles-pp.native_queued_spin_lock_slowpath
      1.67 ±  2%      -1.4        0.29        perf-profile.self.cycles-pp.path_openat
      1.74 ±  6%      -1.2        0.55        perf-profile.self.cycles-pp.__d_lookup_rcu
      1.68 ±  2%      -1.2        0.49 ±  2%  perf-profile.self.cycles-pp.link_path_walk
      1.42 ±  4%      -1.0        0.41        perf-profile.self.cycles-pp.fsnotify
      1.66 ±  4%      -1.0        0.69        perf-profile.self.cycles-pp.rcu_cblist_dequeue
      1.75 ±  5%      -0.9        0.86        perf-profile.self.cycles-pp.kmem_cache_free
      1.76 ±  2%      -0.8        0.95        perf-profile.self.cycles-pp.___might_sleep
      1.02 ±  2%      -0.7        0.28 ±  7%  perf-profile.self.cycles-pp.generic_permission
      0.96 ±  7%      -0.7        0.24 ±  4%  perf-profile.self.cycles-pp.__slab_free
      0.94            -0.7        0.26        perf-profile.self.cycles-pp.apparmor_file_open
      0.76 ±  2%      -0.7        0.07        perf-profile.self.cycles-pp._raw_spin_lock_irq
      0.97 ±  4%      -0.7        0.30 ±  3%  perf-profile.self.cycles-pp.call_rcu
      0.74 ±  2%      -0.7        0.09 ± 11%  perf-profile.self.cycles-pp.lockref_put_or_lock
      0.99 ±  5%      -0.7        0.34 ±  8%  perf-profile.self.cycles-pp.__might_sleep
      0.80 ±  2%      -0.6        0.15 ±  6%  perf-profile.self.cycles-pp.__alloc_file
      0.82 ±  6%      -0.6        0.21 ±  2%  perf-profile.self.cycles-pp.inode_init_once
      0.74 ±  5%      -0.6        0.20 ±  2%  perf-profile.self.cycles-pp.apparmor_file_free_security
      0.81 ±  2%      -0.5        0.27 ±  5%  perf-profile.self.cycles-pp.shmem_get_inode
      0.67 ±  4%      -0.5        0.17 ±  2%  perf-profile.self.cycles-pp.rcu_segcblist_enqueue
      0.67 ±  3%      -0.5        0.18 ±  2%  perf-profile.self.cycles-pp.__mnt_want_write
      0.70 ±  4%      -0.5        0.22 ±  4%  perf-profile.self.cycles-pp.__check_object_size
      0.61 ±  3%      -0.5        0.14 ±  7%  perf-profile.self.cycles-pp.__x86_indirect_thunk_rax
      0.73 ±  5%      -0.5        0.27 ±  3%  perf-profile.self.cycles-pp.inode_permission
      0.69 ±  3%      -0.5        0.23 ±  4%  perf-profile.self.cycles-pp.do_dentry_open
      0.64 ±  4%      -0.5        0.18 ±  8%  perf-profile.self.cycles-pp.apparmor_file_alloc_security
      0.56 ±  9%      -0.5        0.11 ±  4%  perf-profile.self.cycles-pp.rcu_all_qs
      0.68 ±  7%      -0.5        0.23 ±  4%  perf-profile.self.cycles-pp.__d_lookup
      0.69 ±  4%      -0.4        0.24 ±  2%  perf-profile.self.cycles-pp.strncpy_from_user
      0.61 ±  2%      -0.4        0.17 ±  8%  perf-profile.self.cycles-pp._cond_resched
      0.63 ±  5%      -0.4        0.20 ±  4%  perf-profile.self.cycles-pp.do_sys_openat2
      0.76 ±  4%      -0.4        0.34        perf-profile.self.cycles-pp.file_free_rcu
      0.67 ±  6%      -0.4        0.24 ±  6%  perf-profile.self.cycles-pp.__virt_addr_valid
      0.58 ±  2%      -0.4        0.16 ±  6%  perf-profile.self.cycles-pp.walk_component
      0.97 ±  3%      -0.4        0.55 ±  4%  perf-profile.self.cycles-pp.dput
      0.53 ±  6%      -0.4        0.11 ±  4%  perf-profile.self.cycles-pp.getname_flags
      0.56 ±  4%      -0.4        0.15 ±  3%  perf-profile.self.cycles-pp.lookup_fast
      0.56 ±  3%      -0.4        0.16        perf-profile.self.cycles-pp.inode_init_always
      0.60 ±  3%      -0.4        0.24 ±  2%  perf-profile.self.cycles-pp.__fput
      0.52 ±  2%      -0.3        0.17 ±  8%  perf-profile.self.cycles-pp.__destroy_inode
      0.62 ±  7%      -0.3        0.28 ±  5%  perf-profile.self.cycles-pp.__follow_mount_rcu
      0.46 ±  7%      -0.3        0.12 ±  8%  perf-profile.self.cycles-pp.__legitimize_mnt
      0.43 ±  7%      -0.3        0.09 ± 11%  perf-profile.self.cycles-pp.shmem_reserve_inode
      0.43 ±  5%      -0.3        0.10 ± 15%  perf-profile.self.cycles-pp.task_work_run
      0.42 ±  6%      -0.3        0.09        perf-profile.self.cycles-pp.current_time
      0.42 ±  3%      -0.3        0.10 ±  5%  perf-profile.self.cycles-pp.__list_del_entry_valid
      0.41 ±  4%      -0.3        0.08 ±  5%  perf-profile.self.cycles-pp.new_slab
      0.44 ±  4%      -0.3        0.12 ±  4%  perf-profile.self.cycles-pp.up_write
      0.44 ±  4%      -0.3        0.12 ±  4%  perf-profile.self.cycles-pp.common_perm
      0.45 ± 14%      -0.3        0.14        perf-profile.self.cycles-pp.__sb_start_write
      0.40 ±  5%      -0.3        0.09 ± 11%  perf-profile.self.cycles-pp.down_write
      0.42            -0.3        0.12 ± 12%  perf-profile.self.cycles-pp.shmem_undo_range
      0.47 ±  4%      -0.3        0.18 ±  2%  perf-profile.self.cycles-pp.do_unlinkat
      0.49 ±  5%      -0.3        0.20 ± 15%  perf-profile.self.cycles-pp.set_root
      0.50 ±  8%      -0.3        0.23 ±  2%  perf-profile.self.cycles-pp.shmem_free_in_core_inode
      0.47 ±  4%      -0.3        0.21 ±  4%  perf-profile.self.cycles-pp.entry_SYSCALL_64_after_hwframe
      0.38 ±  3%      -0.3        0.12        perf-profile.self.cycles-pp.drop_nlink
      0.39 ± 13%      -0.3        0.13        perf-profile.self.cycles-pp.fpregs_assert_state_consistent
      0.36 ±  9%      -0.3        0.10        perf-profile.self.cycles-pp.shmem_free_inode
      0.34 ± 12%      -0.3        0.09 ± 11%  perf-profile.self.cycles-pp.timestamp_truncate
      0.35 ±  5%      -0.3        0.10 ± 15%  perf-profile.self.cycles-pp.__d_alloc
      0.39 ±  4%      -0.2        0.14 ±  7%  perf-profile.self.cycles-pp.shmem_evict_inode
      0.33 ±  5%      -0.2        0.09 ± 11%  perf-profile.self.cycles-pp.__pthread_enable_asynccancel
      0.35 ±  2%      -0.2        0.11 ±  4%  perf-profile.self.cycles-pp.vfs_unlink
      0.35 ±  3%      -0.2        0.11 ±  4%  perf-profile.self.cycles-pp.exit_to_usermode_loop
      0.38 ±  2%      -0.2        0.14        perf-profile.self.cycles-pp.memset_erms
      0.38 ± 12%      -0.2        0.15 ± 10%  perf-profile.self.cycles-pp.__fd_install
      0.30 ±  8%      -0.2        0.07        perf-profile.self.cycles-pp.apparmor_task_getsecid
      0.31 ±  2%      -0.2        0.08 ± 12%  perf-profile.self.cycles-pp.__list_add_valid
      0.39 ±  6%      -0.2        0.17 ±  3%  perf-profile.self.cycles-pp.find_get_entries
      0.38 ±  5%      -0.2        0.15 ± 13%  perf-profile.self.cycles-pp.__alloc_fd
      0.33 ±  5%      -0.2        0.10        perf-profile.self.cycles-pp.__GI___libc_open
      0.30 ±  3%      -0.2        0.08 ±  6%  perf-profile.self.cycles-pp.d_add
      0.31 ±  8%      -0.2        0.09 ± 17%  perf-profile.self.cycles-pp.__fsnotify_parent
      0.35 ±  4%      -0.2        0.14 ±  3%  perf-profile.self.cycles-pp.__check_heap_object
      0.39 ±  5%      -0.2        0.17 ±  5%  perf-profile.self.cycles-pp.__srcu_read_lock
      0.29 ±  3%      -0.2        0.08 ± 12%  perf-profile.self.cycles-pp.__dentry_kill
      0.29            -0.2        0.08 ±  6%  perf-profile.self.cycles-pp.___d_drop
      0.31 ± 11%      -0.2        0.10 ± 10%  perf-profile.self.cycles-pp.security_inode_permission
      0.29 ±  7%      -0.2        0.08        perf-profile.self.cycles-pp.security_inode_init_security
      0.26 ±  9%      -0.2        0.06 ±  9%  perf-profile.self.cycles-pp.common_perm_create
      0.29 ±  3%      -0.2        0.09 ± 11%  perf-profile.self.cycles-pp.unlink
      0.29 ±  4%      -0.2        0.09 ± 17%  perf-profile.self.cycles-pp.__GI___libc_close
      0.29 ± 11%      -0.2        0.09 ± 17%  perf-profile.self.cycles-pp._atomic_dec_and_lock
      0.26 ±  4%      -0.2        0.06 ±  9%  perf-profile.self.cycles-pp.terminate_walk
      0.23 ±  8%      -0.2        0.03 ±100%  perf-profile.self.cycles-pp.__srcu_read_unlock
      0.47 ±  4%      -0.2        0.28        perf-profile.self.cycles-pp.d_alloc_parallel
      0.29 ±  5%      -0.2        0.10 ±  5%  perf-profile.self.cycles-pp.set_cached_acl
      0.29 ±  3%      -0.2        0.10 ±  5%  perf-profile.self.cycles-pp.filename_parentat
      0.24 ±  9%      -0.2        0.05        perf-profile.self.cycles-pp.simple_lookup
      0.24 ±  2%      -0.2        0.06 ±  9%  perf-profile.self.cycles-pp.__d_rehash
      0.31 ±  6%      -0.2        0.13 ±  7%  perf-profile.self.cycles-pp.aa_get_task_label
      0.24 ±  7%      -0.2        0.07 ±  7%  perf-profile.self.cycles-pp.shmem_unlink
      0.20 ±  5%      -0.2        0.03 ±100%  perf-profile.self.cycles-pp.complete_walk
      0.24 ±  3%      -0.2        0.07 ±  7%  perf-profile.self.cycles-pp.task_work_add
      0.24 ±  2%      -0.2        0.07        perf-profile.self.cycles-pp.do_filp_open
      0.27 ±  5%      -0.2        0.10 ± 10%  perf-profile.self.cycles-pp.nd_jump_root
      0.26 ±  6%      -0.2        0.09 ± 11%  perf-profile.self.cycles-pp.shmem_mknod
      0.19 ±  9%      -0.2        0.03 ±100%  perf-profile.self.cycles-pp.common_perm_rm
      0.34 ±  2%      -0.2        0.17 ±  8%  perf-profile.self.cycles-pp.path_init
      0.18 ±  2%      -0.2        0.03 ±100%  perf-profile.self.cycles-pp.__close_fd
      0.33 ±  7%      -0.2        0.17        perf-profile.self.cycles-pp.mntput_no_expire
      0.25 ± 11%      -0.2        0.10 ±  5%  perf-profile.self.cycles-pp.__d_lookup_done
      0.27 ±  5%      -0.2        0.11 ±  4%  perf-profile.self.cycles-pp.unlazy_walk
      0.22 ± 12%      -0.2        0.07 ±  7%  perf-profile.self.cycles-pp.evict
      0.18 ±  6%      -0.2        0.03 ±100%  perf-profile.self.cycles-pp.___slab_alloc
      0.38 ±  6%      -0.2        0.22 ±  6%  perf-profile.self.cycles-pp.i_callback
      0.25 ±  3%      -0.2        0.10 ± 10%  perf-profile.self.cycles-pp.__pthread_disable_asynccancel
      0.24 ± 14%      -0.2        0.08 ±  5%  perf-profile.self.cycles-pp.map_id_range_down
      0.23 ±  4%      -0.1        0.08 ±  5%  perf-profile.self.cycles-pp.d_set_d_op
      0.21 ±  5%      -0.1        0.07 ±  7%  perf-profile.self.cycles-pp.__d_instantiate
      0.17 ±  8%      -0.1        0.03 ±100%  perf-profile.self.cycles-pp._raw_spin_trylock
      0.23 ±  7%      -0.1        0.09 ± 11%  perf-profile.self.cycles-pp.may_open
      0.22 ±  8%      -0.1        0.08        perf-profile.self.cycles-pp.__sb_end_write
      0.23 ±  8%      -0.1        0.09 ± 17%  perf-profile.self.cycles-pp.may_delete
      0.21 ±  5%      -0.1        0.07 ± 14%  perf-profile.self.cycles-pp.__x64_sys_close
      0.20 ±  3%      -0.1        0.07 ± 23%  perf-profile.self.cycles-pp.percpu_counter_add_batch
      0.20 ±  7%      -0.1        0.07 ±  7%  perf-profile.self.cycles-pp.memcpy_erms
      0.20 ±  6%      -0.1        0.07 ± 14%  perf-profile.self.cycles-pp.ihold
      0.20 ±  6%      -0.1        0.07 ± 14%  perf-profile.self.cycles-pp.xas_find
      0.24            -0.1        0.11 ±  9%  perf-profile.self.cycles-pp.iput
      0.19 ±  8%      -0.1        0.07 ±  7%  perf-profile.self.cycles-pp.legitimize_path
      0.19 ±  7%      -0.1        0.07 ± 14%  perf-profile.self.cycles-pp.posix_acl_create
      0.17 ±  6%      -0.1        0.06 ±  9%  perf-profile.self.cycles-pp.map_id_up
      0.30 ±  7%      -0.1        0.18 ±  8%  perf-profile.self.cycles-pp.__lookup_mnt
      0.17 ±  4%      -0.1        0.06        perf-profile.self.cycles-pp.d_alloc
      0.16 ± 10%      -0.1        0.05        perf-profile.self.cycles-pp.file_ra_state_init
      0.13 ± 12%      -0.1        0.03 ±100%  perf-profile.self.cycles-pp.security_file_open
      0.13 ±  8%      -0.1        0.03 ±100%  perf-profile.self.cycles-pp.dentry_unlink_inode
      0.12 ± 13%      -0.1        0.03 ±100%  perf-profile.self.cycles-pp.security_task_getsecid
      0.17 ±  8%      -0.1        0.08 ±  6%  perf-profile.self.cycles-pp.xas_start
      0.15 ± 10%      -0.1        0.06 ±  9%  perf-profile.self.cycles-pp.mnt_drop_write
      0.17 ±  5%      -0.1        0.07        perf-profile.self.cycles-pp.fput_many
      0.15 ±  4%      -0.1        0.06 ± 16%  perf-profile.self.cycles-pp._raw_spin_unlock_irqrestore
      0.16 ±  5%      -0.1        0.08 ±  6%  perf-profile.self.cycles-pp.get_page_from_freelist
      0.11 ± 15%      -0.1        0.03 ±100%  perf-profile.self.cycles-pp.current_umask
      0.14 ±  8%      -0.1        0.06        perf-profile.self.cycles-pp.do_sys_open
      0.11 ±  4%      -0.1        0.03 ±100%  perf-profile.self.cycles-pp.d_instantiate
      0.14 ± 15%      -0.1        0.07 ± 23%  perf-profile.self.cycles-pp.putname
      0.10 ±  8%      -0.1        0.03 ±100%  perf-profile.self.cycles-pp.fsnotify_destroy_marks
      0.10 ±  8%      -0.1        0.03 ±100%  perf-profile.self.cycles-pp.process_measurement
      0.10 ±  8%      -0.1        0.03 ±100%  perf-profile.self.cycles-pp.security_file_free
      0.15 ±  5%      -0.1        0.07        perf-profile.self.cycles-pp.restore_nameidata
      0.15 ±  5%      -0.1        0.08 ± 12%  perf-profile.self.cycles-pp.expand_files
      0.14 ±  8%      -0.1        0.08 ±  6%  perf-profile.self.cycles-pp.simple_acl_create
      0.12 ± 13%      -0.1        0.06 ± 16%  perf-profile.self.cycles-pp.filp_close
      0.09 ± 17%      -0.1        0.03 ±100%  perf-profile.self.cycles-pp.security_path_mknod
      0.09 ± 11%      -0.1        0.03 ±100%  perf-profile.self.cycles-pp.security_inode_free
      0.09 ± 16%      -0.1        0.03 ±100%  perf-profile.self.cycles-pp.get_acl
      0.11 ±  6%      -0.1        0.05        perf-profile.self.cycles-pp.security_d_instantiate
      0.12 ±  3%      -0.1        0.06        perf-profile.self.cycles-pp.inode_init_owner
      0.14 ± 11%      -0.1        0.08 ±  5%  perf-profile.self.cycles-pp._find_next_bit
      0.11 ±  7%      -0.0        0.06        perf-profile.self.cycles-pp.get_unused_fd_flags
      0.07 ± 10%      -0.0        0.03 ±100%  perf-profile.self.cycles-pp.should_failslab
      0.10 ± 14%      -0.0        0.07 ±  7%  perf-profile.self.cycles-pp.d_flags_for_inode
      0.09 ± 19%      -0.0        0.06 ±  9%  perf-profile.self.cycles-pp.ima_file_check
      0.09 ±  4%      -0.0        0.06 ±  9%  perf-profile.self.cycles-pp.rcu_do_batch
      0.09 ± 14%      -0.0        0.06 ±  9%  perf-profile.self.cycles-pp.legitimize_links
      0.08 ±  6%      -0.0        0.06 ±  9%  perf-profile.self.cycles-pp.rcu_segcblist_pend_cbs
      0.07 ± 20%      +0.0        0.11 ±  4%  perf-profile.self.cycles-pp.get_cached_acl
      0.00            +0.1        0.07 ±  7%  perf-profile.self.cycles-pp.trace_hardirqs_off_thunk
      0.00            +0.1        0.07 ± 23%  perf-profile.self.cycles-pp.trace_hardirqs_off_caller
      0.00            +0.1        0.07 ± 14%  perf-profile.self.cycles-pp.trace_hardirqs_on_thunk
      0.00            +0.1        0.07        perf-profile.self.cycles-pp._raw_spin_unlock_irq
      0.00            +0.1        0.08 ±  6%  perf-profile.self.cycles-pp.static_obj
      0.00            +0.1        0.08 ± 12%  perf-profile.self.cycles-pp.__put_unused_fd
      0.00            +0.1        0.09        perf-profile.self.cycles-pp.reacquire_held_locks
      0.00            +0.1        0.09 ± 11%  perf-profile.self.cycles-pp.trace_hardirqs_on_caller
      0.00            +0.1        0.12 ± 13%  perf-profile.self.cycles-pp.rcu_read_lock_any_held
      0.00            +0.1        0.12 ±  4%  perf-profile.self.cycles-pp.fs_reclaim_acquire
      0.00            +0.2        0.16 ±  9%  perf-profile.self.cycles-pp.rcu_read_lock_held
      0.00            +0.2        0.17        perf-profile.self.cycles-pp.__need_fs_reclaim
      0.00            +0.2        0.20        perf-profile.self.cycles-pp.rcu_read_lock_sched_held
      0.00            +0.3        0.29        perf-profile.self.cycles-pp.__raw_spin_lock_init
      0.00            +0.4        0.36 ±  2%  perf-profile.self.cycles-pp._raw_spin_unlock
      0.00            +0.4        0.36        perf-profile.self.cycles-pp.tracer_hardirqs_on
      0.00            +0.4        0.36 ±  4%  perf-profile.self.cycles-pp.lookup_open
      0.00            +0.4        0.42        perf-profile.self.cycles-pp.register_lock_class
      0.00            +0.4        0.43 ±  4%  perf-profile.self.cycles-pp.do_raw_spin_unlock
      0.00            +0.5        0.46 ±  2%  perf-profile.self.cycles-pp.lockdep_init_map
      0.00            +0.5        0.46 ±  3%  perf-profile.self.cycles-pp.trace_hardirqs_off
      0.00            +0.5        0.48        perf-profile.self.cycles-pp.trace_hardirqs_on
      0.00            +0.5        0.50 ±  2%  perf-profile.self.cycles-pp.rcu_read_lock_held_common
      0.00            +0.5        0.53 ±  4%  perf-profile.self.cycles-pp.__lock_text_start
      0.00            +0.6        0.55 ±  2%  perf-profile.self.cycles-pp.tracer_hardirqs_off
      0.00            +0.7        0.70 ±  9%  perf-profile.self.cycles-pp.rcu_lockdep_current_cpu_online
      0.00            +0.9        0.85 ±  2%  perf-profile.self.cycles-pp.rcu_is_watching
      0.00            +1.0        0.96 ±  2%  perf-profile.self.cycles-pp.lockdep_hardirqs_off
      0.00            +1.0        1.04        perf-profile.self.cycles-pp.match_held_lock
      0.00            +1.2        1.17        perf-profile.self.cycles-pp.mark_held_locks
      0.00            +1.3        1.28        perf-profile.self.cycles-pp.debug_check_no_locks_freed
      0.00            +1.5        1.54        perf-profile.self.cycles-pp.do_raw_spin_lock
      0.00            +1.6        1.58 ±  2%  perf-profile.self.cycles-pp.lockdep_hardirqs_on
      0.00            +1.6        1.65        perf-profile.self.cycles-pp.find_held_lock
      0.00            +3.4        3.38        perf-profile.self.cycles-pp.debug_lockdep_rcu_enabled
      0.00            +6.2        6.20        perf-profile.self.cycles-pp.mark_lock
      0.00            +7.1        7.12        perf-profile.self.cycles-pp.lock_acquire
      0.00            +7.3        7.32        perf-profile.self.cycles-pp.lock_release
      0.00            +7.8        7.84        perf-profile.self.cycles-pp.lock_is_held_type
      0.00           +18.5       18.52        perf-profile.self.cycles-pp.__lock_acquire


                                                                                
                            will-it-scale.per_thread_ops                        
                                                                                
  140000 +------------------------------------------------------------------+   
         |..+.+..+.+..+.+..+..+.+..+.+..+..+.+..+.+..+.+..+..+.+..+.+..+.+..|   
  120000 |-+                                                                |   
         |                                                                  |   
  100000 |-+                                                                |   
         |                                                                  |   
   80000 |-+                                                                |   
         |                                                                  |   
   60000 |-+O O  O O                                                        |   
         |                                                                  |   
   40000 |-+                                                                |   
         |            O O  O  O O  O O  O  O O    O    O     O    O    O    |   
   20000 |-+                                                                |   
         |                                                                  |   
       0 +------------------------------------------------------------------+   
                                                                                
                                                                                                                                                                
                                will-it-scale.workload                          
                                                                                
  1.2e+06 +-----------------------------------------------------------------+   
          |                                                                 |   
    1e+06 |..+.+..+.+..+.+..+.+..+.+..+.+..+..+.+..+.+..+.+..+.+..+.+..+.+..|   
          |                                                                 |   
          |                                                                 |   
   800000 |-+                                                               |   
          |                                                                 |   
   600000 |-+                                                               |   
          |  O O  O O                                                       |   
   400000 |-+                                                               |   
          |                                                                 |   
          |            O O  O O  O O  O O  O  O    O    O    O    O    O    |   
   200000 |-+                                                               |   
          |                                                                 |   
        0 +-----------------------------------------------------------------+   
                                                                                
                                                                                                                                                                
                           will-it-scale.time.user_time                         
                                                                                
  350 +---------------------------------------------------------------------+   
      |..+.+..+..+.+.    +..+.+..+..+.+..+..+.+..+..+.+..+..+..+.+..+..+.+..|   
  300 |-+                                                                   |   
      |                                                                     |   
  250 |-+                                                                   |   
      |                                                                     |   
  200 |-+                                                                   |   
      |  O O  O  O                                                          |   
  150 |-+                                                                   |   
      |                                                                     |   
  100 |-+          O  O  O  O O  O  O O  O  O    O    O     O    O     O    |   
      |                                                                     |   
   50 |-+                                                                   |   
      |                                                                     |   
    0 +---------------------------------------------------------------------+   
                                                                                
                                                                                                                                                                
                          will-it-scale.time.system_time                        
                                                                                
  2500 +--------------------------------------------------------------------+   
       |            O  O  O O  O  O O  O  O O    O     O    O    O     O    |   
       |  O O  O  O                .+..                                     |   
  2000 |..+.+..+..+.+..+..+.+..+..+    +..+.+..+.+..+..+.+..+..+.+..+..+.+..|   
       |                                                                    |   
       |                                                                    |   
  1500 |-+                                                                  |   
       |                                                                    |   
  1000 |-+                                                                  |   
       |                                                                    |   
       |                                                                    |   
   500 |-+                                                                  |   
       |                                                                    |   
       |                                                                    |   
     0 +--------------------------------------------------------------------+   
                                                                                
                                                                                
[*] bisect-good sample
[O] bisect-bad  sample

***************************************************************************************************
lkp-knm01: 288 threads Intel(R) Xeon Phi(TM) CPU 7295 @ 1.50GHz with 80G memory
=========================================================================================
compiler/cpufreq_governor/kconfig/mode/nr_task/rootfs/tbox_group/test/testcase/ucode:
  gcc-7/performance/x86_64-rhel-7.6/process/100%/debian-x86_64-20191114.cgz/lkp-knm01/getppid1/will-it-scale/0x11

commit: 
  7aba5dcc23 ("jfs: Replace zero-length array with flexible-array member")
  05c5a0273b ("fs: jfs: fix a possible data race in txBegin()")

7aba5dcc234635b4 05c5a0273bc25627b9e9bbebc85 
---------------- --------------------------- 
       fail:runs  %reproduction    fail:runs
           |             |             |    
          2:4          -50%            :4     dmesg.WARNING:at#for_ip_swapgs_restore_regs_and_return_to_usermode/0x
          1:4          -25%            :4     dmesg.WARNING:at_ip___perf_sw_event/0x
           :4          100%           4:4     kmsg.IP-Config:Failed_to_open_erspan0
           :4          100%           4:4     kmsg.IP-Config:Failed_to_open_gretap0
           :4          100%           4:4     kmsg.kvm:already_loaded_the_other_module
         %stddev     %change         %stddev
             \          |                \  
    317295           -84.4%      49580        will-it-scale.per_process_ops
    312.61            +4.8%     327.65        will-it-scale.time.elapsed_time
    312.61            +4.8%     327.65        will-it-scale.time.elapsed_time.max
    791.75           +32.1%       1046 ±  9%  will-it-scale.time.involuntary_context_switches
      3.00          +108.3%       6.25 ±  6%  will-it-scale.time.percent_of_cpu_this_job_got
      4.74          +238.1%      16.02 ±  8%  will-it-scale.time.system_time
  91381248           -84.4%   14279312        will-it-scale.workload
  1.12e+09 ±  4%     +59.6%  1.788e+09 ±  8%  cpuidle.C1.time
   2320793 ±  4%     +41.7%    3289207 ± 17%  cpuidle.C1.usage
      7868 ± 20%   +2593.2%     211899 ± 68%  cpuidle.POLL.time
     45.68           +37.3%      62.72        boot-time.boot
     27.69 ±  4%     +39.1%      38.51        boot-time.dhcp
     11411 ±  2%     +41.0%      16092        boot-time.idle
      2.14           +24.3%       2.66        boot-time.smp_boot
      1.23 ±  6%      +0.9        2.12 ±  6%  mpstat.cpu.all.idle%
      0.00 ± 17%      +0.0        0.00 ± 26%  mpstat.cpu.all.soft%
     54.74           +28.4       83.17        mpstat.cpu.all.sys%
     44.03           -29.3       14.70 ±  3%  mpstat.cpu.all.usr%
     54.00           +51.9%      82.00        vmstat.cpu.sy
     43.25           -67.6%      14.00 ±  5%  vmstat.cpu.us
      2242           -14.0%       1927 ±  3%  vmstat.system.cs
    587834           -24.5%     444073 ± 12%  vmstat.system.in
      5449          +204.3%      16584 ± 39%  numa-vmstat.node0.nr_inactive_anon
     10990 ± 12%    +258.5%      39396 ± 22%  numa-vmstat.node0.nr_mapped
     31223 ±  2%     +15.0%      35891 ±  2%  numa-vmstat.node0.nr_shmem
     25404           +38.1%      35088        numa-vmstat.node0.nr_slab_reclaimable
     75484           +15.5%      87149        numa-vmstat.node0.nr_slab_unreclaimable
      5449          +204.3%      16583 ± 39%  numa-vmstat.node0.nr_zone_inactive_anon
   2084888           -31.5%    1428939        numa-vmstat.node0.numa_hit
   2084902           -31.5%    1428952        numa-vmstat.node0.numa_local
      4495 ±  4%     +46.0%       6560 ±  8%  numa-vmstat.node1.nr_slab_reclaimable
      2907 ± 18%     +53.2%       4453 ±  8%  numa-vmstat.node1.nr_slab_unreclaimable
   7604318 ±  5%     -11.8%    6709760        meminfo.DirectMap2M
   1465469 ±  4%     -64.2%     525020        meminfo.DirectMap4k
     22057          +201.7%      66539 ± 38%  meminfo.Inactive
     21800          +204.1%      66293 ± 38%  meminfo.Inactive(anon)
    119635           +39.4%     166765        meminfo.KReclaimable
     54582 ± 10%    +209.8%     169070 ± 20%  meminfo.Mapped
   2965860           +11.5%    3307267 ±  2%  meminfo.Memused
    119635           +39.4%     166765        meminfo.SReclaimable
    313588           +16.9%     366537        meminfo.SUnreclaim
    124948 ±  2%     +15.3%     144011 ±  3%  meminfo.Shmem
    433223           +23.1%     533303        meminfo.Slab
    176743           +16.8%     206477        meminfo.VmallocUsed
     22057          +201.2%      66436 ± 38%  numa-meminfo.node0.Inactive
     21800          +203.6%      66190 ± 38%  numa-meminfo.node0.Inactive(anon)
    101650           +38.2%     140446        numa-meminfo.node0.KReclaimable
     43485 ± 12%    +262.4%     157609 ± 21%  numa-meminfo.node0.Mapped
   2353458           +13.1%    2660838 ±  2%  numa-meminfo.node0.MemUsed
    101650           +38.2%     140446        numa-meminfo.node0.SReclaimable
    301953           +15.5%     348662        numa-meminfo.node0.SUnreclaim
    124909 ±  2%     +15.1%     143725 ±  3%  numa-meminfo.node0.Shmem
    403603           +21.2%     489109        numa-meminfo.node0.Slab
     17980 ±  4%     +46.0%      26243 ±  8%  numa-meminfo.node1.KReclaimable
     17980 ±  4%     +46.0%      26243 ±  8%  numa-meminfo.node1.SReclaimable
     11630 ± 18%     +53.2%      17813 ±  8%  numa-meminfo.node1.SUnreclaim
     29610 ±  8%     +48.8%      44056 ±  7%  numa-meminfo.node1.Slab
    113909            +3.0%     117371        proc-vmstat.nr_anon_pages
    301248            +2.0%     307405        proc-vmstat.nr_file_pages
      5449          +203.5%      16542 ± 38%  proc-vmstat.nr_inactive_anon
     13705 ± 10%    +208.9%      42333 ± 19%  proc-vmstat.nr_mapped
     15428            -1.5%      15193        proc-vmstat.nr_page_table_pages
     31216 ±  2%     +15.0%      35896 ±  2%  proc-vmstat.nr_shmem
     29904           +39.3%      41665        proc-vmstat.nr_slab_reclaimable
     78394           +16.9%      91612        proc-vmstat.nr_slab_unreclaimable
      5449          +203.5%      16542 ± 38%  proc-vmstat.nr_zone_inactive_anon
    979.25 ±110%    +389.8%       4796 ±  8%  proc-vmstat.numa_hint_faults
    979.25 ±110%    +389.8%       4796 ±  8%  proc-vmstat.numa_hint_faults_local
    941145            -5.4%     890601        proc-vmstat.numa_hit
    941145            -5.4%     890601        proc-vmstat.numa_local
   1024187            -4.7%     976206        proc-vmstat.pgalloc_normal
    873632            -6.6%     815925        proc-vmstat.pgfault
   1210449 ±  3%     -39.4%     733287 ± 11%  proc-vmstat.pgfree
     92.98           -68.6       24.34 ±173%  perf-profile.calltrace.cycles-pp.getppid
     47.25 ±  4%     -25.6       21.64 ±173%  perf-profile.calltrace.cycles-pp.entry_SYSCALL_64_after_hwframe.getppid
     26.10 ±  4%     -25.5        0.59 ±173%  perf-profile.calltrace.cycles-pp.entry_SYSCALL_64.getppid
     44.62 ±  4%     -24.6       19.98 ±173%  perf-profile.calltrace.cycles-pp.do_syscall_64.entry_SYSCALL_64_after_hwframe.getppid
     14.16 ±  6%     -13.7        0.51 ±173%  perf-profile.calltrace.cycles-pp.syscall_return_via_sysret.getppid
     27.98 ±  6%     -10.4       17.55 ±173%  perf-profile.calltrace.cycles-pp.__x64_sys_getppid.do_syscall_64.entry_SYSCALL_64_after_hwframe.getppid
     14.98 ±  4%      -6.4        8.57 ±173%  perf-profile.calltrace.cycles-pp.__task_pid_nr_ns.__x64_sys_getppid.do_syscall_64.entry_SYSCALL_64_after_hwframe.getppid
     98.22           -73.6       24.65 ±173%  perf-profile.children.cycles-pp.getppid
     47.88 ±  4%     -26.1       21.81 ±173%  perf-profile.children.cycles-pp.entry_SYSCALL_64_after_hwframe
     45.32 ±  4%     -25.1       20.19 ±173%  perf-profile.children.cycles-pp.do_syscall_64
     24.32 ±  5%     -23.7        0.60 ±173%  perf-profile.children.cycles-pp.entry_SYSCALL_64
     15.64 ±  5%     -15.1        0.57 ±173%  perf-profile.children.cycles-pp.syscall_return_via_sysret
     28.10 ±  6%     -10.5       17.59 ±173%  perf-profile.children.cycles-pp.__x64_sys_getppid
     15.06 ±  4%      -6.4        8.61 ±173%  perf-profile.children.cycles-pp.__task_pid_nr_ns
      7.78 ± 19%      -1.7        6.08 ±173%  perf-profile.children.cycles-pp.apic_timer_interrupt
      7.33 ± 20%      -1.3        6.01 ±173%  perf-profile.children.cycles-pp.smp_apic_timer_interrupt
      5.64 ± 20%      -0.7        4.94 ±173%  perf-profile.children.cycles-pp.hrtimer_interrupt
     22.26 ±  5%     -21.7        0.53 ±173%  perf-profile.self.cycles-pp.entry_SYSCALL_64
     15.61 ±  5%     -15.0        0.57 ±173%  perf-profile.self.cycles-pp.syscall_return_via_sysret
     14.02 ±  4%     -11.3        2.76 ±173%  perf-profile.self.cycles-pp.__task_pid_nr_ns
     10.85 ±  4%     -10.2        0.62 ±173%  perf-profile.self.cycles-pp.do_syscall_64
     12.08 ±  9%      -9.7        2.34 ±173%  perf-profile.self.cycles-pp.__x64_sys_getppid
      8.58            -8.3        0.32 ±173%  perf-profile.self.cycles-pp.getppid
     60.73           -92.4%       4.65 ±173%  perf-stat.i.MPKI
      8.96            -7.8        1.13 ±173%  perf-stat.i.branch-miss-rate%
 3.664e+08           -78.1%   80177268 ±173%  perf-stat.i.branch-misses
 1.254e+09           -86.7%  1.668e+08 ±173%  perf-stat.i.cache-references
      2223           -76.5%     521.96 ±173%  perf-stat.i.context-switches
     21.47           -87.1%       2.77 ±173%  perf-stat.i.cpi
 4.431e+11           -77.4%  1.002e+11 ±173%  perf-stat.i.cpu-cycles
    255.37           -80.9%      48.72 ±173%  perf-stat.i.cpu-migrations
      8683           -88.0%       1042 ±173%  perf-stat.i.cycles-between-cache-misses
      1.91            -1.6        0.28 ±173%  perf-stat.i.iTLB-load-miss-rate%
      2760           -75.1%     686.60 ±173%  perf-stat.i.minor-faults
      2760           -75.1%     686.60 ±173%  perf-stat.i.page-faults
     61.07           -92.3%       4.67 ±173%  perf-stat.overall.MPKI
      8.96            -7.8        1.12 ±173%  perf-stat.overall.branch-miss-rate%
     21.55           -87.0%       2.81 ±173%  perf-stat.overall.cpi
      8672           -87.9%       1048 ±173%  perf-stat.overall.cycles-between-cache-misses
      1.92            -1.6        0.28 ±173%  perf-stat.overall.iTLB-load-miss-rate%
 3.645e+08           -78.0%   80033922 ±173%  perf-stat.ps.branch-misses
 1.253e+09           -86.6%  1.685e+08 ±173%  perf-stat.ps.cache-references
      2159           -77.4%     488.54 ±173%  perf-stat.ps.context-switches
    286876           -75.0%      71639 ±173%  perf-stat.ps.cpu-clock
 4.421e+11           -77.1%  1.013e+11 ±173%  perf-stat.ps.cpu-cycles
    232.60 ±  2%     -84.1%      36.89 ±173%  perf-stat.ps.cpu-migrations
      2674           -77.8%     594.49 ±173%  perf-stat.ps.minor-faults
      2674           -77.8%     594.49 ±173%  perf-stat.ps.page-faults
    286876           -75.0%      71639 ±173%  perf-stat.ps.task-clock
     36717 ± 55%    +111.8%      77780 ± 19%  sched_debug.cfs_rq:/.MIN_vruntime.avg
  10573717 ± 55%    +111.9%   22400810 ± 19%  sched_debug.cfs_rq:/.MIN_vruntime.max
    622006 ± 55%    +111.8%    1317686 ± 19%  sched_debug.cfs_rq:/.MIN_vruntime.stddev
    113082 ±  2%     -25.2%      84619 ±  3%  sched_debug.cfs_rq:/.exec_clock.min
      2174 ±  4%     +80.1%       3915 ± 19%  sched_debug.cfs_rq:/.exec_clock.stddev
    350219 ± 26%     +81.1%     634377 ± 16%  sched_debug.cfs_rq:/.load.max
      4.36 ± 14%     +38.2%       6.03 ±  7%  sched_debug.cfs_rq:/.load_avg.avg
    307.45 ± 22%    +131.3%     711.24 ± 21%  sched_debug.cfs_rq:/.load_avg.max
     20.98 ± 27%    +109.4%      43.94 ± 18%  sched_debug.cfs_rq:/.load_avg.stddev
     36717 ± 55%    +111.8%      77780 ± 19%  sched_debug.cfs_rq:/.max_vruntime.avg
  10573720 ± 55%    +111.9%   22400815 ± 19%  sched_debug.cfs_rq:/.max_vruntime.max
    622006 ± 55%    +111.8%    1317687 ± 19%  sched_debug.cfs_rq:/.max_vruntime.stddev
  37523550           -25.6%   27902434 ±  3%  sched_debug.cfs_rq:/.min_vruntime.min
    901238 ±  4%     +59.0%    1433317 ± 18%  sched_debug.cfs_rq:/.min_vruntime.stddev
      2.09 ± 14%     +57.6%       3.30 ± 17%  sched_debug.cfs_rq:/.nr_spread_over.avg
     94.65 ±  6%     +60.1%     151.53 ± 52%  sched_debug.cfs_rq:/.nr_spread_over.max
      7.34 ±  6%     +47.6%      10.84 ± 41%  sched_debug.cfs_rq:/.nr_spread_over.stddev
      3.77 ±  6%     +29.7%       4.89 ±  6%  sched_debug.cfs_rq:/.runnable_load_avg.avg
    292.95 ± 20%    +111.1%     618.43 ± 16%  sched_debug.cfs_rq:/.runnable_load_avg.max
     18.38 ± 19%    +102.9%      37.28 ± 15%  sched_debug.cfs_rq:/.runnable_load_avg.stddev
    349946 ± 26%     +81.1%     633684 ± 16%  sched_debug.cfs_rq:/.runnable_weight.max
    250152 ± 51%    +233.8%     835124 ± 20%  sched_debug.cfs_rq:/.spread0.avg
    620948 ± 19%    +147.3%    1535605 ± 10%  sched_debug.cfs_rq:/.spread0.max
  -7540824          +115.4%  -16246462        sched_debug.cfs_rq:/.spread0.min
    550536 ±  7%    +125.5%    1241459 ± 21%  sched_debug.cfs_rq:/.spread0.stddev
    484.00 ± 15%     -42.2%     279.99 ± 32%  sched_debug.cfs_rq:/.util_avg.min
     57.30 ±  9%     +25.8%      72.08        sched_debug.cfs_rq:/.util_avg.stddev
    370.07           -11.6%     327.26        sched_debug.cfs_rq:/.util_est_enqueued.avg
    801.30 ±  7%     +11.2%     891.38 ±  4%  sched_debug.cfs_rq:/.util_est_enqueued.max
      0.90 ± 19%    +273.1%       3.36 ± 47%  sched_debug.cfs_rq:/.util_est_enqueued.min
    120.90           +48.2%     179.17        sched_debug.cfs_rq:/.util_est_enqueued.stddev
   2278609 ±  5%     +28.2%    2920845 ± 13%  sched_debug.cpu.avg_idle.avg
      2025 ±  2%     -31.4%       1389 ±  5%  sched_debug.cpu.clock.stddev
      2025 ±  2%     -31.4%       1389 ±  5%  sched_debug.cpu.clock_task.stddev
    342.60 ±  7%     +16.8%     400.21 ±  5%  sched_debug.cpu.curr->pid.stddev
    791314 ±  3%     +29.0%    1020928 ± 11%  sched_debug.cpu.max_idle_balance_cost.avg
      0.12 ±  4%     +33.4%       0.16 ±  3%  sched_debug.cpu.nr_running.stddev
      2011 ±  9%     +14.2%       2296 ±  7%  sched_debug.cpu.nr_switches.stddev
      0.00 ± 49%     -83.3%       0.00 ±128%  sched_debug.cpu.nr_uninterruptible.avg
    233.75 ±  3%     +31.8%     308.00        sched_debug.cpu.nr_uninterruptible.max
     16.05 ±  5%     +26.3%      20.27        sched_debug.cpu.nr_uninterruptible.stddev
    368.35           -30.2%     257.27 ±  5%  sched_debug.cpu.sched_count.min
    204.20 ±  5%      -8.8%     186.15 ±  3%  sched_debug.cpu.sched_goidle.stddev
    135.25           -32.7%      91.07 ±  4%  sched_debug.cpu.ttwu_count.min
    128.70           -31.9%      87.58 ±  5%  sched_debug.cpu.ttwu_local.min
    613.86 ± 11%     +25.7%     771.81 ± 12%  sched_debug.cpu.ttwu_local.stddev
      0.00          +183.3%       0.00 ± 17%  sched_debug.rt_rq:/.rt_nr_migratory.avg
      0.20          +183.3%       0.57 ± 17%  sched_debug.rt_rq:/.rt_nr_migratory.max
      0.01          +183.3%       0.03 ± 17%  sched_debug.rt_rq:/.rt_nr_migratory.stddev
      0.00          +183.3%       0.00 ± 17%  sched_debug.rt_rq:/.rt_nr_running.avg
      0.20          +183.3%       0.57 ± 17%  sched_debug.rt_rq:/.rt_nr_running.max
      0.01          +183.3%       0.03 ± 17%  sched_debug.rt_rq:/.rt_nr_running.stddev
      0.33 ± 65%    +243.5%       1.13 ± 14%  sched_debug.rt_rq:/.rt_time.avg
     94.55 ± 65%    +237.4%     319.05 ± 15%  sched_debug.rt_rq:/.rt_time.max
      5.56 ± 65%    +237.5%      18.77 ± 15%  sched_debug.rt_rq:/.rt_time.stddev
     44931           +41.9%      63777        slabinfo.Acpi-Operand.active_objs
    802.75           +42.0%       1140        slabinfo.Acpi-Operand.active_slabs
     44987           +41.9%      63859        slabinfo.Acpi-Operand.num_objs
    802.75           +42.0%       1140        slabinfo.Acpi-Operand.num_slabs
      1460 ± 14%    -100.0%       0.00        slabinfo.Acpi-Parse.active_objs
      1460 ± 14%    -100.0%       0.00        slabinfo.Acpi-Parse.num_objs
    174.75 ±  6%    -100.0%       0.00        slabinfo.UDPv6.active_objs
    174.75 ±  6%    -100.0%       0.00        slabinfo.UDPv6.num_objs
      2366 ±  4%     -36.3%       1508 ±  8%  slabinfo.UNIX.active_objs
      2366 ±  4%     -36.3%       1508 ±  8%  slabinfo.UNIX.num_objs
    136.25 ± 26%     -50.8%      67.00 ± 23%  slabinfo.btrfs_inode.active_objs
    136.25 ± 26%     -50.8%      67.00 ± 23%  slabinfo.btrfs_inode.num_objs
     14784          -100.0%       0.00        slabinfo.cred_jar.active_objs
    351.50          -100.0%       0.00        slabinfo.cred_jar.active_slabs
     14784          -100.0%       0.00        slabinfo.cred_jar.num_objs
    351.50          -100.0%       0.00        slabinfo.cred_jar.num_slabs
      3296           -26.5%       2423        slabinfo.dentry.active_slabs
      3296           -26.5%       2423        slabinfo.dentry.num_slabs
    979.00 ±  2%    -100.0%       0.00        slabinfo.dmaengine-unmap-16.active_objs
    979.00 ±  2%    -100.0%       0.00        slabinfo.dmaengine-unmap-16.num_objs
      1631 ±  9%    -100.0%       0.00        slabinfo.file_lock_cache.active_objs
      1631 ±  9%    -100.0%       0.00        slabinfo.file_lock_cache.num_objs
     13322           -13.6%      11508        slabinfo.files_cache.active_objs
     13322           -13.6%      11508        slabinfo.files_cache.num_objs
      1622 ±  9%    -100.0%       0.00        slabinfo.fsnotify_mark_connector.active_objs
      1622 ±  9%    -100.0%       0.00        slabinfo.fsnotify_mark_connector.num_objs
      1553           +54.2%       2395        slabinfo.inode_cache.active_slabs
      1553           +54.2%       2395        slabinfo.inode_cache.num_slabs
      2227           +17.8%       2624        slabinfo.kernfs_node_cache.active_slabs
      2227           +17.8%       2624        slabinfo.kernfs_node_cache.num_slabs
      9477 ±  2%     +50.2%      14236        slabinfo.kmalloc-2k.active_objs
    594.50 ±  2%     +50.4%     894.00        slabinfo.kmalloc-2k.active_slabs
      9516 ±  2%     +50.4%      14314        slabinfo.kmalloc-2k.num_objs
    594.50 ±  2%     +50.4%     894.00        slabinfo.kmalloc-2k.num_slabs
      3474           +10.3%       3833        slabinfo.kmalloc-4k.active_objs
    657.00 ±  7%     +29.1%     848.00 ± 11%  slabinfo.kmem_cache.active_objs
    657.00 ±  7%     +29.1%     848.00 ± 11%  slabinfo.kmem_cache.num_objs
    712.00 ±  6%     +40.6%       1001 ±  9%  slabinfo.kmem_cache_node.active_objs
    768.00 ±  5%     +35.4%       1040 ±  9%  slabinfo.kmem_cache_node.num_objs
     50671          -100.0%       0.00        slabinfo.lsm_file_cache.active_objs
    297.25          -100.0%       0.00        slabinfo.lsm_file_cache.active_slabs
     50671          -100.0%       0.00        slabinfo.lsm_file_cache.num_objs
    297.25          -100.0%       0.00        slabinfo.lsm_file_cache.num_slabs
      9112           -28.3%       6531        slabinfo.mm_struct.active_objs
      9112           -28.3%       6531        slabinfo.mm_struct.num_objs
      1105 ± 15%    -100.0%       0.00        slabinfo.mnt_cache.active_objs
      1105 ± 15%    -100.0%       0.00        slabinfo.mnt_cache.num_objs
    111.75 ± 15%    -100.0%       0.00        slabinfo.nfs_read_data.active_objs
    111.75 ± 15%    -100.0%       0.00        slabinfo.nfs_read_data.num_objs
    817.50 ± 21%    +102.1%       1652 ±  5%  slabinfo.numa_policy.active_objs
    817.50 ± 21%    +102.1%       1652 ±  5%  slabinfo.numa_policy.num_objs
     20726           -10.6%      18539        slabinfo.pid.active_objs
    323.75           +36.2%     441.00        slabinfo.pid.active_slabs
     20726           -10.6%      18539        slabinfo.pid.num_objs
    323.75           +36.2%     441.00        slabinfo.pid.num_slabs
      2215            +9.3%       2421 ±  4%  slabinfo.proc_dir_entry.active_objs
      2215           +10.5%       2448 ±  3%  slabinfo.proc_dir_entry.num_objs
     34174           -15.1%      29003        slabinfo.proc_inode_cache.active_objs
    697.00           +30.0%     906.25        slabinfo.proc_inode_cache.active_slabs
     34177           -15.1%      29018        slabinfo.proc_inode_cache.num_objs
    697.00           +30.0%     906.25        slabinfo.proc_inode_cache.num_slabs
     13886 ±  2%     -29.4%       9803 ±  2%  slabinfo.shmem_inode_cache.active_objs
     13886 ±  2%     -29.4%       9803 ±  2%  slabinfo.shmem_inode_cache.num_objs
     10728           -16.0%       9011 ±  2%  slabinfo.signal_cache.active_objs
     10728           -16.0%       9011 ±  2%  slabinfo.signal_cache.num_objs
      1091 ± 10%     -19.8%     875.00 ±  3%  slabinfo.skbuff_fclone_cache.active_objs
      1091 ± 10%     -19.8%     875.00 ±  3%  slabinfo.skbuff_fclone_cache.num_objs
      4677 ±  2%     -13.7%       4037 ±  4%  slabinfo.sock_inode_cache.active_objs
      4677 ±  2%     -13.7%       4037 ±  4%  slabinfo.sock_inode_cache.num_objs
     16428           +16.5%      19132        slabinfo.task_delay_info.active_objs
     16428           +16.5%      19132        slabinfo.task_delay_info.num_objs
      3233           +11.7%       3611        slabinfo.task_struct.active_objs
      3235           -44.1%       1807        slabinfo.task_struct.active_slabs
      3235           +11.7%       3614        slabinfo.task_struct.num_objs
      3235           -44.1%       1807        slabinfo.task_struct.num_slabs
      1840           +25.2%       2303        slabinfo.trace_event_file.active_objs
      1840           +25.2%       2303        slabinfo.trace_event_file.num_objs
    136122           +18.3%     161019 ±  2%  softirqs.CPU0.RCU
    141474           +11.5%     157772 ±  3%  softirqs.CPU1.RCU
    136882           +16.7%     159760 ±  2%  softirqs.CPU10.RCU
    137022 ±  2%     +15.3%     157981 ±  2%  softirqs.CPU100.RCU
    135840           +16.1%     157706 ±  2%  softirqs.CPU101.RCU
    134628           +14.3%     153914 ±  3%  softirqs.CPU102.RCU
    134794           +14.8%     154776 ±  2%  softirqs.CPU103.RCU
    138793 ± 12%     +23.3%     171188        softirqs.CPU103.TIMER
    136139           +15.7%     157563 ±  2%  softirqs.CPU104.RCU
    128409 ± 17%     +26.4%     162302 ±  7%  softirqs.CPU104.TIMER
    136866           +16.6%     159616        softirqs.CPU105.RCU
    136264           +16.4%     158562 ±  2%  softirqs.CPU106.RCU
    133141 ± 15%     +27.0%     169069 ±  2%  softirqs.CPU106.TIMER
    137216           +16.4%     159786        softirqs.CPU107.RCU
    132918 ± 14%     +24.8%     165942 ±  5%  softirqs.CPU107.TIMER
    134727           +15.8%     156042 ±  2%  softirqs.CPU108.RCU
    133863 ± 14%     +27.2%     170329        softirqs.CPU108.TIMER
    135173           +17.6%     159019 ±  2%  softirqs.CPU109.RCU
    136304           +21.3%     165311 ±  4%  softirqs.CPU11.RCU
    134604 ±  2%     +15.3%     155152 ±  4%  softirqs.CPU110.RCU
    131367 ± 15%     +31.9%     173222        softirqs.CPU110.TIMER
    135398           +15.4%     156202 ±  2%  softirqs.CPU111.RCU
    134911 ± 15%     +23.0%     165956 ±  5%  softirqs.CPU111.TIMER
    133883           +16.7%     156266 ±  3%  softirqs.CPU112.RCU
    141469 ± 11%     +18.2%     167195 ±  3%  softirqs.CPU112.TIMER
    134135           +14.8%     153961 ±  2%  softirqs.CPU113.RCU
    136991 ± 13%     +25.0%     171183        softirqs.CPU113.TIMER
    135577           +15.5%     156650 ±  2%  softirqs.CPU114.RCU
    136176           +14.7%     156184 ±  2%  softirqs.CPU115.RCU
    131694 ±  4%     +18.9%     156553        softirqs.CPU116.RCU
    132117 ± 15%     +24.5%     164428 ±  6%  softirqs.CPU116.TIMER
    136732           +15.1%     157372        softirqs.CPU117.RCU
    135603 ± 15%     +24.0%     168171 ±  3%  softirqs.CPU117.TIMER
    137465           +16.5%     160083 ±  2%  softirqs.CPU118.RCU
    135363           +17.5%     159032 ±  2%  softirqs.CPU119.RCU
    137113           +17.3%     160838 ±  3%  softirqs.CPU12.RCU
    139539 ±  4%     +12.3%     156719 ±  2%  softirqs.CPU120.RCU
    134836           +14.5%     154436        softirqs.CPU121.RCU
    133522 ± 14%     +27.6%     170377        softirqs.CPU121.TIMER
    135000           +16.0%     156582 ±  2%  softirqs.CPU122.RCU
    134900           +14.1%     153984 ±  2%  softirqs.CPU123.RCU
    136555           +20.7%     164775 ±  7%  softirqs.CPU124.RCU
    136657 ±  2%     +16.3%     158891 ±  2%  softirqs.CPU125.RCU
    133790           +16.9%     156440        softirqs.CPU126.RCU
    131813 ± 14%     +24.9%     164630 ±  4%  softirqs.CPU126.TIMER
    136264           +15.6%     157552        softirqs.CPU127.RCU
    136723 ± 14%     +23.3%     168646 ±  2%  softirqs.CPU127.TIMER
    134476           +17.5%     157992 ±  2%  softirqs.CPU128.RCU
    125895 ± 17%     +33.9%     168615 ±  3%  softirqs.CPU128.TIMER
    135534           +16.9%     158376        softirqs.CPU129.RCU
    124429 ± 15%     +32.9%     165356 ±  5%  softirqs.CPU129.TIMER
    136483           +16.3%     158766        softirqs.CPU13.RCU
    135648           +16.9%     158546 ±  2%  softirqs.CPU130.RCU
    129520 ± 16%     +28.1%     165925 ±  4%  softirqs.CPU130.TIMER
    136893           +16.4%     159402        softirqs.CPU131.RCU
    130865 ± 16%     +26.6%     165714 ±  4%  softirqs.CPU131.TIMER
    133844           +13.5%     151873 ±  2%  softirqs.CPU132.RCU
    126615 ± 16%     +34.8%     170717        softirqs.CPU132.TIMER
    134961           +15.0%     155246 ±  2%  softirqs.CPU133.RCU
    133249 ± 14%     +23.4%     164456 ±  5%  softirqs.CPU133.TIMER
    134421 ±  2%     +16.6%     156773        softirqs.CPU134.RCU
    133500 ± 15%     +26.0%     168208 ±  2%  softirqs.CPU134.TIMER
    133934 ±  2%     +19.0%     159395 ±  2%  softirqs.CPU135.RCU
    135741           +15.7%     156989 ±  2%  softirqs.CPU136.RCU
    128719 ± 13%     +31.3%     168997 ±  2%  softirqs.CPU136.TIMER
    135502           +16.9%     158422 ±  2%  softirqs.CPU137.RCU
    133778           +17.3%     156923 ±  2%  softirqs.CPU138.RCU
    135180 ± 12%     +22.5%     165561 ±  5%  softirqs.CPU138.TIMER
    134124           +16.8%     156620 ±  2%  softirqs.CPU139.RCU
    136993 ± 11%     +24.8%     170970        softirqs.CPU139.TIMER
    137051           +16.5%     159673 ±  3%  softirqs.CPU14.RCU
    136169           +16.7%     158881 ±  2%  softirqs.CPU140.RCU
    135832           +17.0%     158947 ±  2%  softirqs.CPU141.RCU
    133104           +17.8%     156860        softirqs.CPU142.RCU
    131263 ± 13%     +25.0%     164128 ±  5%  softirqs.CPU142.TIMER
    136069           +16.7%     158818        softirqs.CPU143.RCU
    139876 ± 10%     +20.5%     168600 ±  2%  softirqs.CPU143.TIMER
    136733 ±  2%     +15.7%     158216        softirqs.CPU144.RCU
    133096 ± 13%     +26.0%     167646 ±  2%  softirqs.CPU144.TIMER
    136869           +14.9%     157216 ±  2%  softirqs.CPU145.RCU
    130255 ± 15%     +26.3%     164490 ±  4%  softirqs.CPU145.TIMER
    136154           +16.0%     157934 ±  2%  softirqs.CPU146.RCU
    127249 ± 16%     +27.2%     161846 ±  5%  softirqs.CPU146.TIMER
    136106           +15.7%     157496 ±  2%  softirqs.CPU147.RCU
    124747 ± 16%     +28.9%     160778 ±  7%  softirqs.CPU147.TIMER
    135267           +15.0%     155538 ±  2%  softirqs.CPU148.RCU
    131092 ± 16%     +30.0%     170485        softirqs.CPU148.TIMER
    135225           +14.9%     155407 ±  3%  softirqs.CPU149.RCU
    133039 ± 12%     +23.6%     164457 ±  5%  softirqs.CPU149.TIMER
    136113           +16.5%     158520 ±  2%  softirqs.CPU15.RCU
    135740           +15.6%     156925 ±  2%  softirqs.CPU150.RCU
    135689 ± 14%     +25.6%     170382        softirqs.CPU150.TIMER
    134770           +18.4%     159631 ±  2%  softirqs.CPU151.RCU
    135960 ±  2%     +16.6%     158553 ±  2%  softirqs.CPU152.RCU
    131917 ± 14%     +27.1%     167640 ±  3%  softirqs.CPU152.TIMER
    136105           +16.5%     158566 ±  2%  softirqs.CPU153.RCU
    129771 ± 16%     +26.1%     163591 ±  6%  softirqs.CPU153.TIMER
    135048 ±  2%     +17.6%     158782        softirqs.CPU154.RCU
    129429 ± 14%     +30.1%     168332 ±  2%  softirqs.CPU154.TIMER
    135523           +16.4%     157776 ±  2%  softirqs.CPU155.RCU
    126533 ± 16%     +29.7%     164084 ±  4%  softirqs.CPU155.TIMER
    134974           +15.8%     156348 ±  2%  softirqs.CPU156.RCU
    132900 ± 13%     +27.2%     169004 ±  2%  softirqs.CPU156.TIMER
    136170           +16.6%     158713 ±  2%  softirqs.CPU157.RCU
    135501           +14.5%     155128 ±  2%  softirqs.CPU158.RCU
    128829 ± 15%     +32.3%     170469        softirqs.CPU158.TIMER
    134457 ±  2%     +15.7%     155605 ±  2%  softirqs.CPU159.RCU
    136530 ± 12%     +22.2%     166897 ±  4%  softirqs.CPU159.TIMER
    139229           +14.9%     159981 ±  2%  softirqs.CPU16.RCU
    136188           +17.9%     160520        softirqs.CPU160.RCU
    140773 ± 10%     +20.2%     169151 ±  5%  softirqs.CPU160.TIMER
    135849           +16.8%     158729 ±  3%  softirqs.CPU161.RCU
    138370 ± 12%     +23.8%     171253 ±  3%  softirqs.CPU161.TIMER
    136067           +16.5%     158496        softirqs.CPU162.RCU
    128389 ± 13%     +26.4%     162259 ±  7%  softirqs.CPU162.TIMER
    135252           +16.2%     157106        softirqs.CPU163.RCU
    128540 ± 15%     +30.7%     167959 ±  3%  softirqs.CPU163.TIMER
    132546 ±  2%     +18.0%     156410 ±  2%  softirqs.CPU164.RCU
    128264 ± 15%     +27.1%     163082 ±  5%  softirqs.CPU164.TIMER
    136482           +16.5%     159026 ±  2%  softirqs.CPU165.RCU
    140243 ± 12%     +19.9%     168132 ±  2%  softirqs.CPU165.TIMER
    136260           +16.3%     158452 ±  2%  softirqs.CPU166.RCU
    136353 ±  2%     +17.8%     160571 ±  3%  softirqs.CPU167.RCU
    136143           +17.0%     159330        softirqs.CPU168.RCU
    135671 ±  2%     +17.6%     159555        softirqs.CPU169.RCU
    132921 ± 15%     +24.5%     165490 ±  5%  softirqs.CPU169.TIMER
    136549           +16.7%     159402 ±  2%  softirqs.CPU17.RCU
    135557           +15.3%     156287 ±  2%  softirqs.CPU170.RCU
    127181 ± 15%     +29.3%     164402 ±  4%  softirqs.CPU170.TIMER
    134990           +17.0%     157991 ±  2%  softirqs.CPU171.RCU
    132633 ± 15%     +26.1%     167274 ±  3%  softirqs.CPU171.TIMER
    136983           +14.9%     157400 ±  2%  softirqs.CPU172.RCU
    137464 ±  2%     +14.2%     156969 ±  2%  softirqs.CPU173.RCU
    135433 ± 13%     +22.6%     165995 ±  4%  softirqs.CPU173.TIMER
    135835           +16.3%     157934 ±  2%  softirqs.CPU174.RCU
    134792 ± 13%     +22.0%     164392 ±  5%  softirqs.CPU174.TIMER
    134619           +16.5%     156887        softirqs.CPU175.RCU
    135494 ± 15%     +25.3%     169744 ±  2%  softirqs.CPU175.TIMER
    133640           +16.4%     155593 ±  2%  softirqs.CPU176.RCU
    138712 ± 12%     +22.0%     169161 ±  2%  softirqs.CPU176.TIMER
    133588           +18.1%     157754 ±  3%  softirqs.CPU177.RCU
    139623 ± 11%     +18.8%     165853 ±  5%  softirqs.CPU177.TIMER
    135256           +17.3%     158703 ±  2%  softirqs.CPU178.RCU
    136018           +16.9%     159022 ±  2%  softirqs.CPU179.RCU
    132648 ± 13%     +21.9%     161705 ±  7%  softirqs.CPU179.TIMER
    133400 ±  2%     +20.0%     160027 ±  2%  softirqs.CPU18.RCU
    134738 ±  2%     +15.7%     155843 ±  2%  softirqs.CPU180.RCU
    134248 ± 13%     +25.1%     167915 ±  2%  softirqs.CPU180.TIMER
    133572           +16.6%     155811 ±  2%  softirqs.CPU181.RCU
    130620 ± 15%     +24.9%     163149 ±  5%  softirqs.CPU181.TIMER
    136824           +15.4%     157928 ±  2%  softirqs.CPU182.RCU
    136419 ±  2%     +16.1%     158371 ±  2%  softirqs.CPU183.RCU
    134990           +16.9%     157769 ±  2%  softirqs.CPU184.RCU
    134085           +17.6%     157730 ±  2%  softirqs.CPU185.RCU
    134334           +15.6%     155328 ±  2%  softirqs.CPU186.RCU
    138382 ± 12%     +22.1%     168923 ±  2%  softirqs.CPU186.TIMER
    135548 ±  3%     +15.5%     156514 ±  2%  softirqs.CPU187.RCU
    136563           +15.4%     157588        softirqs.CPU188.RCU
    128008 ± 15%     +27.8%     163621 ±  5%  softirqs.CPU188.TIMER
    134339 ±  3%     +21.6%     163329 ±  3%  softirqs.CPU189.RCU
    125695 ± 14%     +31.4%     165139 ± 10%  softirqs.CPU189.TIMER
    137171 ±  2%     +17.3%     160919 ±  2%  softirqs.CPU19.RCU
    135309 ±  2%     +16.7%     157923 ±  2%  softirqs.CPU190.RCU
    140465 ± 11%     +19.6%     168002 ±  2%  softirqs.CPU190.TIMER
    135788           +15.6%     156996 ±  2%  softirqs.CPU191.RCU
    137224 ± 13%     +19.9%     164593 ±  4%  softirqs.CPU191.TIMER
    134866           +16.3%     156859 ±  2%  softirqs.CPU192.RCU
    126223 ± 14%     +29.1%     162979 ±  5%  softirqs.CPU192.TIMER
    134101 ±  2%     +18.0%     158236        softirqs.CPU193.RCU
    133525 ± 13%     +25.5%     167618 ±  3%  softirqs.CPU193.TIMER
    135493           +16.7%     158106 ±  2%  softirqs.CPU194.RCU
    135519 ±  2%     +19.8%     162384 ±  6%  softirqs.CPU195.RCU
    135219           +14.8%     155269 ±  3%  softirqs.CPU196.RCU
    129504 ± 16%     +28.4%     166258 ±  4%  softirqs.CPU196.TIMER
    134542           +15.6%     155523 ±  2%  softirqs.CPU197.RCU
    133568 ± 14%     +27.0%     169658        softirqs.CPU197.TIMER
    134805           +17.6%     158501 ±  2%  softirqs.CPU198.RCU
    138035 ± 11%     +19.6%     165157 ±  5%  softirqs.CPU198.TIMER
    134511           +20.9%     162557 ±  3%  softirqs.CPU199.RCU
    136297 ± 13%     +27.6%     173880 ±  5%  softirqs.CPU199.TIMER
    135267           +20.0%     162370 ±  3%  softirqs.CPU2.RCU
    134846 ±  2%     +19.2%     160770 ±  2%  softirqs.CPU20.RCU
    134024           +16.8%     156541 ±  2%  softirqs.CPU200.RCU
    134584           +17.5%     158192 ±  2%  softirqs.CPU201.RCU
    133058           +15.7%     153923        softirqs.CPU202.RCU
    138555 ± 12%     +23.5%     171065        softirqs.CPU202.TIMER
    133540           +19.6%     159755 ±  6%  softirqs.CPU203.RCU
    135050           +16.7%     157670 ±  2%  softirqs.CPU204.RCU
    136644           +16.1%     158708        softirqs.CPU205.RCU
    135789 ±  2%     +14.1%     154977 ±  2%  softirqs.CPU206.RCU
    131118 ± 17%     +27.8%     167525 ±  3%  softirqs.CPU206.TIMER
    132798           +18.1%     156889        softirqs.CPU207.RCU
    129223 ± 14%     +26.4%     163363 ±  5%  softirqs.CPU207.TIMER
    134869           +16.5%     157143 ±  2%  softirqs.CPU208.RCU
    125191 ± 15%     +31.2%     164211 ±  5%  softirqs.CPU208.TIMER
    133403           +17.4%     156592 ±  2%  softirqs.CPU209.RCU
    128000 ± 17%     +30.7%     167338 ±  3%  softirqs.CPU209.TIMER
    136113           +16.4%     158495 ±  2%  softirqs.CPU21.RCU
    135457           +17.3%     158935 ±  2%  softirqs.CPU210.RCU
    130469 ± 15%     +24.7%     162654 ±  6%  softirqs.CPU210.TIMER
    134808           +16.8%     157489 ±  2%  softirqs.CPU211.RCU
    134350           +16.2%     156049 ±  2%  softirqs.CPU212.RCU
    133561 ± 15%     +23.2%     164604 ±  3%  softirqs.CPU212.TIMER
    134039           +15.8%     155224 ±  3%  softirqs.CPU213.RCU
    130643 ± 15%     +30.4%     170370        softirqs.CPU213.TIMER
    134371           +16.1%     155960 ±  2%  softirqs.CPU214.RCU
    133411           +15.0%     153368 ±  2%  softirqs.CPU215.RCU
    132121 ± 14%     +27.7%     168722 ±  2%  softirqs.CPU215.TIMER
    136707           +15.9%     158472        softirqs.CPU216.RCU
    127939 ± 17%     +26.2%     161490 ±  6%  softirqs.CPU216.TIMER
    135466           +16.1%     157209 ±  2%  softirqs.CPU217.RCU
    126617 ± 17%     +28.9%     163243 ±  6%  softirqs.CPU217.TIMER
    135361           +16.8%     158112        softirqs.CPU218.RCU
    123234 ± 16%     +33.8%     164848 ±  5%  softirqs.CPU218.TIMER
    135629           +16.4%     157826 ±  2%  softirqs.CPU219.RCU
    128453 ± 17%     +32.1%     169666 ±  2%  softirqs.CPU219.TIMER
    136444           +17.4%     160201 ±  2%  softirqs.CPU22.RCU
    134386           +17.5%     157935 ±  2%  softirqs.CPU220.RCU
    134256           +17.4%     157627 ±  2%  softirqs.CPU221.RCU
    134507 ± 13%     +24.9%     168014 ±  2%  softirqs.CPU221.TIMER
    134258           +14.8%     154092 ±  3%  softirqs.CPU222.RCU
    129387 ± 15%     +26.8%     164053 ±  4%  softirqs.CPU222.TIMER
    134871           +15.2%     155341        softirqs.CPU223.RCU
    132127 ± 14%     +28.9%     170302        softirqs.CPU223.TIMER
    133327           +15.3%     153671 ±  2%  softirqs.CPU224.RCU
    138260 ± 10%     +22.9%     169936        softirqs.CPU224.TIMER
    133735           +17.1%     156650 ±  2%  softirqs.CPU225.RCU
    138505 ± 13%     +19.0%     164777 ±  4%  softirqs.CPU225.TIMER
    134084           +16.7%     156487 ±  2%  softirqs.CPU226.RCU
    135468           +17.0%     158545        softirqs.CPU227.RCU
    135038           +16.9%     157859 ±  2%  softirqs.CPU228.RCU
    133805 ± 15%     +24.9%     167102 ±  3%  softirqs.CPU228.TIMER
    136331           +16.5%     158758 ±  2%  softirqs.CPU229.RCU
    136425           +15.4%     157392 ±  3%  softirqs.CPU23.RCU
    135465           +16.5%     157822        softirqs.CPU230.RCU
    125011 ± 17%     +30.4%     162957 ±  6%  softirqs.CPU230.TIMER
    136872           +16.1%     158870        softirqs.CPU231.RCU
    126641 ± 16%     +28.6%     162807 ±  6%  softirqs.CPU231.TIMER
    134721 ±  2%     +14.1%     153726 ±  3%  softirqs.CPU232.RCU
    128484 ± 17%     +30.7%     167989 ±  3%  softirqs.CPU232.TIMER
    134926 ±  2%     +13.9%     153702 ±  2%  softirqs.CPU233.RCU
    131153 ± 15%     +29.9%     170303 ±  2%  softirqs.CPU233.TIMER
    135031           +16.9%     157914        softirqs.CPU234.RCU
    127507 ± 15%     +27.0%     161940 ±  7%  softirqs.CPU234.TIMER
    134846           +13.6%     153179        softirqs.CPU235.RCU
    130764 ± 13%     +28.8%     168412 ±  3%  softirqs.CPU235.TIMER
    136784           +15.8%     158440 ±  2%  softirqs.CPU236.RCU
    130322 ± 16%     +24.3%     162052 ±  6%  softirqs.CPU236.TIMER
    136928           +15.5%     158182 ±  2%  softirqs.CPU237.RCU
    132211 ± 15%     +25.8%     166384 ±  3%  softirqs.CPU237.TIMER
    136159           +16.1%     158147        softirqs.CPU238.RCU
    134970           +16.5%     157263 ±  2%  softirqs.CPU239.RCU
    136224           +17.1%     159551 ±  2%  softirqs.CPU24.RCU
    136102           +16.5%     158555 ±  3%  softirqs.CPU240.RCU
    136857           +16.8%     159808        softirqs.CPU241.RCU
    134772           +15.8%     156043 ±  3%  softirqs.CPU242.RCU
    136618 ± 13%     +20.2%     164269 ±  4%  softirqs.CPU242.TIMER
    133417           +17.0%     156099        softirqs.CPU243.RCU
    137097 ±  2%     +14.2%     156546 ±  2%  softirqs.CPU244.RCU
    135943           +14.0%     154955 ±  3%  softirqs.CPU245.RCU
    128818 ± 14%     +28.5%     165496 ±  4%  softirqs.CPU245.TIMER
    133326           +15.1%     153409 ±  2%  softirqs.CPU246.RCU
    136651 ± 12%     +24.1%     169589 ±  2%  softirqs.CPU246.TIMER
    132974 ±  2%     +14.8%     152708 ±  4%  softirqs.CPU247.RCU
    134423 ± 13%     +24.4%     167218 ±  3%  softirqs.CPU247.TIMER
    135542           +15.6%     156739 ±  2%  softirqs.CPU248.RCU
    136116 ± 12%     +19.4%     162565 ±  5%  softirqs.CPU248.TIMER
    134289 ±  2%     +16.1%     155932 ±  2%  softirqs.CPU249.RCU
    129577 ± 14%     +24.9%     161796 ±  6%  softirqs.CPU249.TIMER
    136436           +16.4%     158828 ±  2%  softirqs.CPU25.RCU
    136072 ±  2%     +15.6%     157307 ±  2%  softirqs.CPU250.RCU
    136091           +16.3%     158314 ±  2%  softirqs.CPU251.RCU
    134192 ±  2%     +14.7%     153939 ±  2%  softirqs.CPU252.RCU
    138790 ± 11%     +22.5%     170006        softirqs.CPU252.TIMER
    134765 ±  2%     +14.6%     154418 ±  3%  softirqs.CPU253.RCU
    138142 ± 12%     +20.6%     166657 ±  3%  softirqs.CPU253.TIMER
    134656           +15.3%     155269 ±  2%  softirqs.CPU254.RCU
    130121 ± 14%     +29.0%     167793 ±  3%  softirqs.CPU254.TIMER
    132564 ±  2%     +16.7%     154653 ±  2%  softirqs.CPU255.RCU
    129547 ± 14%     +28.0%     165844 ±  3%  softirqs.CPU255.TIMER
    134116           +16.7%     156468 ±  2%  softirqs.CPU256.RCU
    133251           +16.2%     154903        softirqs.CPU257.RCU
    131146 ± 13%     +27.4%     167140 ±  3%  softirqs.CPU257.TIMER
    134222           +14.7%     153907 ±  2%  softirqs.CPU258.RCU
    129530 ± 15%     +28.9%     166935 ±  3%  softirqs.CPU258.TIMER
    134196 ±  2%     +14.8%     154025 ±  2%  softirqs.CPU259.RCU
    131710 ± 15%     +28.4%     169160 ±  2%  softirqs.CPU259.TIMER
    136342           +16.3%     158630 ±  2%  softirqs.CPU26.RCU
    135829 ±  2%     +16.3%     157924        softirqs.CPU260.RCU
    130603 ± 14%     +23.0%     160651 ±  6%  softirqs.CPU260.TIMER
    135476           +16.6%     157943        softirqs.CPU261.RCU
    132915 ± 14%     +22.0%     162120 ±  4%  softirqs.CPU261.TIMER
    135349           +16.3%     157397        softirqs.CPU262.RCU
    123981 ± 15%     +32.1%     163805 ±  5%  softirqs.CPU262.TIMER
    135012           +16.0%     156621 ±  2%  softirqs.CPU263.RCU
    128218 ± 14%     +28.0%     164167 ±  4%  softirqs.CPU263.TIMER
    135655           +15.7%     156928        softirqs.CPU264.RCU
    134460           +17.4%     157832        softirqs.CPU265.RCU
    132478           +18.3%     156699        softirqs.CPU266.RCU
    135330           +17.6%     159124        softirqs.CPU267.RCU
    133468           +17.8%     157275 ±  2%  softirqs.CPU268.RCU
    133616           +17.9%     157492        softirqs.CPU269.RCU
    136118           +16.5%     158550 ±  2%  softirqs.CPU27.RCU
    135526 ±  3%     +15.7%     156745 ±  2%  softirqs.CPU270.RCU
    133527           +17.7%     157157        softirqs.CPU271.RCU
    133481           +17.9%     157379 ±  2%  softirqs.CPU272.RCU
    133798           +16.5%     155820        softirqs.CPU273.RCU
    133916           +17.0%     156619        softirqs.CPU274.RCU
    117232 ± 12%     +19.4%     140000 ±  8%  softirqs.CPU274.TIMER
    133694           +17.4%     156961        softirqs.CPU275.RCU
    134963           +17.3%     158375        softirqs.CPU276.RCU
    133845           +16.5%     155972        softirqs.CPU277.RCU
    134900           +17.7%     158813        softirqs.CPU278.RCU
    132688 ±  2%     +18.0%     156596        softirqs.CPU279.RCU
    138839 ±  3%     +14.5%     158925 ±  2%  softirqs.CPU28.RCU
    133058           +17.4%     156222 ±  2%  softirqs.CPU280.RCU
    133371           +17.1%     156160        softirqs.CPU281.RCU
    117712 ± 12%     +25.2%     147392 ±  7%  softirqs.CPU281.TIMER
    133917 ±  2%     +17.6%     157463        softirqs.CPU282.RCU
    132643           +18.5%     157180        softirqs.CPU283.RCU
    135339           +16.7%     157966        softirqs.CPU284.RCU
    137306 ±  5%     +13.8%     156270 ±  2%  softirqs.CPU285.RCU
    133565           +18.5%     158324        softirqs.CPU286.RCU
    118008 ±  3%     -37.6%      73633 ± 27%  softirqs.CPU287.RCU
    135762 ±  2%     +16.2%     157819 ±  3%  softirqs.CPU29.RCU
    121461 ± 11%     +18.6%     144001 ± 11%  softirqs.CPU29.TIMER
    136130           +18.5%     161313 ±  3%  softirqs.CPU3.RCU
    136517           +15.4%     157570 ±  3%  softirqs.CPU30.RCU
    135672 ±  2%     +16.3%     157790 ±  3%  softirqs.CPU31.RCU
    136093 ±  2%     +16.5%     158493 ±  2%  softirqs.CPU32.RCU
    135819           +16.3%     157981 ±  2%  softirqs.CPU33.RCU
    136045           +16.6%     158651 ±  2%  softirqs.CPU34.RCU
    136036           +16.1%     157991 ±  3%  softirqs.CPU35.RCU
    136367           +15.9%     158029 ±  2%  softirqs.CPU36.RCU
    136415           +16.0%     158267 ±  2%  softirqs.CPU37.RCU
    135495           +16.9%     158383 ±  2%  softirqs.CPU38.RCU
    133862 ±  2%     +18.4%     158462 ±  2%  softirqs.CPU39.RCU
    139891 ±  2%     +14.8%     160621 ±  3%  softirqs.CPU4.RCU
    137907 ±  3%     +14.1%     157330 ±  2%  softirqs.CPU40.RCU
    126886 ± 14%     +32.9%     168585 ±  2%  softirqs.CPU40.TIMER
    134862           +17.4%     158289 ±  2%  softirqs.CPU41.RCU
    136127           +15.7%     157538 ±  2%  softirqs.CPU42.RCU
    137264           +15.1%     158010 ±  2%  softirqs.CPU43.RCU
    135564 ±  2%     +16.1%     157411 ±  2%  softirqs.CPU44.RCU
    137153           +16.0%     159128        softirqs.CPU45.RCU
    135429           +20.0%     162513 ±  3%  softirqs.CPU46.RCU
    137255           +16.7%     160158        softirqs.CPU47.RCU
    141517 ±  6%     +14.6%     162184 ±  3%  softirqs.CPU48.RCU
    135456           +18.3%     160229 ±  4%  softirqs.CPU49.RCU
    136394           +16.9%     159418 ±  3%  softirqs.CPU5.RCU
    135717           +16.9%     158683 ±  2%  softirqs.CPU50.RCU
    136054           +14.9%     156285 ±  2%  softirqs.CPU51.RCU
    140056 ±  4%     +13.5%     159015        softirqs.CPU52.RCU
    135150           +16.9%     157937 ±  2%  softirqs.CPU53.RCU
    121644 ± 14%     +27.7%     155339 ±  9%  softirqs.CPU53.TIMER
    137354 ±  3%     +17.2%     160971        softirqs.CPU54.RCU
    137624 ±  2%     +14.1%     157046 ±  2%  softirqs.CPU55.RCU
    127234 ± 13%     +23.9%     157671 ±  8%  softirqs.CPU55.TIMER
    137565 ±  2%     +16.5%     160319        softirqs.CPU56.RCU
    135005           +16.5%     157295        softirqs.CPU57.RCU
    137088           +17.0%     160329        softirqs.CPU58.RCU
    135693           +15.3%     156411 ±  2%  softirqs.CPU59.RCU
    137401 ±  2%     +15.5%     158681 ±  2%  softirqs.CPU6.RCU
    137779 ±  4%     +15.2%     158669 ±  2%  softirqs.CPU60.RCU
    139142 ±  4%     +13.1%     157315 ±  2%  softirqs.CPU61.RCU
    123269 ± 11%     +26.0%     155280 ±  9%  softirqs.CPU61.TIMER
    135199           +17.5%     158886 ±  2%  softirqs.CPU62.RCU
    135140           +16.9%     158003 ±  2%  softirqs.CPU63.RCU
    134345           +18.1%     158697 ±  2%  softirqs.CPU64.RCU
    115622 ± 12%     +36.6%     157953 ±  7%  softirqs.CPU64.TIMER
    134620           +17.9%     158739 ±  2%  softirqs.CPU65.RCU
    134549           +18.2%     158987 ±  2%  softirqs.CPU66.RCU
    135446           +16.5%     157838 ±  3%  softirqs.CPU67.RCU
    135023           +17.2%     158266 ±  2%  softirqs.CPU68.RCU
    136314           +17.5%     160203 ±  2%  softirqs.CPU69.RCU
    135652           +15.5%     156704 ±  4%  softirqs.CPU7.RCU
    134925           +15.9%     156424 ±  2%  softirqs.CPU70.RCU
    117081 ± 11%     +30.0%     152210 ± 10%  softirqs.CPU70.TIMER
    136671           +16.4%     159085        softirqs.CPU71.RCU
    137570 ±  4%     +14.0%     156848 ±  2%  softirqs.CPU72.RCU
    136097 ±  3%     +13.4%     154393 ±  3%  softirqs.CPU73.RCU
    127851 ± 14%     +29.2%     165181 ±  4%  softirqs.CPU73.TIMER
    138146           +16.3%     160673        softirqs.CPU74.RCU
    138008           +15.0%     158727 ±  2%  softirqs.CPU75.RCU
    134606           +14.6%     154312 ±  2%  softirqs.CPU76.RCU
    134161 ± 14%     +24.9%     167598 ±  3%  softirqs.CPU76.TIMER
    134901           +14.9%     155021 ±  2%  softirqs.CPU77.RCU
    138735 ± 11%     +23.1%     170750 ±  2%  softirqs.CPU77.TIMER
    136452           +16.1%     158483 ±  3%  softirqs.CPU78.RCU
    135411           +16.4%     157584 ±  2%  softirqs.CPU79.RCU
    136963           +16.4%     159359 ±  3%  softirqs.CPU8.RCU
    135725           +16.1%     157543 ±  2%  softirqs.CPU80.RCU
    128336 ± 14%     +31.3%     168470 ±  4%  softirqs.CPU80.TIMER
    136315           +14.2%     155629 ±  2%  softirqs.CPU81.RCU
    126034 ± 16%     +29.1%     162698 ±  7%  softirqs.CPU81.TIMER
    135780           +15.9%     157365        softirqs.CPU82.RCU
    134289 ± 13%     +28.5%     172531 ±  2%  softirqs.CPU82.TIMER
    136519           +14.6%     156476 ±  2%  softirqs.CPU83.RCU
    130685 ± 15%     +29.2%     168852 ±  3%  softirqs.CPU83.TIMER
    137126           +16.7%     160052 ±  2%  softirqs.CPU84.RCU
    128777 ± 14%     +24.6%     160416 ±  7%  softirqs.CPU84.TIMER
    138181           +16.2%     160583 ±  2%  softirqs.CPU85.RCU
    130075 ± 14%     +24.1%     161442 ±  7%  softirqs.CPU85.TIMER
    136908           +15.3%     157806 ±  2%  softirqs.CPU86.RCU
    129723 ± 14%     +27.4%     165325 ±  5%  softirqs.CPU86.TIMER
    136955           +16.6%     159720 ±  2%  softirqs.CPU87.RCU
    125579 ± 17%     +32.2%     166036 ±  5%  softirqs.CPU87.TIMER
    136361 ±  2%     +15.7%     157758 ±  2%  softirqs.CPU88.RCU
    136618 ± 14%     +26.4%     172626 ±  2%  softirqs.CPU88.TIMER
    136285           +14.6%     156212 ±  4%  softirqs.CPU89.RCU
    124471 ± 16%     +36.1%     169366 ±  3%  softirqs.CPU89.TIMER
    136277           +17.1%     159573 ±  2%  softirqs.CPU9.RCU
    133641 ±  4%     +17.9%     157622        softirqs.CPU90.RCU
    133829 ± 14%     +27.8%     171070 ±  2%  softirqs.CPU90.TIMER
    136342           +15.7%     157686 ±  2%  softirqs.CPU91.RCU
    131999 ± 14%     +27.0%     167696 ±  3%  softirqs.CPU91.TIMER
    135498           +17.2%     158869 ±  2%  softirqs.CPU92.RCU
    132999 ± 14%     +24.9%     166101 ±  4%  softirqs.CPU92.TIMER
    137579           +15.0%     158270 ±  2%  softirqs.CPU93.RCU
    121635 ± 16%     +35.1%     164365 ±  5%  softirqs.CPU93.TIMER
    137168           +16.4%     159648 ±  2%  softirqs.CPU94.RCU
    127455 ± 14%     +26.8%     161617 ±  8%  softirqs.CPU94.TIMER
    137715           +15.9%     159637 ±  2%  softirqs.CPU95.RCU
    137684           +17.1%     161206        softirqs.CPU96.RCU
    127265 ± 15%     +28.4%     163372 ±  8%  softirqs.CPU96.TIMER
    138330           +14.7%     158682 ±  2%  softirqs.CPU97.RCU
    126906 ± 15%     +27.7%     162036 ±  7%  softirqs.CPU97.TIMER
    137783           +17.8%     162361 ±  4%  softirqs.CPU98.RCU
    138273 ±  2%     +14.7%     158552 ±  2%  softirqs.CPU99.RCU
    139442 ± 11%     +18.6%     165309 ±  4%  softirqs.CPU99.TIMER
  39026939           +16.2%   45344026 ±  2%  softirqs.RCU
    585776 ±  8%     +37.4%     804678        softirqs.SCHED
    309.50 ± 16%    +676.1%       2402 ±128%  interrupts.31:IR-PCI-MSI.2097154-edge.eth0-TxRx-1
    400773 ±  4%     -14.8%     341578        interrupts.CAL:Function_call_interrupts
    956.25 ± 29%     -36.5%     607.25        interrupts.CPU0.CAL:Function_call_interrupts
      5651 ± 32%     -22.0%       4407 ± 33%  interrupts.CPU0.NMI:Non-maskable_interrupts
      5651 ± 32%     -22.0%       4407 ± 33%  interrupts.CPU0.PMI:Performance_monitoring_interrupts
      1393 ±  4%     -14.4%       1192        interrupts.CPU1.CAL:Function_call_interrupts
      1391 ±  4%     -14.6%       1189        interrupts.CPU10.CAL:Function_call_interrupts
      1250 ± 76%     -63.6%     455.50 ± 56%  interrupts.CPU10.RES:Rescheduling_interrupts
      1387 ±  4%     -14.5%       1186        interrupts.CPU100.CAL:Function_call_interrupts
      1387 ±  4%     -14.5%       1186        interrupts.CPU101.CAL:Function_call_interrupts
      1389 ±  4%     -14.6%       1186        interrupts.CPU102.CAL:Function_call_interrupts
    625510           -33.7%     414949 ± 28%  interrupts.CPU102.LOC:Local_timer_interrupts
      4570 ± 34%     -28.0%       3290        interrupts.CPU102.NMI:Non-maskable_interrupts
      4570 ± 34%     -28.0%       3290        interrupts.CPU102.PMI:Performance_monitoring_interrupts
     49.00 ± 48%    +102.6%      99.25 ± 25%  interrupts.CPU102.RES:Rescheduling_interrupts
      1388 ±  4%     -14.5%       1186        interrupts.CPU103.CAL:Function_call_interrupts
    626381           -36.3%     399047 ± 27%  interrupts.CPU103.LOC:Local_timer_interrupts
      3659           -10.6%       3272        interrupts.CPU103.NMI:Non-maskable_interrupts
      3659           -10.6%       3272        interrupts.CPU103.PMI:Performance_monitoring_interrupts
      1388 ±  4%     -14.5%       1187        interrupts.CPU104.CAL:Function_call_interrupts
    626082           -36.2%     399517 ± 16%  interrupts.CPU104.LOC:Local_timer_interrupts
      5418 ± 33%     -23.7%       4136 ± 33%  interrupts.CPU104.NMI:Non-maskable_interrupts
      5418 ± 33%     -23.7%       4136 ± 33%  interrupts.CPU104.PMI:Performance_monitoring_interrupts
    582.25 ±130%     -88.3%      68.25 ± 19%  interrupts.CPU104.RES:Rescheduling_interrupts
      1388 ±  4%     -14.5%       1186        interrupts.CPU105.CAL:Function_call_interrupts
    625997           -32.3%     423589 ± 17%  interrupts.CPU105.LOC:Local_timer_interrupts
      5447 ± 33%     -24.0%       4139 ± 33%  interrupts.CPU105.NMI:Non-maskable_interrupts
      5447 ± 33%     -24.0%       4139 ± 33%  interrupts.CPU105.PMI:Performance_monitoring_interrupts
      1388 ±  4%     -24.8%       1043 ± 23%  interrupts.CPU106.CAL:Function_call_interrupts
    626513           -36.2%     399917 ± 23%  interrupts.CPU106.LOC:Local_timer_interrupts
      5440 ± 33%     -39.0%       3320        interrupts.CPU106.NMI:Non-maskable_interrupts
      5440 ± 33%     -39.0%       3320        interrupts.CPU106.PMI:Performance_monitoring_interrupts
      1389 ±  4%     -14.6%       1187        interrupts.CPU107.CAL:Function_call_interrupts
    626383           -32.3%     423818 ± 24%  interrupts.CPU107.LOC:Local_timer_interrupts
      6362 ± 24%     -34.7%       4153 ± 33%  interrupts.CPU107.NMI:Non-maskable_interrupts
      6362 ± 24%     -34.7%       4153 ± 33%  interrupts.CPU107.PMI:Performance_monitoring_interrupts
      1389 ±  4%     -14.5%       1187        interrupts.CPU108.CAL:Function_call_interrupts
    625471           -43.6%     353037 ±  9%  interrupts.CPU108.LOC:Local_timer_interrupts
      5414 ± 32%     -26.6%       3973 ± 32%  interrupts.CPU108.NMI:Non-maskable_interrupts
      5414 ± 32%     -26.6%       3973 ± 32%  interrupts.CPU108.PMI:Performance_monitoring_interrupts
      1389 ±  4%     -14.5%       1187        interrupts.CPU109.CAL:Function_call_interrupts
    626077           -26.1%     462414 ± 21%  interrupts.CPU109.LOC:Local_timer_interrupts
    309.50 ± 16%    +676.1%       2402 ±128%  interrupts.CPU11.31:IR-PCI-MSI.2097154-edge.eth0-TxRx-1
      1392 ±  4%     -14.6%       1189        interrupts.CPU11.CAL:Function_call_interrupts
      1388 ±  4%     -14.5%       1187        interrupts.CPU110.CAL:Function_call_interrupts
    626218           -41.5%     366233 ± 16%  interrupts.CPU110.LOC:Local_timer_interrupts
      1389 ±  4%     -14.5%       1187        interrupts.CPU111.CAL:Function_call_interrupts
    626244           -37.2%     393169 ± 16%  interrupts.CPU111.LOC:Local_timer_interrupts
      1388 ±  4%     -14.5%       1187        interrupts.CPU112.CAL:Function_call_interrupts
    626280           -32.8%     421029 ± 26%  interrupts.CPU112.LOC:Local_timer_interrupts
      6348 ± 24%     -35.0%       4123 ± 33%  interrupts.CPU112.NMI:Non-maskable_interrupts
      6348 ± 24%     -35.0%       4123 ± 33%  interrupts.CPU112.PMI:Performance_monitoring_interrupts
      1390 ±  5%     -14.6%       1187        interrupts.CPU113.CAL:Function_call_interrupts
    626445           -38.9%     383002 ± 22%  interrupts.CPU113.LOC:Local_timer_interrupts
      5446 ± 33%     -41.4%       3193 ±  2%  interrupts.CPU113.NMI:Non-maskable_interrupts
      5446 ± 33%     -41.4%       3193 ±  2%  interrupts.CPU113.PMI:Performance_monitoring_interrupts
      1389 ±  4%     -14.6%       1187        interrupts.CPU114.CAL:Function_call_interrupts
      5529 ± 33%     -23.8%       4212 ± 34%  interrupts.CPU114.NMI:Non-maskable_interrupts
      5529 ± 33%     -23.8%       4212 ± 34%  interrupts.CPU114.PMI:Performance_monitoring_interrupts
      1387 ±  4%     -14.4%       1187        interrupts.CPU115.CAL:Function_call_interrupts
      6491 ± 25%     -50.1%       3237 ±  6%  interrupts.CPU115.NMI:Non-maskable_interrupts
      6491 ± 25%     -50.1%       3237 ±  6%  interrupts.CPU115.PMI:Performance_monitoring_interrupts
      1387 ±  4%     -14.4%       1187        interrupts.CPU116.CAL:Function_call_interrupts
    626282           -35.1%     406165 ± 19%  interrupts.CPU116.LOC:Local_timer_interrupts
      1390 ±  4%     -14.6%       1187        interrupts.CPU117.CAL:Function_call_interrupts
    626266           -37.6%     390945 ± 20%  interrupts.CPU117.LOC:Local_timer_interrupts
      1389 ±  4%     -14.3%       1190        interrupts.CPU118.CAL:Function_call_interrupts
      1389 ±  4%     -14.6%       1187        interrupts.CPU119.CAL:Function_call_interrupts
      1393 ±  4%     -14.6%       1189        interrupts.CPU12.CAL:Function_call_interrupts
      5665 ± 33%     -21.7%       4433 ± 34%  interrupts.CPU12.NMI:Non-maskable_interrupts
      5665 ± 33%     -21.7%       4433 ± 34%  interrupts.CPU12.PMI:Performance_monitoring_interrupts
      1389 ±  4%     -14.5%       1187        interrupts.CPU120.CAL:Function_call_interrupts
    626172           -35.5%     403682 ± 11%  interrupts.CPU120.LOC:Local_timer_interrupts
      1388 ±  5%     -14.5%       1187        interrupts.CPU121.CAL:Function_call_interrupts
    625597           -44.3%     348336 ±  8%  interrupts.CPU121.LOC:Local_timer_interrupts
      1389 ±  4%     -14.5%       1188        interrupts.CPU122.CAL:Function_call_interrupts
    626247           -33.1%     419247 ± 25%  interrupts.CPU122.LOC:Local_timer_interrupts
      1389 ±  4%     -14.6%       1187        interrupts.CPU123.CAL:Function_call_interrupts
    626315           -41.1%     369075 ± 17%  interrupts.CPU123.LOC:Local_timer_interrupts
      6344 ± 24%     -49.3%       3217        interrupts.CPU123.NMI:Non-maskable_interrupts
      6344 ± 24%     -49.3%       3217        interrupts.CPU123.PMI:Performance_monitoring_interrupts
      1391 ±  4%     -14.7%       1187        interrupts.CPU124.CAL:Function_call_interrupts
      1389 ±  4%     -14.5%       1188        interrupts.CPU125.CAL:Function_call_interrupts
      1387 ±  4%     -14.4%       1187        interrupts.CPU127.CAL:Function_call_interrupts
      6359 ± 25%     -34.4%       4172 ± 34%  interrupts.CPU127.NMI:Non-maskable_interrupts
      6359 ± 25%     -34.4%       4172 ± 34%  interrupts.CPU127.PMI:Performance_monitoring_interrupts
      1390 ±  4%     -14.5%       1188        interrupts.CPU128.CAL:Function_call_interrupts
    626232           -41.4%     366829 ± 13%  interrupts.CPU128.LOC:Local_timer_interrupts
      1389 ±  4%     -14.5%       1188        interrupts.CPU129.CAL:Function_call_interrupts
    626275           -37.8%     389452 ± 15%  interrupts.CPU129.LOC:Local_timer_interrupts
      5421 ± 33%     -23.4%       4153 ± 35%  interrupts.CPU129.NMI:Non-maskable_interrupts
      5421 ± 33%     -23.4%       4153 ± 35%  interrupts.CPU129.PMI:Performance_monitoring_interrupts
      1391 ±  4%     -14.5%       1190        interrupts.CPU13.CAL:Function_call_interrupts
      5644 ± 33%     -20.8%       4470 ± 35%  interrupts.CPU13.NMI:Non-maskable_interrupts
      5644 ± 33%     -20.8%       4470 ± 35%  interrupts.CPU13.PMI:Performance_monitoring_interrupts
      1388 ±  4%     -14.4%       1188        interrupts.CPU130.CAL:Function_call_interrupts
    626230           -31.7%     427973 ± 24%  interrupts.CPU130.LOC:Local_timer_interrupts
     34.00 ± 29%    +239.7%     115.50 ± 33%  interrupts.CPU130.RES:Rescheduling_interrupts
      1388 ±  4%     -14.4%       1187        interrupts.CPU131.CAL:Function_call_interrupts
    626315           -31.8%     427416 ± 25%  interrupts.CPU131.LOC:Local_timer_interrupts
      1387 ±  4%     -14.4%       1187        interrupts.CPU132.CAL:Function_call_interrupts
    625496           -43.6%     352695 ± 10%  interrupts.CPU132.LOC:Local_timer_interrupts
      1385 ±  4%     -14.3%       1187        interrupts.CPU133.CAL:Function_call_interrupts
    626314           -40.3%     373915 ±  9%  interrupts.CPU133.LOC:Local_timer_interrupts
      1389 ±  4%     -14.5%       1187        interrupts.CPU134.CAL:Function_call_interrupts
    626243           -38.3%     386083 ± 17%  interrupts.CPU134.LOC:Local_timer_interrupts
      5510 ± 33%     -26.6%       4045 ± 34%  interrupts.CPU134.NMI:Non-maskable_interrupts
      5510 ± 33%     -26.6%       4045 ± 34%  interrupts.CPU134.PMI:Performance_monitoring_interrupts
      1389 ±  4%     -14.6%       1187        interrupts.CPU135.CAL:Function_call_interrupts
    626330           -24.0%     476296 ± 18%  interrupts.CPU135.LOC:Local_timer_interrupts
      1389 ±  4%     -14.5%       1188        interrupts.CPU136.CAL:Function_call_interrupts
    625268           -43.6%     352820 ±  7%  interrupts.CPU136.LOC:Local_timer_interrupts
      5565 ± 33%     -30.6%       3862 ± 30%  interrupts.CPU136.NMI:Non-maskable_interrupts
      5565 ± 33%     -30.6%       3862 ± 30%  interrupts.CPU136.PMI:Performance_monitoring_interrupts
      1387 ±  4%     -14.4%       1187        interrupts.CPU137.CAL:Function_call_interrupts
      3689            -9.0%       3357        interrupts.CPU137.NMI:Non-maskable_interrupts
      3689            -9.0%       3357        interrupts.CPU137.PMI:Performance_monitoring_interrupts
     16.25 ± 42%    +269.2%      60.00 ± 79%  interrupts.CPU137.RES:Rescheduling_interrupts
      1383 ±  4%     -14.2%       1187        interrupts.CPU138.CAL:Function_call_interrupts
    625452           -32.3%     423598 ± 24%  interrupts.CPU138.LOC:Local_timer_interrupts
      3675           -10.4%       3293        interrupts.CPU138.NMI:Non-maskable_interrupts
      3675           -10.4%       3293        interrupts.CPU138.PMI:Performance_monitoring_interrupts
      1382 ±  4%     -14.1%       1187        interrupts.CPU139.CAL:Function_call_interrupts
    626086           -43.0%     357090 ± 11%  interrupts.CPU139.LOC:Local_timer_interrupts
      1391 ±  4%     -14.5%       1189        interrupts.CPU14.CAL:Function_call_interrupts
      1389 ±  4%     -14.6%       1187        interrupts.CPU140.CAL:Function_call_interrupts
      1390 ±  4%     -14.6%       1187        interrupts.CPU141.CAL:Function_call_interrupts
      5347 ± 33%     -36.9%       3373        interrupts.CPU141.NMI:Non-maskable_interrupts
      5347 ± 33%     -36.9%       3373        interrupts.CPU141.PMI:Performance_monitoring_interrupts
      1387 ±  4%     -14.3%       1188        interrupts.CPU142.CAL:Function_call_interrupts
    625813           -34.7%     408791 ± 22%  interrupts.CPU142.LOC:Local_timer_interrupts
      1386 ±  4%     -14.3%       1188        interrupts.CPU143.CAL:Function_call_interrupts
    626244           -41.9%     363876 ± 11%  interrupts.CPU143.LOC:Local_timer_interrupts
      1389 ±  4%     -14.5%       1187        interrupts.CPU144.CAL:Function_call_interrupts
    626512           -41.4%     367098 ± 11%  interrupts.CPU144.LOC:Local_timer_interrupts
      1391 ±  4%     -14.6%       1188        interrupts.CPU145.CAL:Function_call_interrupts
    626214           -32.4%     423255 ± 24%  interrupts.CPU145.LOC:Local_timer_interrupts
      1390 ±  4%     -14.6%       1188        interrupts.CPU146.CAL:Function_call_interrupts
    626107           -37.5%     391390 ± 13%  interrupts.CPU146.LOC:Local_timer_interrupts
      5388 ± 33%     -24.3%       4078 ± 35%  interrupts.CPU146.NMI:Non-maskable_interrupts
      5388 ± 33%     -24.3%       4078 ± 35%  interrupts.CPU146.PMI:Performance_monitoring_interrupts
      1398 ±  3%     -15.1%       1187        interrupts.CPU147.CAL:Function_call_interrupts
    626274           -32.5%     422994 ± 19%  interrupts.CPU147.LOC:Local_timer_interrupts
      5449 ± 33%     -39.2%       3313        interrupts.CPU147.NMI:Non-maskable_interrupts
      5449 ± 33%     -39.2%       3313        interrupts.CPU147.PMI:Performance_monitoring_interrupts
      1391 ±  4%     -14.6%       1187        interrupts.CPU148.CAL:Function_call_interrupts
    626256           -42.1%     362911 ± 14%  interrupts.CPU148.LOC:Local_timer_interrupts
      1391 ±  4%     -14.6%       1188        interrupts.CPU149.CAL:Function_call_interrupts
    626077           -41.2%     368377 ±  6%  interrupts.CPU149.LOC:Local_timer_interrupts
      3683           -11.6%       3254 ±  4%  interrupts.CPU149.NMI:Non-maskable_interrupts
      3683           -11.6%       3254 ±  4%  interrupts.CPU149.PMI:Performance_monitoring_interrupts
      1392 ±  4%     -14.6%       1189        interrupts.CPU15.CAL:Function_call_interrupts
      1391 ±  4%     -14.6%       1187        interrupts.CPU150.CAL:Function_call_interrupts
    626327           -43.3%     355179 ± 11%  interrupts.CPU150.LOC:Local_timer_interrupts
      1391 ±  4%     -14.6%       1188        interrupts.CPU151.CAL:Function_call_interrupts
    626205           -27.7%     452981 ± 23%  interrupts.CPU151.LOC:Local_timer_interrupts
     23.25 ± 67%    +338.7%     102.00 ± 89%  interrupts.CPU151.RES:Rescheduling_interrupts
      1391 ±  4%     -14.6%       1188        interrupts.CPU152.CAL:Function_call_interrupts
    626058           -32.7%     421336 ± 28%  interrupts.CPU152.LOC:Local_timer_interrupts
     18.50 ± 18%    +279.7%      70.25 ± 79%  interrupts.CPU152.RES:Rescheduling_interrupts
      1387 ±  4%     -14.4%       1188        interrupts.CPU153.CAL:Function_call_interrupts
    626116           -29.3%     442396 ± 23%  interrupts.CPU153.LOC:Local_timer_interrupts
      1392 ±  4%     -14.7%       1187        interrupts.CPU154.CAL:Function_call_interrupts
    626003           -42.6%     359610 ±  7%  interrupts.CPU154.LOC:Local_timer_interrupts
      1391 ±  4%     -14.6%       1188        interrupts.CPU155.CAL:Function_call_interrupts
    626214           -36.3%     398719 ± 16%  interrupts.CPU155.LOC:Local_timer_interrupts
      1390 ±  4%     -14.5%       1188        interrupts.CPU156.CAL:Function_call_interrupts
    626320           -44.4%     348144 ±  7%  interrupts.CPU156.LOC:Local_timer_interrupts
      1391 ±  4%     -14.6%       1187        interrupts.CPU157.CAL:Function_call_interrupts
    626830           -25.2%     469011 ± 21%  interrupts.CPU157.LOC:Local_timer_interrupts
      1392 ±  4%     -14.6%       1188        interrupts.CPU158.CAL:Function_call_interrupts
    625891           -43.6%     353089 ± 10%  interrupts.CPU158.LOC:Local_timer_interrupts
      1392 ±  4%     -14.7%       1188        interrupts.CPU159.CAL:Function_call_interrupts
    626439           -41.5%     366414 ±  7%  interrupts.CPU159.LOC:Local_timer_interrupts
      1389 ±  5%     -14.5%       1187        interrupts.CPU16.CAL:Function_call_interrupts
      1392 ±  4%     -14.7%       1187        interrupts.CPU160.CAL:Function_call_interrupts
    626471           -32.9%     420443 ± 24%  interrupts.CPU160.LOC:Local_timer_interrupts
      1391 ±  4%     -14.7%       1187        interrupts.CPU161.CAL:Function_call_interrupts
    626412           -43.4%     354657 ± 10%  interrupts.CPU161.LOC:Local_timer_interrupts
      1392 ±  4%     -14.7%       1187        interrupts.CPU162.CAL:Function_call_interrupts
    626281           -36.8%     395674 ± 10%  interrupts.CPU162.LOC:Local_timer_interrupts
      1392 ±  4%     -14.7%       1187        interrupts.CPU163.CAL:Function_call_interrupts
    626172           -43.4%     354152 ± 10%  interrupts.CPU163.LOC:Local_timer_interrupts
    626617           -30.3%     436801 ± 25%  interrupts.CPU164.LOC:Local_timer_interrupts
      1393 ±  4%     -14.8%       1187        interrupts.CPU165.CAL:Function_call_interrupts
    626511           -34.1%     412650 ± 26%  interrupts.CPU165.LOC:Local_timer_interrupts
      1390 ±  4%     -14.5%       1189        interrupts.CPU166.CAL:Function_call_interrupts
      1392 ±  4%     -14.8%       1187        interrupts.CPU167.CAL:Function_call_interrupts
      5408 ± 33%     -22.1%       4211 ± 33%  interrupts.CPU167.NMI:Non-maskable_interrupts
      5408 ± 33%     -22.1%       4211 ± 33%  interrupts.CPU167.PMI:Performance_monitoring_interrupts
      1392 ±  4%     -14.8%       1187        interrupts.CPU168.CAL:Function_call_interrupts
    625522           -29.5%     441026 ± 22%  interrupts.CPU168.LOC:Local_timer_interrupts
      5467 ± 32%     -23.5%       4182 ± 35%  interrupts.CPU168.NMI:Non-maskable_interrupts
      5467 ± 32%     -23.5%       4182 ± 35%  interrupts.CPU168.PMI:Performance_monitoring_interrupts
      1393 ±  4%     -14.8%       1187        interrupts.CPU169.CAL:Function_call_interrupts
    626238           -36.6%     396971 ± 16%  interrupts.CPU169.LOC:Local_timer_interrupts
      1387 ±  5%     -14.4%       1188        interrupts.CPU17.CAL:Function_call_interrupts
      5668 ± 33%     -35.5%       3655        interrupts.CPU17.NMI:Non-maskable_interrupts
      5668 ± 33%     -35.5%       3655        interrupts.CPU17.PMI:Performance_monitoring_interrupts
      1390 ±  4%     -14.4%       1189        interrupts.CPU170.CAL:Function_call_interrupts
    626211           -33.9%     414185 ± 20%  interrupts.CPU170.LOC:Local_timer_interrupts
      1387 ±  4%     -14.5%       1187        interrupts.CPU171.CAL:Function_call_interrupts
    626212           -38.8%     383154 ± 15%  interrupts.CPU171.LOC:Local_timer_interrupts
      1390 ±  4%     -14.6%       1187        interrupts.CPU172.CAL:Function_call_interrupts
    626232           -39.3%     379988 ±  8%  interrupts.CPU172.LOC:Local_timer_interrupts
      1393 ±  4%     -14.7%       1187        interrupts.CPU173.CAL:Function_call_interrupts
    626682           -42.7%     359247 ± 10%  interrupts.CPU173.LOC:Local_timer_interrupts
      4609 ± 35%     -30.3%       3210        interrupts.CPU173.NMI:Non-maskable_interrupts
      4609 ± 35%     -30.3%       3210        interrupts.CPU173.PMI:Performance_monitoring_interrupts
      1392 ±  4%     -14.4%       1192        interrupts.CPU174.CAL:Function_call_interrupts
    624983           -38.8%     382288 ± 12%  interrupts.CPU174.LOC:Local_timer_interrupts
      1393 ±  4%     -14.8%       1187        interrupts.CPU175.CAL:Function_call_interrupts
    626347           -43.4%     354602 ± 10%  interrupts.CPU175.LOC:Local_timer_interrupts
      1390 ±  5%     -14.6%       1187        interrupts.CPU176.CAL:Function_call_interrupts
    626075           -44.5%     347497 ±  6%  interrupts.CPU176.LOC:Local_timer_interrupts
      4602 ± 35%     -31.9%       3136 ±  4%  interrupts.CPU176.NMI:Non-maskable_interrupts
      4602 ± 35%     -31.9%       3136 ±  4%  interrupts.CPU176.PMI:Performance_monitoring_interrupts
      1393 ±  4%     -14.7%       1188        interrupts.CPU177.CAL:Function_call_interrupts
    625189           -40.2%     373605 ±  9%  interrupts.CPU177.LOC:Local_timer_interrupts
      5503 ± 33%     -26.3%       4054 ± 31%  interrupts.CPU177.NMI:Non-maskable_interrupts
      5503 ± 33%     -26.3%       4054 ± 31%  interrupts.CPU177.PMI:Performance_monitoring_interrupts
      1393 ±  4%     -14.8%       1187        interrupts.CPU178.CAL:Function_call_interrupts
      1393 ±  4%     -14.8%       1187        interrupts.CPU179.CAL:Function_call_interrupts
    626004           -23.9%     476264 ± 21%  interrupts.CPU179.LOC:Local_timer_interrupts
      3722            -9.5%       3370        interrupts.CPU179.NMI:Non-maskable_interrupts
      3722            -9.5%       3370        interrupts.CPU179.PMI:Performance_monitoring_interrupts
      1391 ±  4%     -14.5%       1189        interrupts.CPU18.CAL:Function_call_interrupts
    496.50 ± 40%     -46.6%     265.00 ± 29%  interrupts.CPU18.RES:Rescheduling_interrupts
      1392 ±  4%     -14.7%       1187        interrupts.CPU180.CAL:Function_call_interrupts
    625723           -36.4%     397718 ± 21%  interrupts.CPU180.LOC:Local_timer_interrupts
      1393 ±  4%     -14.8%       1187        interrupts.CPU181.CAL:Function_call_interrupts
      6367 ± 25%     -46.9%       3379        interrupts.CPU181.NMI:Non-maskable_interrupts
      6367 ± 25%     -46.9%       3379        interrupts.CPU181.PMI:Performance_monitoring_interrupts
      1393 ±  4%     -14.8%       1187        interrupts.CPU182.CAL:Function_call_interrupts
      5522 ± 32%     -23.5%       4224 ± 34%  interrupts.CPU182.NMI:Non-maskable_interrupts
      5522 ± 32%     -23.5%       4224 ± 34%  interrupts.CPU182.PMI:Performance_monitoring_interrupts
      1394 ±  4%     -14.8%       1188        interrupts.CPU183.CAL:Function_call_interrupts
      5578 ± 33%     -39.5%       3377        interrupts.CPU183.NMI:Non-maskable_interrupts
      5578 ± 33%     -39.5%       3377        interrupts.CPU183.PMI:Performance_monitoring_interrupts
      1393 ±  4%     -14.7%       1188        interrupts.CPU184.CAL:Function_call_interrupts
      1393 ±  4%     -14.7%       1188        interrupts.CPU185.CAL:Function_call_interrupts
      1393 ±  4%     -14.7%       1188        interrupts.CPU186.CAL:Function_call_interrupts
    625833           -36.4%     398159 ± 26%  interrupts.CPU186.LOC:Local_timer_interrupts
     21.50 ±  6%    +408.1%     109.25 ± 94%  interrupts.CPU186.RES:Rescheduling_interrupts
      1393 ±  4%     -14.8%       1187        interrupts.CPU187.CAL:Function_call_interrupts
    626133           -32.4%     423112 ± 22%  interrupts.CPU187.LOC:Local_timer_interrupts
      1393 ±  4%     -14.7%       1188        interrupts.CPU188.CAL:Function_call_interrupts
    626244           -39.3%     380057 ± 10%  interrupts.CPU188.LOC:Local_timer_interrupts
      1393 ±  4%     -14.8%       1187        interrupts.CPU189.CAL:Function_call_interrupts
    626320           -28.8%     445867 ± 18%  interrupts.CPU189.LOC:Local_timer_interrupts
      5550 ± 33%     -40.8%       3288        interrupts.CPU189.NMI:Non-maskable_interrupts
      5550 ± 33%     -40.8%       3288        interrupts.CPU189.PMI:Performance_monitoring_interrupts
      1392 ±  4%     -14.5%       1190        interrupts.CPU19.CAL:Function_call_interrupts
      5683 ± 33%     -19.6%       4569 ± 35%  interrupts.CPU19.NMI:Non-maskable_interrupts
      5683 ± 33%     -19.6%       4569 ± 35%  interrupts.CPU19.PMI:Performance_monitoring_interrupts
      1393 ±  4%     -14.8%       1187        interrupts.CPU190.CAL:Function_call_interrupts
    625375           -36.0%     400222 ± 24%  interrupts.CPU190.LOC:Local_timer_interrupts
      6322 ± 25%     -35.6%       4069 ± 34%  interrupts.CPU190.NMI:Non-maskable_interrupts
      6322 ± 25%     -35.6%       4069 ± 34%  interrupts.CPU190.PMI:Performance_monitoring_interrupts
      1392 ±  4%     -14.8%       1187        interrupts.CPU191.CAL:Function_call_interrupts
      1389 ±  5%     -14.5%       1187        interrupts.CPU192.CAL:Function_call_interrupts
    626193           -33.9%     414105 ± 22%  interrupts.CPU192.LOC:Local_timer_interrupts
     69.00 ± 58%    +185.1%     196.75 ± 77%  interrupts.CPU192.RES:Rescheduling_interrupts
      1390 ±  4%     -14.6%       1187        interrupts.CPU193.CAL:Function_call_interrupts
    626463           -39.6%     378686 ± 14%  interrupts.CPU193.LOC:Local_timer_interrupts
      1393 ±  4%     -14.7%       1188        interrupts.CPU194.CAL:Function_call_interrupts
    626205           -26.8%     458694 ± 22%  interrupts.CPU194.LOC:Local_timer_interrupts
      1393 ±  4%     -14.8%       1187        interrupts.CPU195.CAL:Function_call_interrupts
    626559           -31.2%     431084 ± 24%  interrupts.CPU195.LOC:Local_timer_interrupts
      5433 ± 33%     -22.5%       4213 ± 34%  interrupts.CPU195.NMI:Non-maskable_interrupts
      5433 ± 33%     -22.5%       4213 ± 34%  interrupts.CPU195.PMI:Performance_monitoring_interrupts
      1394 ±  4%     -14.8%       1187        interrupts.CPU196.CAL:Function_call_interrupts
    626261           -43.1%     356508 ±  6%  interrupts.CPU196.LOC:Local_timer_interrupts
      1393 ±  4%     -14.8%       1187        interrupts.CPU197.CAL:Function_call_interrupts
    626366           -45.4%     342272 ±  5%  interrupts.CPU197.LOC:Local_timer_interrupts
      1389 ±  4%     -14.6%       1187        interrupts.CPU198.CAL:Function_call_interrupts
    626231           -31.4%     429407 ± 21%  interrupts.CPU198.LOC:Local_timer_interrupts
      1395 ±  4%     -14.8%       1188        interrupts.CPU199.CAL:Function_call_interrupts
    626473           -39.8%     377303 ± 17%  interrupts.CPU199.LOC:Local_timer_interrupts
      3710           +77.8%       6597 ±  2%  interrupts.CPU199.NMI:Non-maskable_interrupts
      3710           +77.8%       6597 ±  2%  interrupts.CPU199.PMI:Performance_monitoring_interrupts
      1394 ±  4%     -14.6%       1190        interrupts.CPU2.CAL:Function_call_interrupts
      6574 ± 24%     -31.9%       4477 ± 33%  interrupts.CPU2.NMI:Non-maskable_interrupts
      6574 ± 24%     -31.9%       4477 ± 33%  interrupts.CPU2.PMI:Performance_monitoring_interrupts
      1392 ±  4%     -14.5%       1189        interrupts.CPU20.CAL:Function_call_interrupts
      5690 ± 33%     -22.2%       4425 ± 34%  interrupts.CPU20.NMI:Non-maskable_interrupts
      5690 ± 33%     -22.2%       4425 ± 34%  interrupts.CPU20.PMI:Performance_monitoring_interrupts
    615.50 ± 20%     -41.8%     358.50 ± 33%  interrupts.CPU20.RES:Rescheduling_interrupts
      1392 ±  4%     -14.7%       1188        interrupts.CPU200.CAL:Function_call_interrupts
      1393 ±  4%     -14.7%       1188        interrupts.CPU201.CAL:Function_call_interrupts
      4614 ± 34%     -27.3%       3352        interrupts.CPU201.NMI:Non-maskable_interrupts
      4614 ± 34%     -27.3%       3352        interrupts.CPU201.PMI:Performance_monitoring_interrupts
      1391 ±  4%     -14.7%       1187        interrupts.CPU202.CAL:Function_call_interrupts
    626282           -43.7%     352487 ± 10%  interrupts.CPU202.LOC:Local_timer_interrupts
      3629           +70.3%       6179        interrupts.CPU202.NMI:Non-maskable_interrupts
      3629           +70.3%       6179        interrupts.CPU202.PMI:Performance_monitoring_interrupts
      1392 ±  4%     -14.7%       1188        interrupts.CPU203.CAL:Function_call_interrupts
    626378           -37.1%     393719 ± 15%  interrupts.CPU203.LOC:Local_timer_interrupts
      5446 ± 34%     -40.4%       3248        interrupts.CPU203.NMI:Non-maskable_interrupts
      5446 ± 34%     -40.4%       3248        interrupts.CPU203.PMI:Performance_monitoring_interrupts
      1393 ±  4%     -14.8%       1187        interrupts.CPU204.CAL:Function_call_interrupts
      5567 ± 33%     -23.8%       4241 ± 34%  interrupts.CPU204.NMI:Non-maskable_interrupts
      5567 ± 33%     -23.8%       4241 ± 34%  interrupts.CPU204.PMI:Performance_monitoring_interrupts
      1395 ±  4%     -14.9%       1187        interrupts.CPU205.CAL:Function_call_interrupts
      5524 ± 33%     -24.4%       4178 ± 34%  interrupts.CPU205.NMI:Non-maskable_interrupts
      5524 ± 33%     -24.4%       4178 ± 34%  interrupts.CPU205.PMI:Performance_monitoring_interrupts
      1392 ±  4%     -14.7%       1188        interrupts.CPU206.CAL:Function_call_interrupts
    626053           -33.4%     416932 ± 29%  interrupts.CPU206.LOC:Local_timer_interrupts
      1392 ±  4%     -14.5%       1190        interrupts.CPU207.CAL:Function_call_interrupts
    626396           -31.4%     429857 ± 24%  interrupts.CPU207.LOC:Local_timer_interrupts
      1394 ±  4%     -14.8%       1187        interrupts.CPU208.CAL:Function_call_interrupts
    625691           -31.8%     426743 ± 23%  interrupts.CPU208.LOC:Local_timer_interrupts
      1394 ±  4%     -14.3%       1195        interrupts.CPU209.CAL:Function_call_interrupts
    625876           -37.0%     394044 ± 18%  interrupts.CPU209.LOC:Local_timer_interrupts
      4552 ± 35%     -27.3%       3307        interrupts.CPU209.NMI:Non-maskable_interrupts
      4552 ± 35%     -27.3%       3307        interrupts.CPU209.PMI:Performance_monitoring_interrupts
      1392 ±  4%     -14.7%       1188        interrupts.CPU21.CAL:Function_call_interrupts
      5408 ± 32%     -37.6%       3372        interrupts.CPU210.NMI:Non-maskable_interrupts
      5408 ± 32%     -37.6%       3372        interrupts.CPU210.PMI:Performance_monitoring_interrupts
      1389 ±  4%     -14.5%       1187        interrupts.CPU211.CAL:Function_call_interrupts
    626151           -30.1%     437371 ± 22%  interrupts.CPU211.LOC:Local_timer_interrupts
      1394 ±  4%     -14.8%       1188        interrupts.CPU212.CAL:Function_call_interrupts
    625782           -39.5%     378414 ± 11%  interrupts.CPU212.LOC:Local_timer_interrupts
      5431 ± 33%     -26.1%       4014 ± 33%  interrupts.CPU212.NMI:Non-maskable_interrupts
      5431 ± 33%     -26.1%       4014 ± 33%  interrupts.CPU212.PMI:Performance_monitoring_interrupts
      1392 ±  4%     -14.7%       1187        interrupts.CPU213.CAL:Function_call_interrupts
    626276           -43.9%     351178 ±  9%  interrupts.CPU213.LOC:Local_timer_interrupts
      1390 ±  4%     -14.5%       1188        interrupts.CPU214.CAL:Function_call_interrupts
    625725           -37.9%     388318 ± 11%  interrupts.CPU214.LOC:Local_timer_interrupts
      1394 ±  4%     -14.7%       1189        interrupts.CPU215.CAL:Function_call_interrupts
    626305           -44.8%     345769 ±  6%  interrupts.CPU215.LOC:Local_timer_interrupts
      4373 ± 34%     -30.6%       3036        interrupts.CPU215.NMI:Non-maskable_interrupts
      4373 ± 34%     -30.6%       3036        interrupts.CPU215.PMI:Performance_monitoring_interrupts
      1394 ±  4%     -14.8%       1187        interrupts.CPU216.CAL:Function_call_interrupts
    626187           -28.4%     448139 ± 24%  interrupts.CPU216.LOC:Local_timer_interrupts
      1394 ±  4%     -14.8%       1187        interrupts.CPU217.CAL:Function_call_interrupts
    626232           -31.3%     430254 ± 23%  interrupts.CPU217.LOC:Local_timer_interrupts
      5516 ± 33%     -23.9%       4197 ± 34%  interrupts.CPU217.NMI:Non-maskable_interrupts
      5516 ± 33%     -23.9%       4197 ± 34%  interrupts.CPU217.PMI:Performance_monitoring_interrupts
      1394 ±  4%     -14.8%       1188        interrupts.CPU218.CAL:Function_call_interrupts
    626092           -35.2%     406015 ± 20%  interrupts.CPU218.LOC:Local_timer_interrupts
      1393 ±  4%     -14.7%       1187        interrupts.CPU219.CAL:Function_call_interrupts
    626430           -37.0%     394469 ± 22%  interrupts.CPU219.LOC:Local_timer_interrupts
      1391 ±  4%     -14.5%       1189        interrupts.CPU22.CAL:Function_call_interrupts
      1394 ±  4%     -14.8%       1188        interrupts.CPU220.CAL:Function_call_interrupts
    625982           -26.7%     459012 ± 22%  interrupts.CPU220.LOC:Local_timer_interrupts
      1396 ±  4%     -14.9%       1188        interrupts.CPU221.CAL:Function_call_interrupts
    626227           -35.9%     401325 ± 24%  interrupts.CPU221.LOC:Local_timer_interrupts
      1401 ±  5%     -15.1%       1189        interrupts.CPU222.CAL:Function_call_interrupts
    626245           -39.0%     381742 ± 12%  interrupts.CPU222.LOC:Local_timer_interrupts
      3602           -10.2%       3236        interrupts.CPU222.NMI:Non-maskable_interrupts
      3602           -10.2%       3236        interrupts.CPU222.PMI:Performance_monitoring_interrupts
      1405 ±  4%     -15.4%       1188        interrupts.CPU223.CAL:Function_call_interrupts
    626166           -43.7%     352624 ± 10%  interrupts.CPU223.LOC:Local_timer_interrupts
      1410 ±  4%     -15.7%       1189        interrupts.CPU224.CAL:Function_call_interrupts
    626412           -35.5%     404159 ± 29%  interrupts.CPU224.LOC:Local_timer_interrupts
      1409 ±  4%     -15.7%       1188        interrupts.CPU225.CAL:Function_call_interrupts
    626501           -32.0%     425753 ± 25%  interrupts.CPU225.LOC:Local_timer_interrupts
      5434 ± 33%     -24.6%       4097 ± 35%  interrupts.CPU225.NMI:Non-maskable_interrupts
      5434 ± 33%     -24.6%       4097 ± 35%  interrupts.CPU225.PMI:Performance_monitoring_interrupts
      1409 ±  4%     -15.6%       1188        interrupts.CPU226.CAL:Function_call_interrupts
     42.75 ± 49%    +398.2%     213.00 ±103%  interrupts.CPU226.RES:Rescheduling_interrupts
      1409 ±  4%     -15.7%       1188        interrupts.CPU227.CAL:Function_call_interrupts
      1409 ±  4%     -15.7%       1187        interrupts.CPU228.CAL:Function_call_interrupts
    626375           -34.9%     407838 ± 27%  interrupts.CPU228.LOC:Local_timer_interrupts
      1410 ±  4%     -15.7%       1188        interrupts.CPU229.CAL:Function_call_interrupts
      1391 ±  4%     -14.5%       1189        interrupts.CPU23.CAL:Function_call_interrupts
      4715 ± 35%     -27.4%       3421        interrupts.CPU23.NMI:Non-maskable_interrupts
      4715 ± 35%     -27.4%       3421        interrupts.CPU23.PMI:Performance_monitoring_interrupts
    399.25 ± 48%     -63.0%     147.75 ± 65%  interrupts.CPU23.RES:Rescheduling_interrupts
      1410 ±  4%     -15.7%       1188        interrupts.CPU230.CAL:Function_call_interrupts
    625778           -33.4%     416531 ± 18%  interrupts.CPU230.LOC:Local_timer_interrupts
      1409 ±  4%     -15.7%       1188        interrupts.CPU231.CAL:Function_call_interrupts
    626395           -27.9%     451655 ± 20%  interrupts.CPU231.LOC:Local_timer_interrupts
     11.25 ± 31%    +291.1%      44.00 ± 80%  interrupts.CPU231.RES:Rescheduling_interrupts
      1408 ±  4%     -15.5%       1190        interrupts.CPU232.CAL:Function_call_interrupts
    626163           -42.7%     359003 ±  9%  interrupts.CPU232.LOC:Local_timer_interrupts
      1407 ±  4%     -15.5%       1188        interrupts.CPU233.CAL:Function_call_interrupts
    626101           -43.1%     356548 ± 11%  interrupts.CPU233.LOC:Local_timer_interrupts
      6389 ± 25%     -49.4%       3234 ±  2%  interrupts.CPU233.NMI:Non-maskable_interrupts
      6389 ± 25%     -49.4%       3234 ±  2%  interrupts.CPU233.PMI:Performance_monitoring_interrupts
      1411 ±  4%     -15.8%       1188        interrupts.CPU234.CAL:Function_call_interrupts
    626094           -31.6%     428493 ± 21%  interrupts.CPU234.LOC:Local_timer_interrupts
      1409 ±  4%     -15.6%       1189        interrupts.CPU235.CAL:Function_call_interrupts
    626309           -45.1%     343921 ±  5%  interrupts.CPU235.LOC:Local_timer_interrupts
     17.00 ± 20%    +260.3%      61.25 ± 72%  interrupts.CPU235.RES:Rescheduling_interrupts
      1411 ±  4%     -15.8%       1188        interrupts.CPU236.CAL:Function_call_interrupts
    626322           -31.4%     429411 ± 22%  interrupts.CPU236.LOC:Local_timer_interrupts
      1410 ±  4%     -15.8%       1187        interrupts.CPU237.CAL:Function_call_interrupts
    626186           -35.4%     404790 ± 21%  interrupts.CPU237.LOC:Local_timer_interrupts
      5455 ± 33%     -39.1%       3323        interrupts.CPU237.NMI:Non-maskable_interrupts
      5455 ± 33%     -39.1%       3323        interrupts.CPU237.PMI:Performance_monitoring_interrupts
      1410 ±  4%     -15.7%       1189        interrupts.CPU238.CAL:Function_call_interrupts
    626483           -33.9%     414019 ± 16%  interrupts.CPU238.LOC:Local_timer_interrupts
      1411 ±  4%     -15.8%       1188        interrupts.CPU239.CAL:Function_call_interrupts
    626281           -31.6%     428086 ± 19%  interrupts.CPU239.LOC:Local_timer_interrupts
      1392 ±  4%     -14.6%       1189        interrupts.CPU24.CAL:Function_call_interrupts
    720.50 ± 86%     -62.4%     271.25 ± 44%  interrupts.CPU24.RES:Rescheduling_interrupts
      1411 ±  4%     -15.8%       1188        interrupts.CPU240.CAL:Function_call_interrupts
      1412 ±  4%     -15.9%       1188        interrupts.CPU241.CAL:Function_call_interrupts
      3696            -8.7%       3373        interrupts.CPU241.NMI:Non-maskable_interrupts
      3696            -8.7%       3373        interrupts.CPU241.PMI:Performance_monitoring_interrupts
      1405 ±  4%     -15.4%       1188        interrupts.CPU242.CAL:Function_call_interrupts
    626326           -36.7%     396466 ± 19%  interrupts.CPU242.LOC:Local_timer_interrupts
      1411 ±  4%     -15.8%       1188        interrupts.CPU243.CAL:Function_call_interrupts
    626233           -34.9%     407710 ± 17%  interrupts.CPU243.LOC:Local_timer_interrupts
      3659            -9.7%       3303        interrupts.CPU243.NMI:Non-maskable_interrupts
      3659            -9.7%       3303        interrupts.CPU243.PMI:Performance_monitoring_interrupts
      1411 ±  4%     -15.8%       1188        interrupts.CPU244.CAL:Function_call_interrupts
      5567 ± 33%     -25.6%       4143 ± 35%  interrupts.CPU244.NMI:Non-maskable_interrupts
      5567 ± 33%     -25.6%       4143 ± 35%  interrupts.CPU244.PMI:Performance_monitoring_interrupts
      1411 ±  4%     -15.9%       1187        interrupts.CPU245.CAL:Function_call_interrupts
    626606           -38.0%     388502 ± 15%  interrupts.CPU245.LOC:Local_timer_interrupts
      4639 ± 35%     -30.2%       3236        interrupts.CPU245.NMI:Non-maskable_interrupts
      4639 ± 35%     -30.2%       3236        interrupts.CPU245.PMI:Performance_monitoring_interrupts
      1411 ±  4%     -15.8%       1188        interrupts.CPU246.CAL:Function_call_interrupts
    625290           -41.8%     363817 ± 15%  interrupts.CPU246.LOC:Local_timer_interrupts
    119.50 ± 53%     -63.8%      43.25 ± 57%  interrupts.CPU246.RES:Rescheduling_interrupts
      1410 ±  4%     -15.8%       1187        interrupts.CPU247.CAL:Function_call_interrupts
      6427 ± 24%     -36.3%       4092 ± 34%  interrupts.CPU247.NMI:Non-maskable_interrupts
      6427 ± 24%     -36.3%       4092 ± 34%  interrupts.CPU247.PMI:Performance_monitoring_interrupts
      1410 ±  4%     -15.8%       1187        interrupts.CPU248.CAL:Function_call_interrupts
    625767           -30.7%     433663 ± 25%  interrupts.CPU248.LOC:Local_timer_interrupts
      5441 ± 33%     -38.4%       3351        interrupts.CPU248.NMI:Non-maskable_interrupts
      5441 ± 33%     -38.4%       3351        interrupts.CPU248.PMI:Performance_monitoring_interrupts
      1412 ±  4%     -15.8%       1188        interrupts.CPU249.CAL:Function_call_interrupts
    625347           -28.9%     444798 ± 23%  interrupts.CPU249.LOC:Local_timer_interrupts
      5481 ± 33%     -23.2%       4211 ± 34%  interrupts.CPU249.NMI:Non-maskable_interrupts
      5481 ± 33%     -23.2%       4211 ± 34%  interrupts.CPU249.PMI:Performance_monitoring_interrupts
      1391 ±  4%     -14.5%       1189        interrupts.CPU25.CAL:Function_call_interrupts
      1412 ±  4%     -15.9%       1188        interrupts.CPU250.CAL:Function_call_interrupts
      5434 ± 32%     -22.7%       4202 ± 33%  interrupts.CPU250.NMI:Non-maskable_interrupts
      5434 ± 32%     -22.7%       4202 ± 33%  interrupts.CPU250.PMI:Performance_monitoring_interrupts
      1412 ±  4%     -15.9%       1188        interrupts.CPU251.CAL:Function_call_interrupts
      1412 ±  4%     -15.9%       1188        interrupts.CPU252.CAL:Function_call_interrupts
    625741           -41.8%     364480 ± 15%  interrupts.CPU252.LOC:Local_timer_interrupts
      5477 ± 33%     -41.0%       3231 ±  2%  interrupts.CPU252.NMI:Non-maskable_interrupts
      5477 ± 33%     -41.0%       3231 ±  2%  interrupts.CPU252.PMI:Performance_monitoring_interrupts
      1412 ±  4%     -15.9%       1188        interrupts.CPU253.CAL:Function_call_interrupts
    626149           -34.7%     408653 ± 27%  interrupts.CPU253.LOC:Local_timer_interrupts
      1412 ±  4%     -15.9%       1188        interrupts.CPU254.CAL:Function_call_interrupts
    626370           -41.6%     365534 ± 14%  interrupts.CPU254.LOC:Local_timer_interrupts
      1412 ±  4%     -15.8%       1188        interrupts.CPU255.CAL:Function_call_interrupts
    626180           -41.7%     365269 ±  9%  interrupts.CPU255.LOC:Local_timer_interrupts
      1412 ±  4%     -15.8%       1188        interrupts.CPU256.CAL:Function_call_interrupts
      1412 ±  4%     -15.8%       1188        interrupts.CPU257.CAL:Function_call_interrupts
    626384           -39.3%     379951 ± 17%  interrupts.CPU257.LOC:Local_timer_interrupts
      1409 ±  4%     -15.6%       1188        interrupts.CPU258.CAL:Function_call_interrupts
    626200           -36.8%     395576 ± 21%  interrupts.CPU258.LOC:Local_timer_interrupts
      1412 ±  4%     -15.8%       1188        interrupts.CPU259.CAL:Function_call_interrupts
    626122           -35.6%     403275 ± 28%  interrupts.CPU259.LOC:Local_timer_interrupts
      5503 ± 33%     -26.6%       4040 ± 33%  interrupts.CPU259.NMI:Non-maskable_interrupts
      5503 ± 33%     -26.6%       4040 ± 33%  interrupts.CPU259.PMI:Performance_monitoring_interrupts
      1402 ±  5%     -15.3%       1188        interrupts.CPU26.CAL:Function_call_interrupts
      1412 ±  4%     -15.5%       1193        interrupts.CPU260.CAL:Function_call_interrupts
      6462 ± 24%     -47.8%       3370        interrupts.CPU260.NMI:Non-maskable_interrupts
      6462 ± 24%     -47.8%       3370        interrupts.CPU260.PMI:Performance_monitoring_interrupts
      1412 ±  4%     -15.6%       1192        interrupts.CPU261.CAL:Function_call_interrupts
      1413 ±  4%     -15.7%       1191        interrupts.CPU262.CAL:Function_call_interrupts
    625496           -30.8%     432776 ± 25%  interrupts.CPU262.LOC:Local_timer_interrupts
      1412 ±  4%     -15.6%       1192        interrupts.CPU263.CAL:Function_call_interrupts
    626079           -31.7%     427800 ± 26%  interrupts.CPU263.LOC:Local_timer_interrupts
      1412 ±  4%     -15.6%       1192        interrupts.CPU264.CAL:Function_call_interrupts
      4691 ± 34%     -27.0%       3426 ±  2%  interrupts.CPU264.NMI:Non-maskable_interrupts
      4691 ± 34%     -27.0%       3426 ±  2%  interrupts.CPU264.PMI:Performance_monitoring_interrupts
      1412 ±  4%     -15.5%       1192        interrupts.CPU265.CAL:Function_call_interrupts
      5626 ± 33%     -22.4%       4366 ± 34%  interrupts.CPU265.NMI:Non-maskable_interrupts
      5626 ± 33%     -22.4%       4366 ± 34%  interrupts.CPU265.PMI:Performance_monitoring_interrupts
      1412 ±  4%     -15.6%       1192        interrupts.CPU266.CAL:Function_call_interrupts
      1412 ±  4%     -15.6%       1192        interrupts.CPU267.CAL:Function_call_interrupts
      5632 ± 33%     -23.8%       4291 ± 32%  interrupts.CPU267.NMI:Non-maskable_interrupts
      5632 ± 33%     -23.8%       4291 ± 32%  interrupts.CPU267.PMI:Performance_monitoring_interrupts
      1412 ±  4%     -15.6%       1192        interrupts.CPU268.CAL:Function_call_interrupts
      1413 ±  4%     -15.6%       1192        interrupts.CPU269.CAL:Function_call_interrupts
      1388 ±  4%     -14.4%       1188        interrupts.CPU27.CAL:Function_call_interrupts
      1408 ±  4%     -15.4%       1192        interrupts.CPU270.CAL:Function_call_interrupts
      1408 ±  4%     -15.3%       1192        interrupts.CPU271.CAL:Function_call_interrupts
      1412 ±  4%     -15.6%       1191        interrupts.CPU272.CAL:Function_call_interrupts
      1412 ±  4%     -15.6%       1192        interrupts.CPU273.CAL:Function_call_interrupts
      5592 ± 33%     -24.0%       4247 ± 34%  interrupts.CPU273.NMI:Non-maskable_interrupts
      5592 ± 33%     -24.0%       4247 ± 34%  interrupts.CPU273.PMI:Performance_monitoring_interrupts
      1411 ±  4%     -15.5%       1192        interrupts.CPU274.CAL:Function_call_interrupts
      1411 ±  4%     -15.5%       1192        interrupts.CPU275.CAL:Function_call_interrupts
      5608 ± 33%     -23.6%       4282 ± 32%  interrupts.CPU275.NMI:Non-maskable_interrupts
      5608 ± 33%     -23.6%       4282 ± 32%  interrupts.CPU275.PMI:Performance_monitoring_interrupts
      6560 ± 25%     -34.9%       4268 ± 33%  interrupts.CPU276.NMI:Non-maskable_interrupts
      6560 ± 25%     -34.9%       4268 ± 33%  interrupts.CPU276.PMI:Performance_monitoring_interrupts
      1416 ±  4%     -15.7%       1193        interrupts.CPU277.CAL:Function_call_interrupts
      1418 ±  4%     -15.9%       1193        interrupts.CPU278.CAL:Function_call_interrupts
      1419 ±  4%     -15.9%       1194        interrupts.CPU279.CAL:Function_call_interrupts
      1392 ±  4%     -14.6%       1190        interrupts.CPU28.CAL:Function_call_interrupts
      5670 ± 33%     -22.6%       4386 ± 32%  interrupts.CPU28.NMI:Non-maskable_interrupts
      5670 ± 33%     -22.6%       4386 ± 32%  interrupts.CPU28.PMI:Performance_monitoring_interrupts
      1419 ±  4%     -15.8%       1195        interrupts.CPU280.CAL:Function_call_interrupts
      6585 ± 25%     -35.1%       4270 ± 34%  interrupts.CPU280.NMI:Non-maskable_interrupts
      6585 ± 25%     -35.1%       4270 ± 34%  interrupts.CPU280.PMI:Performance_monitoring_interrupts
      1419 ±  4%     -15.5%       1199        interrupts.CPU281.CAL:Function_call_interrupts
      5615 ± 33%     -39.2%       3413        interrupts.CPU281.NMI:Non-maskable_interrupts
      5615 ± 33%     -39.2%       3413        interrupts.CPU281.PMI:Performance_monitoring_interrupts
      1420 ±  4%     -16.0%       1193        interrupts.CPU282.CAL:Function_call_interrupts
      5666 ± 33%     -24.7%       4264 ± 33%  interrupts.CPU282.NMI:Non-maskable_interrupts
      5666 ± 33%     -24.7%       4264 ± 33%  interrupts.CPU282.PMI:Performance_monitoring_interrupts
      1417 ±  4%     -15.9%       1192        interrupts.CPU283.CAL:Function_call_interrupts
      1415 ±  4%     -15.7%       1193        interrupts.CPU284.CAL:Function_call_interrupts
      1420 ±  4%     -16.1%       1192        interrupts.CPU285.CAL:Function_call_interrupts
      1420 ±  4%     -15.9%       1194        interrupts.CPU286.CAL:Function_call_interrupts
      5503 ± 33%     -22.5%       4265 ± 33%  interrupts.CPU286.NMI:Non-maskable_interrupts
      5503 ± 33%     -22.5%       4265 ± 33%  interrupts.CPU286.PMI:Performance_monitoring_interrupts
      6353 ± 24%     -33.9%       4197 ± 33%  interrupts.CPU287.NMI:Non-maskable_interrupts
      6353 ± 24%     -33.9%       4197 ± 33%  interrupts.CPU287.PMI:Performance_monitoring_interrupts
     15.00 ± 11%   +2371.7%     370.75 ± 59%  interrupts.CPU287.TLB:TLB_shootdowns
      1388 ±  4%     -14.2%       1191        interrupts.CPU29.CAL:Function_call_interrupts
      5647 ± 33%     -23.7%       4311 ± 32%  interrupts.CPU29.NMI:Non-maskable_interrupts
      5647 ± 33%     -23.7%       4311 ± 32%  interrupts.CPU29.PMI:Performance_monitoring_interrupts
      1392 ±  4%     -14.5%       1189        interrupts.CPU3.CAL:Function_call_interrupts
      1391 ±  4%     -14.5%       1189        interrupts.CPU30.CAL:Function_call_interrupts
      5666 ± 33%     -21.5%       4445 ± 32%  interrupts.CPU30.NMI:Non-maskable_interrupts
      5666 ± 33%     -21.5%       4445 ± 32%  interrupts.CPU30.PMI:Performance_monitoring_interrupts
      1073 ± 72%     -76.8%     249.50 ± 38%  interrupts.CPU30.RES:Rescheduling_interrupts
      1392 ±  4%     -14.5%       1189        interrupts.CPU31.CAL:Function_call_interrupts
      6591 ± 24%     -45.4%       3596        interrupts.CPU31.NMI:Non-maskable_interrupts
      6591 ± 24%     -45.4%       3596        interrupts.CPU31.PMI:Performance_monitoring_interrupts
      1391 ±  4%     -14.6%       1188        interrupts.CPU32.CAL:Function_call_interrupts
    873.25 ± 42%     -71.4%     249.50 ± 32%  interrupts.CPU32.RES:Rescheduling_interrupts
      1391 ±  4%     -14.5%       1189        interrupts.CPU33.CAL:Function_call_interrupts
      6630 ± 24%     -45.8%       3590 ±  2%  interrupts.CPU33.NMI:Non-maskable_interrupts
      6630 ± 24%     -45.8%       3590 ±  2%  interrupts.CPU33.PMI:Performance_monitoring_interrupts
      1391 ±  4%     -14.5%       1189        interrupts.CPU34.CAL:Function_call_interrupts
      1285 ± 72%     -83.2%     215.25 ± 25%  interrupts.CPU34.RES:Rescheduling_interrupts
      1391 ±  4%     -14.5%       1189        interrupts.CPU35.CAL:Function_call_interrupts
      1392 ±  4%     -14.5%       1190        interrupts.CPU36.CAL:Function_call_interrupts
      1391 ±  4%     -14.5%       1189        interrupts.CPU37.CAL:Function_call_interrupts
      1391 ±  4%     -14.4%       1190        interrupts.CPU38.CAL:Function_call_interrupts
      1936 ±106%     -88.4%     224.00 ± 31%  interrupts.CPU38.RES:Rescheduling_interrupts
      1391 ±  4%     -14.5%       1190        interrupts.CPU39.CAL:Function_call_interrupts
      1391 ±  4%     -14.4%       1191        interrupts.CPU4.CAL:Function_call_interrupts
      1391 ±  4%     -14.5%       1189        interrupts.CPU40.CAL:Function_call_interrupts
      1277 ± 44%     -81.9%     231.00 ± 49%  interrupts.CPU40.RES:Rescheduling_interrupts
      1391 ±  4%     -14.4%       1190        interrupts.CPU41.CAL:Function_call_interrupts
      5619 ± 33%     -37.9%       3486        interrupts.CPU41.NMI:Non-maskable_interrupts
      5619 ± 33%     -37.9%       3486        interrupts.CPU41.PMI:Performance_monitoring_interrupts
      1391 ±  4%     -14.4%       1190        interrupts.CPU42.CAL:Function_call_interrupts
      5622 ± 33%     -23.1%       4321 ± 35%  interrupts.CPU42.NMI:Non-maskable_interrupts
      5622 ± 33%     -23.1%       4321 ± 35%  interrupts.CPU42.PMI:Performance_monitoring_interrupts
    824.75 ± 47%     -60.8%     323.00 ± 71%  interrupts.CPU42.RES:Rescheduling_interrupts
      1392 ±  4%     -14.5%       1190        interrupts.CPU43.CAL:Function_call_interrupts
      1391 ±  4%     -14.4%       1191        interrupts.CPU44.CAL:Function_call_interrupts
    337.00 ±  8%     -36.6%     213.50 ± 10%  interrupts.CPU44.RES:Rescheduling_interrupts
      1390 ±  4%     -14.4%       1190        interrupts.CPU45.CAL:Function_call_interrupts
    251.50 ± 28%     -59.8%     101.00 ± 43%  interrupts.CPU45.RES:Rescheduling_interrupts
      1392 ±  4%     -14.4%       1191        interrupts.CPU46.CAL:Function_call_interrupts
    377.25 ± 27%     -51.9%     181.50 ± 29%  interrupts.CPU46.RES:Rescheduling_interrupts
      1391 ±  4%     -14.4%       1190        interrupts.CPU47.CAL:Function_call_interrupts
      1393 ±  5%     -14.5%       1191        interrupts.CPU48.CAL:Function_call_interrupts
      6604 ± 24%     -47.1%       3490        interrupts.CPU48.NMI:Non-maskable_interrupts
      6604 ± 24%     -47.1%       3490        interrupts.CPU48.PMI:Performance_monitoring_interrupts
      1390 ±  5%     -14.4%       1190        interrupts.CPU49.CAL:Function_call_interrupts
      1390 ±  4%     -14.4%       1190        interrupts.CPU5.CAL:Function_call_interrupts
    370.75 ± 40%     -49.0%     189.00 ± 23%  interrupts.CPU5.RES:Rescheduling_interrupts
      1386 ±  4%     -14.1%       1190        interrupts.CPU50.CAL:Function_call_interrupts
    597.25 ± 29%     -59.1%     244.00 ± 19%  interrupts.CPU50.RES:Rescheduling_interrupts
      1390 ±  4%     -14.5%       1189        interrupts.CPU51.CAL:Function_call_interrupts
      1390 ±  4%     -14.3%       1191        interrupts.CPU52.CAL:Function_call_interrupts
      1202 ± 96%     -75.5%     295.00 ± 22%  interrupts.CPU52.RES:Rescheduling_interrupts
      1390 ±  4%     -14.3%       1191        interrupts.CPU53.CAL:Function_call_interrupts
      4.75 ± 17%   +1552.6%      78.50 ±157%  interrupts.CPU53.TLB:TLB_shootdowns
      1393 ±  4%     -14.6%       1190        interrupts.CPU54.CAL:Function_call_interrupts
    638.50 ± 38%     -77.2%     145.75 ± 21%  interrupts.CPU54.RES:Rescheduling_interrupts
      1384 ±  4%     -13.7%       1193        interrupts.CPU55.CAL:Function_call_interrupts
      1390 ±  4%     -14.4%       1189        interrupts.CPU56.CAL:Function_call_interrupts
      1393 ±  4%     -14.7%       1189        interrupts.CPU57.CAL:Function_call_interrupts
      1389 ±  4%     -14.3%       1191        interrupts.CPU58.CAL:Function_call_interrupts
    499.75 ± 28%     -55.8%     221.00 ± 28%  interrupts.CPU58.RES:Rescheduling_interrupts
      1387 ±  4%     -14.1%       1191        interrupts.CPU59.CAL:Function_call_interrupts
      1392 ±  4%     -14.5%       1190        interrupts.CPU6.CAL:Function_call_interrupts
      5659 ± 33%     -21.2%       4457 ± 34%  interrupts.CPU6.NMI:Non-maskable_interrupts
      5659 ± 33%     -21.2%       4457 ± 34%  interrupts.CPU6.PMI:Performance_monitoring_interrupts
    489.25 ± 21%     -28.7%     348.75 ±  8%  interrupts.CPU6.RES:Rescheduling_interrupts
      1390 ±  4%     -14.3%       1191        interrupts.CPU60.CAL:Function_call_interrupts
    502.00 ± 13%     -53.0%     236.00 ± 24%  interrupts.CPU60.RES:Rescheduling_interrupts
      1391 ±  4%     -14.5%       1189        interrupts.CPU61.CAL:Function_call_interrupts
      1391 ±  4%     -14.4%       1190        interrupts.CPU62.CAL:Function_call_interrupts
      5646 ± 33%     -24.6%       4256 ± 35%  interrupts.CPU62.NMI:Non-maskable_interrupts
      5646 ± 33%     -24.6%       4256 ± 35%  interrupts.CPU62.PMI:Performance_monitoring_interrupts
    720.00 ± 17%     -62.0%     273.25 ± 24%  interrupts.CPU62.RES:Rescheduling_interrupts
      1391 ±  4%     -14.4%       1191        interrupts.CPU63.CAL:Function_call_interrupts
      1392 ±  4%     -14.3%       1193        interrupts.CPU64.CAL:Function_call_interrupts
    867.50 ± 76%     -68.1%     276.50 ± 42%  interrupts.CPU64.RES:Rescheduling_interrupts
      1391 ±  4%     -14.4%       1190        interrupts.CPU65.CAL:Function_call_interrupts
      1389 ±  4%     -14.2%       1192        interrupts.CPU66.CAL:Function_call_interrupts
    323.25 ± 13%     -43.3%     183.25 ± 23%  interrupts.CPU66.RES:Rescheduling_interrupts
      1389 ±  5%     -14.2%       1191        interrupts.CPU67.CAL:Function_call_interrupts
      1391 ±  4%     -14.3%       1192        interrupts.CPU68.CAL:Function_call_interrupts
      1391 ±  4%     -14.5%       1190        interrupts.CPU69.CAL:Function_call_interrupts
      1392 ±  4%     -14.6%       1189        interrupts.CPU7.CAL:Function_call_interrupts
      5661 ± 33%     -38.6%       3474 ±  2%  interrupts.CPU7.NMI:Non-maskable_interrupts
      5661 ± 33%     -38.6%       3474 ±  2%  interrupts.CPU7.PMI:Performance_monitoring_interrupts
    479.25 ± 45%     -56.4%     209.00 ± 23%  interrupts.CPU7.RES:Rescheduling_interrupts
      1389 ±  4%     -14.4%       1189        interrupts.CPU71.CAL:Function_call_interrupts
      1388 ±  4%     -14.4%       1188        interrupts.CPU72.CAL:Function_call_interrupts
    626242           -30.8%     433221 ± 25%  interrupts.CPU72.LOC:Local_timer_interrupts
      6458 ± 25%     -35.4%       4171 ± 33%  interrupts.CPU72.NMI:Non-maskable_interrupts
      6458 ± 25%     -35.4%       4171 ± 33%  interrupts.CPU72.PMI:Performance_monitoring_interrupts
      1387 ±  4%     -14.5%       1186        interrupts.CPU73.CAL:Function_call_interrupts
      1387 ±  4%     -14.5%       1186        interrupts.CPU74.CAL:Function_call_interrupts
      1387 ±  4%     -14.6%       1185        interrupts.CPU75.CAL:Function_call_interrupts
      6509 ± 25%     -35.0%       4228 ± 34%  interrupts.CPU75.NMI:Non-maskable_interrupts
      6509 ± 25%     -35.0%       4228 ± 34%  interrupts.CPU75.PMI:Performance_monitoring_interrupts
      1389 ±  4%     -14.5%       1188        interrupts.CPU76.CAL:Function_call_interrupts
    626012           -41.1%     368808 ± 13%  interrupts.CPU76.LOC:Local_timer_interrupts
      1388 ±  4%     -25.0%       1041 ± 24%  interrupts.CPU77.CAL:Function_call_interrupts
    626170           -43.1%     356486 ± 11%  interrupts.CPU77.LOC:Local_timer_interrupts
      1387 ±  4%     -14.5%       1185        interrupts.CPU78.CAL:Function_call_interrupts
      1387 ±  4%     -14.5%       1185        interrupts.CPU79.CAL:Function_call_interrupts
      5516 ± 33%     -22.6%       4267 ± 35%  interrupts.CPU79.NMI:Non-maskable_interrupts
      5516 ± 33%     -22.6%       4267 ± 35%  interrupts.CPU79.PMI:Performance_monitoring_interrupts
      1390 ±  4%     -14.3%       1191        interrupts.CPU8.CAL:Function_call_interrupts
      1388 ±  4%     -14.6%       1185        interrupts.CPU80.CAL:Function_call_interrupts
    626125           -42.2%     361733 ± 11%  interrupts.CPU80.LOC:Local_timer_interrupts
      1384 ±  4%     -14.3%       1186        interrupts.CPU81.CAL:Function_call_interrupts
    626113           -41.4%     366749 ±  7%  interrupts.CPU81.LOC:Local_timer_interrupts
      1387 ±  4%     -14.4%       1187        interrupts.CPU82.CAL:Function_call_interrupts
    624751           -43.7%     351795 ±  9%  interrupts.CPU82.LOC:Local_timer_interrupts
      3628           -11.2%       3221 ±  2%  interrupts.CPU82.NMI:Non-maskable_interrupts
      3628           -11.2%       3221 ±  2%  interrupts.CPU82.PMI:Performance_monitoring_interrupts
      1388 ±  4%     -14.6%       1185        interrupts.CPU83.CAL:Function_call_interrupts
    626816           -41.1%     369469 ± 13%  interrupts.CPU83.LOC:Local_timer_interrupts
      1385 ±  4%     -14.5%       1185        interrupts.CPU84.CAL:Function_call_interrupts
      5494 ± 33%     -37.9%       3412        interrupts.CPU84.NMI:Non-maskable_interrupts
      5494 ± 33%     -37.9%       3412        interrupts.CPU84.PMI:Performance_monitoring_interrupts
      1388 ±  4%     -25.0%       1041 ± 23%  interrupts.CPU85.CAL:Function_call_interrupts
    626454           -27.0%     457589 ± 22%  interrupts.CPU85.LOC:Local_timer_interrupts
      1387 ±  4%     -14.5%       1186        interrupts.CPU86.CAL:Function_call_interrupts
    626005           -34.3%     411017 ± 22%  interrupts.CPU86.LOC:Local_timer_interrupts
      1387 ±  4%     -14.5%       1186        interrupts.CPU87.CAL:Function_call_interrupts
    626191           -35.4%     404306 ± 16%  interrupts.CPU87.LOC:Local_timer_interrupts
      1389 ±  4%     -14.6%       1186        interrupts.CPU88.CAL:Function_call_interrupts
    625872           -44.5%     347325 ±  7%  interrupts.CPU88.LOC:Local_timer_interrupts
      3650           -11.1%       3243 ±  2%  interrupts.CPU88.NMI:Non-maskable_interrupts
      3650           -11.1%       3243 ±  2%  interrupts.CPU88.PMI:Performance_monitoring_interrupts
      1387 ±  4%     -14.5%       1186        interrupts.CPU89.CAL:Function_call_interrupts
    626366           -43.0%     356980 ±  9%  interrupts.CPU89.LOC:Local_timer_interrupts
      5494 ± 33%     -27.0%       4010 ± 32%  interrupts.CPU89.NMI:Non-maskable_interrupts
      5494 ± 33%     -27.0%       4010 ± 32%  interrupts.CPU89.PMI:Performance_monitoring_interrupts
      1390 ±  4%     -14.3%       1191        interrupts.CPU9.CAL:Function_call_interrupts
      1387 ±  4%     -14.5%       1186        interrupts.CPU90.CAL:Function_call_interrupts
    626013           -39.3%     379762 ± 19%  interrupts.CPU90.LOC:Local_timer_interrupts
      5536 ± 33%     -24.8%       4164 ± 33%  interrupts.CPU90.NMI:Non-maskable_interrupts
      5536 ± 33%     -24.8%       4164 ± 33%  interrupts.CPU90.PMI:Performance_monitoring_interrupts
      1387 ±  4%     -14.5%       1185        interrupts.CPU91.CAL:Function_call_interrupts
    626180           -32.8%     421091 ± 24%  interrupts.CPU91.LOC:Local_timer_interrupts
      5526 ± 33%     -23.4%       4235 ± 34%  interrupts.CPU91.NMI:Non-maskable_interrupts
      5526 ± 33%     -23.4%       4235 ± 34%  interrupts.CPU91.PMI:Performance_monitoring_interrupts
      1388 ±  4%     -24.9%       1042 ± 23%  interrupts.CPU92.CAL:Function_call_interrupts
    626143           -34.7%     408843 ± 22%  interrupts.CPU92.LOC:Local_timer_interrupts
      1387 ±  4%     -14.5%       1186        interrupts.CPU93.CAL:Function_call_interrupts
    626257           -34.0%     413157 ± 19%  interrupts.CPU93.LOC:Local_timer_interrupts
     13.00 ± 12%    +588.5%      89.50 ± 95%  interrupts.CPU93.RES:Rescheduling_interrupts
      1387 ±  4%     -14.5%       1186        interrupts.CPU94.CAL:Function_call_interrupts
      1388 ±  4%     -14.6%       1186        interrupts.CPU95.CAL:Function_call_interrupts
    626418           -24.9%     470417 ± 20%  interrupts.CPU95.LOC:Local_timer_interrupts
      5553 ± 33%     -38.3%       3424        interrupts.CPU95.NMI:Non-maskable_interrupts
      5553 ± 33%     -38.3%       3424        interrupts.CPU95.PMI:Performance_monitoring_interrupts
      1388 ±  4%     -14.5%       1187        interrupts.CPU96.CAL:Function_call_interrupts
    625121           -32.5%     422088 ± 14%  interrupts.CPU96.LOC:Local_timer_interrupts
      5569 ± 33%     -27.4%       4043 ± 34%  interrupts.CPU96.NMI:Non-maskable_interrupts
      5569 ± 33%     -27.4%       4043 ± 34%  interrupts.CPU96.PMI:Performance_monitoring_interrupts
      1389 ±  4%     -14.6%       1186        interrupts.CPU97.CAL:Function_call_interrupts
    626209           -34.6%     409693 ± 16%  interrupts.CPU97.LOC:Local_timer_interrupts
      1381 ±  5%     -14.1%       1187        interrupts.CPU98.CAL:Function_call_interrupts
      5555 ± 33%     -38.4%       3419        interrupts.CPU98.NMI:Non-maskable_interrupts
      5555 ± 33%     -38.4%       3419        interrupts.CPU98.PMI:Performance_monitoring_interrupts
      1383 ±  5%     -14.2%       1187        interrupts.CPU99.CAL:Function_call_interrupts
    626199           -32.8%     420723 ± 26%  interrupts.CPU99.LOC:Local_timer_interrupts
    107.25 ±  4%    +174.1%     294.00 ± 26%  interrupts.IWI:IRQ_work_interrupts
 1.803e+08           -21.4%  1.418e+08 ± 12%  interrupts.LOC:Local_timer_interrupts
     60735 ±  5%     -39.5%      36730 ±  4%  interrupts.RES:Rescheduling_interrupts



***************************************************************************************************
lkp-skl-2sp7: 72 threads Intel(R) Xeon(R) Gold 6139 CPU @ 2.30GHz with 128G memory
=========================================================================================
cluster/compiler/cpufreq_governor/ip/kconfig/nr_threads/rootfs/runtime/tbox_group/test/testcase/ucode:
  cs-localhost/gcc-7/performance/ipv4/x86_64-rhel-7.6/1/debian-x86_64-20191114.cgz/300s/lkp-skl-2sp7/TCP_CRR/netperf/0x2000065

commit: 
  7aba5dcc23 ("jfs: Replace zero-length array with flexible-array member")
  05c5a0273b ("fs: jfs: fix a possible data race in txBegin()")

7aba5dcc234635b4 05c5a0273bc25627b9e9bbebc85 
---------------- --------------------------- 
       fail:runs  %reproduction    fail:runs
           |             |             |    
          1:4          -25%            :4     dmesg.WARNING:at#for_ip_swapgs_restore_regs_and_return_to_usermode/0x
           :4          100%           4:4     kmsg.IP-Config:Failed_to_open_erspan0
           :4          100%           4:4     kmsg.IP-Config:Failed_to_open_gretap0
           :4          100%           4:4     kmsg.kvm:already_loaded_the_other_module
         %stddev     %change         %stddev
             \          |                \  
     32033           -71.8%       9048        netperf.Throughput_total_tps
     32033           -71.8%       9048        netperf.Throughput_tps
     34270 ± 19%     -32.2%      23234 ± 11%  netperf.time.involuntary_context_switches
     87.50            -1.7%      86.00        netperf.time.percent_of_cpu_this_job_got
    237.76            +7.1%     254.71        netperf.time.system_time
     30.66           -66.6%      10.25 ±  3%  netperf.time.user_time
  17926206           -69.8%    5405643        netperf.time.voluntary_context_switches
   9610194           -71.8%    2714625        netperf.workload
      0.25            -0.1        0.12 ±  3%  mpstat.cpu.all.usr%
    181085           -60.2%      72003        vmstat.system.cs
     24.19 ±  2%      +8.7%      26.30        boot-time.boot
     15.27 ±  2%     +12.6%      17.18        boot-time.dhcp
      1449 ±  2%     +10.6%       1602        boot-time.idle
 1.589e+08           -16.1%  1.334e+08        cpuidle.C1.time
  10004352           -12.6%    8738852        cpuidle.C1.usage
  24458189 ±  3%     -76.6%    5718567 ± 15%  cpuidle.POLL.time
  18015660           -95.3%     840897 ± 17%  cpuidle.POLL.usage
     42120 ±  2%      +9.9%      46309 ±  5%  softirqs.CPU10.SCHED
     41095 ±  4%     +10.9%      45593 ±  5%  softirqs.CPU27.SCHED
     25223 ± 54%     +70.0%      42867        softirqs.CPU36.SCHED
    166155 ±  8%     -10.1%     149301        softirqs.CPU65.RCU
  28947742           -71.8%    8152772        softirqs.NET_RX
  12415372            -9.2%   11268919        softirqs.RCU
   8089600 ± 11%     -23.4%    6200320 ±  8%  meminfo.DirectMap2M
    503148 ±  8%     -41.3%     295276 ±  8%  meminfo.DirectMap4k
     75713           +34.4%     101777        meminfo.KReclaimable
     22720           +11.6%      25360        meminfo.Percpu
     75713           +34.4%     101777        meminfo.SReclaimable
    152955           +16.4%     178056        meminfo.SUnreclaim
    228668           +22.4%     279834        meminfo.Slab
    137288           +17.8%     161678        meminfo.VmallocUsed
     33315 ± 18%     +75.5%      58482 ± 12%  numa-meminfo.node0.KReclaimable
     33315 ± 18%     +75.5%      58482 ± 12%  numa-meminfo.node0.SReclaimable
     74713 ± 16%     +34.8%     100736 ± 11%  numa-meminfo.node0.SUnreclaim
    108029 ± 16%     +47.4%     159219 ± 11%  numa-meminfo.node0.Slab
    101746 ± 44%     +68.1%     171066 ± 12%  numa-meminfo.node1.Active
    101684 ± 44%     +68.1%     170963 ± 12%  numa-meminfo.node1.Active(anon)
     60012 ± 62%     +94.5%     116727 ± 18%  numa-meminfo.node1.AnonHugePages
     98606 ± 46%     +69.1%     166702 ± 12%  numa-meminfo.node1.AnonPages
      5648            +3.4%       5842        proc-vmstat.nr_shmem
     18920           +34.5%      25446        proc-vmstat.nr_slab_reclaimable
     38238           +16.4%      44513        proc-vmstat.nr_slab_unreclaimable
    895359 ±  5%     -17.9%     734777        proc-vmstat.numa_hit
    872027 ±  5%     -18.4%     711460        proc-vmstat.numa_local
      1080 ±  9%     +27.4%       1375 ±  4%  proc-vmstat.pgactivate
   1530529 ± 15%     -42.6%     878573 ±  2%  proc-vmstat.pgalloc_normal
   1505342 ± 15%     -43.5%     849856 ±  2%  proc-vmstat.pgfree
      8335 ± 18%     +75.4%      14620 ± 12%  numa-vmstat.node0.nr_slab_reclaimable
     18678 ± 16%     +34.8%      25183 ± 11%  numa-vmstat.node0.nr_slab_unreclaimable
    647500 ± 10%     -21.7%     507083 ±  8%  numa-vmstat.node0.numa_hit
    494986 ± 13%     -27.6%     358327 ± 13%  numa-vmstat.node0.numa_local
     25431 ± 44%     +68.1%      42742 ± 12%  numa-vmstat.node1.nr_active_anon
     24661 ± 46%     +69.0%      41679 ± 12%  numa-vmstat.node1.nr_anon_pages
     25431 ± 44%     +68.1%      42742 ± 12%  numa-vmstat.node1.nr_zone_active_anon
    725209 ±  8%     -16.4%     606495 ±  8%  numa-vmstat.node1.numa_hit
    702021 ±  8%     -17.9%     576047 ± 10%  numa-vmstat.node1.numa_local
     49724 ± 16%     -42.5%      28572 ± 16%  sched_debug.cfs_rq:/.load.avg
    113065 ± 11%     -24.3%      85601 ± 10%  sched_debug.cfs_rq:/.load.stddev
     57662 ±  7%     -47.5%      30301 ±  9%  sched_debug.cfs_rq:/.min_vruntime.max
      6576 ±  8%     -34.6%       4300 ± 19%  sched_debug.cfs_rq:/.min_vruntime.min
     10636 ±  5%     -39.1%       6478 ± 15%  sched_debug.cfs_rq:/.min_vruntime.stddev
      0.16 ±  8%     -29.7%       0.11 ±  8%  sched_debug.cfs_rq:/.nr_running.avg
      0.36 ±  2%     -13.7%       0.31 ±  4%  sched_debug.cfs_rq:/.nr_running.stddev
     35.45 ± 20%     -52.9%      16.69        sched_debug.cfs_rq:/.runnable_load_avg.avg
     95.13 ± 14%     -32.7%      63.99        sched_debug.cfs_rq:/.runnable_load_avg.stddev
     50290 ± 14%     -43.7%      28330 ± 15%  sched_debug.cfs_rq:/.runnable_weight.avg
    113143 ± 10%     -24.9%      84975 ± 10%  sched_debug.cfs_rq:/.runnable_weight.stddev
     33703 ± 43%     -68.0%      10796 ± 42%  sched_debug.cfs_rq:/.spread0.max
     10636 ±  5%     -39.1%       6478 ± 15%  sched_debug.cfs_rq:/.spread0.stddev
    140.66 ± 10%     -17.8%     115.68 ±  7%  sched_debug.cfs_rq:/.util_avg.avg
    247.04 ±  4%     -11.6%     218.36 ±  4%  sched_debug.cfs_rq:/.util_avg.stddev
     51.66 ± 11%     -41.4%      30.29 ± 11%  sched_debug.cfs_rq:/.util_est_enqueued.avg
    179.93 ±  3%     -26.3%     132.58 ± 11%  sched_debug.cfs_rq:/.util_est_enqueued.stddev
      1.26 ±  2%     +10.1%       1.39 ±  3%  sched_debug.cpu.clock.stddev
      1.26 ±  2%     +10.2%       1.39 ±  3%  sched_debug.cpu.clock_task.stddev
    365656 ±  9%     -57.9%     154017        sched_debug.cpu.nr_switches.avg
   3644073 ± 21%     -81.6%     671977 ± 17%  sched_debug.cpu.nr_switches.max
      1315 ±  5%    +863.7%      12673 ± 91%  sched_debug.cpu.nr_switches.min
    592717 ± 15%     -75.6%     144437 ± 18%  sched_debug.cpu.nr_switches.stddev
    341.50 ± 96%    +267.0%       1253 ±  7%  interrupts.CPU12.RES:Rescheduling_interrupts
    145.00 ± 42%    +316.6%     604.00 ± 78%  interrupts.CPU15.NMI:Non-maskable_interrupts
    145.00 ± 42%    +316.6%     604.00 ± 78%  interrupts.CPU15.PMI:Performance_monitoring_interrupts
    168.25 ± 70%    +219.9%     538.25 ± 63%  interrupts.CPU16.NMI:Non-maskable_interrupts
    168.25 ± 70%    +219.9%     538.25 ± 63%  interrupts.CPU16.PMI:Performance_monitoring_interrupts
    316.25 ± 69%    +303.7%       1276 ± 83%  interrupts.CPU17.NMI:Non-maskable_interrupts
    316.25 ± 69%    +303.7%       1276 ± 83%  interrupts.CPU17.PMI:Performance_monitoring_interrupts
      3796 ± 83%     -82.0%     685.00 ±119%  interrupts.CPU18.RES:Rescheduling_interrupts
      2353 ± 49%     -84.5%     364.00 ±134%  interrupts.CPU20.RES:Rescheduling_interrupts
    107.50 ± 26%    +199.8%     322.25 ± 80%  interrupts.CPU23.NMI:Non-maskable_interrupts
    107.50 ± 26%    +199.8%     322.25 ± 80%  interrupts.CPU23.PMI:Performance_monitoring_interrupts
     89.00 ± 14%     +90.2%     169.25 ± 23%  interrupts.CPU24.NMI:Non-maskable_interrupts
     89.00 ± 14%     +90.2%     169.25 ± 23%  interrupts.CPU24.PMI:Performance_monitoring_interrupts
     93.25 ± 19%    +101.6%     188.00 ± 35%  interrupts.CPU31.NMI:Non-maskable_interrupts
     93.25 ± 19%    +101.6%     188.00 ± 35%  interrupts.CPU31.PMI:Performance_monitoring_interrupts
     87.25 ± 14%     +88.3%     164.25 ± 13%  interrupts.CPU32.NMI:Non-maskable_interrupts
     87.25 ± 14%     +88.3%     164.25 ± 13%  interrupts.CPU32.PMI:Performance_monitoring_interrupts
    104.50 ± 34%    +106.9%     216.25 ± 46%  interrupts.CPU33.NMI:Non-maskable_interrupts
    104.50 ± 34%    +106.9%     216.25 ± 46%  interrupts.CPU33.PMI:Performance_monitoring_interrupts
      1951 ± 71%     -80.2%     387.00 ±113%  interrupts.CPU33.RES:Rescheduling_interrupts
    117.25 ± 42%    +295.7%     464.00 ± 68%  interrupts.CPU51.NMI:Non-maskable_interrupts
    117.25 ± 42%    +295.7%     464.00 ± 68%  interrupts.CPU51.PMI:Performance_monitoring_interrupts
    142.50 ± 52%    +186.7%     408.50 ± 55%  interrupts.CPU52.NMI:Non-maskable_interrupts
    142.50 ± 52%    +186.7%     408.50 ± 55%  interrupts.CPU52.PMI:Performance_monitoring_interrupts
    320.00 ± 65%    +246.8%       1109 ± 57%  interrupts.CPU53.NMI:Non-maskable_interrupts
    320.00 ± 65%    +246.8%       1109 ± 57%  interrupts.CPU53.PMI:Performance_monitoring_interrupts
    106.75 ± 30%    +111.2%     225.50 ± 56%  interrupts.CPU67.NMI:Non-maskable_interrupts
    106.75 ± 30%    +111.2%     225.50 ± 56%  interrupts.CPU67.PMI:Performance_monitoring_interrupts
     87.00 ± 13%    +123.6%     194.50 ± 33%  interrupts.CPU68.NMI:Non-maskable_interrupts
     87.00 ± 13%    +123.6%     194.50 ± 33%  interrupts.CPU68.PMI:Performance_monitoring_interrupts
     23466           +23.8%      29040 ±  5%  interrupts.NMI:Non-maskable_interrupts
     23466           +23.8%      29040 ±  5%  interrupts.PMI:Performance_monitoring_interrupts
     13.69 ± 25%     -71.4%       3.92 ± 48%  perf-stat.i.MPKI
  8.78e+08           +90.0%  1.668e+09        perf-stat.i.branch-instructions
      2.30 ± 14%      -1.5        0.83 ± 33%  perf-stat.i.branch-miss-rate%
  20600243 ± 12%     -31.0%   14224189 ± 29%  perf-stat.i.branch-misses
      2.48 ± 18%      +1.7        4.22 ± 14%  perf-stat.i.cache-miss-rate%
  57749473 ± 23%     -44.2%   32231609 ± 44%  perf-stat.i.cache-references
    182988           -60.2%      72782        perf-stat.i.context-switches
      1.65 ±  5%     -39.4%       1.00 ±  5%  perf-stat.i.cpi
 7.078e+09 ±  3%     +18.6%  8.393e+09 ±  3%  perf-stat.i.cpu-cycles
     85.15            -8.1%      78.28        perf-stat.i.cpu-migrations
      0.09 ± 32%      -0.1        0.02 ±106%  perf-stat.i.dTLB-load-miss-rate%
 1.284e+09           +89.1%  2.428e+09        perf-stat.i.dTLB-loads
      0.01 ± 51%      -0.0        0.00 ±133%  perf-stat.i.dTLB-store-miss-rate%
 7.676e+08           +81.0%   1.39e+09        perf-stat.i.dTLB-stores
     28.71 ± 22%     -19.9        8.79 ± 72%  perf-stat.i.iTLB-load-miss-rate%
    661655 ± 18%     -65.2%     230579 ± 60%  perf-stat.i.iTLB-load-misses
   1672859 ± 15%     +53.1%    2560787 ± 13%  perf-stat.i.iTLB-loads
 4.377e+09           +92.6%  8.432e+09        perf-stat.i.instructions
      7111 ± 22%    +568.3%      47528 ± 35%  perf-stat.i.instructions-per-iTLB-miss
      0.61 ±  4%     +63.4%       1.00 ±  4%  perf-stat.i.ipc
      0.10 ±  3%     +18.6%       0.12 ±  3%  perf-stat.i.metric.GHz
     41.51           +84.7%      76.66        perf-stat.i.metric.M/sec
    131741 ±  7%     +48.3%     195398 ±  7%  perf-stat.i.node-load-misses
     36778 ± 31%     -55.6%      16347 ± 16%  perf-stat.i.node-stores
     13.22 ± 23%     -70.9%       3.85 ± 46%  perf-stat.overall.MPKI
      2.35 ± 12%      -1.5        0.86 ± 30%  perf-stat.overall.branch-miss-rate%
      2.34 ± 18%      +1.9        4.20 ± 14%  perf-stat.overall.cache-miss-rate%
      1.62 ±  4%     -38.4%       1.00 ±  5%  perf-stat.overall.cpi
      0.08 ± 30%      -0.1        0.02 ±103%  perf-stat.overall.dTLB-load-miss-rate%
      0.01 ± 50%      -0.0        0.00 ±132%  perf-stat.overall.dTLB-store-miss-rate%
     28.68 ± 22%     -19.9        8.73 ± 71%  perf-stat.overall.iTLB-load-miss-rate%
      6894 ± 21%    +579.7%      46861 ± 36%  perf-stat.overall.instructions-per-iTLB-miss
      0.62 ±  4%     +62.5%       1.01 ±  4%  perf-stat.overall.ipc
    138819          +581.5%     946109        perf-stat.overall.path-length
 8.751e+08           +90.0%  1.662e+09        perf-stat.ps.branch-instructions
  20537517 ± 12%     -30.9%   14182248 ± 29%  perf-stat.ps.branch-misses
  57557495 ± 23%     -44.2%   32125500 ± 44%  perf-stat.ps.cache-references
    182374           -60.2%      72538        perf-stat.ps.context-switches
 7.055e+09 ±  3%     +18.6%  8.366e+09 ±  3%  perf-stat.ps.cpu-cycles
     84.88            -8.1%      78.04        perf-stat.ps.cpu-migrations
  1.28e+09           +89.1%   2.42e+09        perf-stat.ps.dTLB-loads
 7.651e+08           +81.0%  1.385e+09        perf-stat.ps.dTLB-stores
    659450 ± 18%     -65.2%     229817 ± 60%  perf-stat.ps.iTLB-load-misses
   1667327 ± 15%     +53.1%    2552296 ± 13%  perf-stat.ps.iTLB-loads
 4.363e+09           +92.6%  8.405e+09        perf-stat.ps.instructions
    131326 ±  7%     +48.3%     194773 ±  7%  perf-stat.ps.node-load-misses
     36665 ± 31%     -55.5%      16301 ± 16%  perf-stat.ps.node-stores
 1.334e+12           +92.5%  2.568e+12        perf-stat.total.instructions
      1551 ± 13%    -100.0%       0.00        slabinfo.Acpi-Parse.active_objs
      1551 ± 13%    -100.0%       0.00        slabinfo.Acpi-Parse.num_objs
    172.50 ±  6%    -100.0%       0.00        slabinfo.UDPv6.active_objs
    172.50 ±  6%    -100.0%       0.00        slabinfo.UDPv6.num_objs
      1648 ±  9%     -42.1%     954.25 ±  2%  slabinfo.UNIX.active_objs
      1648 ±  9%     -42.1%     954.25 ±  2%  slabinfo.UNIX.num_objs
    497.25 ±  3%     -38.7%     304.75 ±  6%  slabinfo.bdev_cache.active_objs
    497.25 ±  3%     -38.7%     304.75 ±  6%  slabinfo.bdev_cache.num_objs
      3990          -100.0%       0.00        slabinfo.cred_jar.active_objs
      3990          -100.0%       0.00        slabinfo.cred_jar.num_objs
      1917           -26.9%       1400        slabinfo.dentry.active_slabs
      1917           -26.9%       1400        slabinfo.dentry.num_slabs
      2225 ±  8%    -100.0%       0.00        slabinfo.dmaengine-unmap-16.active_objs
      2225 ±  8%    -100.0%       0.00        slabinfo.dmaengine-unmap-16.num_objs
    761.25 ± 11%    -100.0%       0.00        slabinfo.file_lock_cache.active_objs
    761.25 ± 11%    -100.0%       0.00        slabinfo.file_lock_cache.num_objs
      3185 ±  2%     -12.2%       2795 ±  2%  slabinfo.files_cache.active_objs
      3185 ±  2%     -12.2%       2795 ±  2%  slabinfo.files_cache.num_objs
     19419 ±  6%     +25.2%      24310 ±  8%  slabinfo.filp.active_objs
    613.00 ±  6%     +24.4%     762.50 ±  8%  slabinfo.filp.active_slabs
     19628 ±  6%     +24.4%      24408 ±  8%  slabinfo.filp.num_objs
    613.00 ±  6%     +24.4%     762.50 ±  8%  slabinfo.filp.num_slabs
      2080 ± 11%    -100.0%       0.00        slabinfo.fsnotify_mark_connector.active_objs
      2080 ± 11%    -100.0%       0.00        slabinfo.fsnotify_mark_connector.num_objs
      1007           +58.3%       1594        slabinfo.inode_cache.active_slabs
      1007           +58.3%       1594        slabinfo.inode_cache.num_slabs
      2517           -35.4%       1625        slabinfo.kernfs_node_cache.active_slabs
      2517           -35.4%       1625        slabinfo.kernfs_node_cache.num_slabs
      4927 ±  2%     -13.8%       4248 ±  4%  slabinfo.kmalloc-1k.active_objs
      5040 ±  2%     -15.1%       4280 ±  4%  slabinfo.kmalloc-1k.num_objs
      4837 ±  4%     +28.0%       6193        slabinfo.kmalloc-2k.active_objs
      4870 ±  5%     +28.1%       6237        slabinfo.kmalloc-2k.num_objs
      1191           +19.1%       1419        slabinfo.kmalloc-4k.active_objs
      1219           +18.3%       1442        slabinfo.kmalloc-4k.num_objs
      3935 ±  4%     +14.6%       4511 ±  5%  slabinfo.kmalloc-rcl-64.active_objs
      3935 ±  4%     +14.6%       4511 ±  5%  slabinfo.kmalloc-rcl-64.num_objs
    387.00 ± 12%     -13.2%     336.00 ±  8%  slabinfo.kmem_cache.active_objs
    387.00 ± 12%     -13.2%     336.00 ±  8%  slabinfo.kmem_cache.num_objs
    759.00 ± 10%     -36.2%     484.00 ±  5%  slabinfo.kmem_cache_node.active_objs
    816.00 ± 10%     -39.2%     496.00 ±  5%  slabinfo.kmem_cache_node.num_objs
     12875          -100.0%       0.00        slabinfo.lsm_file_cache.active_objs
     12875          -100.0%       0.00        slabinfo.lsm_file_cache.num_objs
      2271           -27.9%       1639        slabinfo.mm_struct.active_objs
      2271           -27.9%       1639        slabinfo.mm_struct.num_objs
    790.50 ±  7%    -100.0%       0.00        slabinfo.mnt_cache.active_objs
    790.50 ±  7%    -100.0%       0.00        slabinfo.mnt_cache.num_objs
    123.75 ±  8%    -100.0%       0.00        slabinfo.nfs_read_data.active_objs
    123.75 ±  8%    -100.0%       0.00        slabinfo.nfs_read_data.num_objs
    294.50 ± 17%    +360.4%       1355 ± 15%  slabinfo.numa_policy.active_objs
    294.50 ± 17%    +360.4%       1355 ± 15%  slabinfo.numa_policy.num_objs
      3128           +73.2%       5418        slabinfo.pid.active_objs
      3128           +73.2%       5418        slabinfo.pid.num_objs
     10638           -13.0%       9252        slabinfo.proc_inode_cache.active_objs
     10638           -12.9%       9266        slabinfo.proc_inode_cache.num_objs
      5651           -15.6%       4771        slabinfo.shmem_inode_cache.active_objs
      5651           -15.6%       4771        slabinfo.shmem_inode_cache.num_objs
      2794           -11.6%       2469        slabinfo.signal_cache.active_objs
      2794           -11.6%       2469        slabinfo.signal_cache.num_objs
     13766 ± 10%     -46.0%       7439 ± 16%  slabinfo.sock_inode_cache.active_objs
     13865 ± 10%     -45.9%       7507 ± 16%  slabinfo.sock_inode_cache.num_objs
      4036 ±  2%     +16.8%       4713 ±  2%  slabinfo.task_delay_info.active_objs
      4036 ±  2%     +16.8%       4713 ±  2%  slabinfo.task_delay_info.num_objs
    940.25           +13.2%       1064        slabinfo.task_struct.active_objs
    947.50           -43.4%     536.00        slabinfo.task_struct.active_slabs
    947.50           +13.2%       1072        slabinfo.task_struct.num_objs
    947.50           -43.4%     536.00        slabinfo.task_struct.num_slabs
      1909 ±  2%     +34.3%       2564        slabinfo.trace_event_file.active_objs
      1909 ±  2%     +34.3%       2564        slabinfo.trace_event_file.num_objs
      1966           -41.0%       1159 ±  3%  slabinfo.tw_sock_TCP.active_slabs
      1966           -41.0%       1159 ±  3%  slabinfo.tw_sock_TCP.num_slabs
     38.42 ±  3%      -6.9       31.49 ±  2%  perf-profile.calltrace.cycles-pp.do_syscall_64.entry_SYSCALL_64_after_hwframe
     38.56 ±  3%      -6.9       31.66 ±  2%  perf-profile.calltrace.cycles-pp.entry_SYSCALL_64_after_hwframe
     13.48 ±  3%      -2.6       10.86 ±  5%  perf-profile.calltrace.cycles-pp.__netif_receive_skb_one_core.process_backlog.net_rx_action.__softirqentry_text_start.do_softirq_own_stack
     13.07 ±  3%      -2.5       10.59 ±  5%  perf-profile.calltrace.cycles-pp.ip_rcv.__netif_receive_skb_one_core.process_backlog.net_rx_action.__softirqentry_text_start
     14.11 ±  3%      -2.3       11.79 ±  5%  perf-profile.calltrace.cycles-pp.net_rx_action.__softirqentry_text_start.do_softirq_own_stack.do_softirq.__local_bh_enable_ip
     12.53 ±  3%      -2.3       10.22 ±  5%  perf-profile.calltrace.cycles-pp.ip_protocol_deliver_rcu.ip_local_deliver_finish.ip_local_deliver.ip_rcv.__netif_receive_skb_one_core
     12.39 ±  3%      -2.3       10.12 ±  5%  perf-profile.calltrace.cycles-pp.tcp_v4_rcv.ip_protocol_deliver_rcu.ip_local_deliver_finish.ip_local_deliver.ip_rcv
     13.88 ±  3%      -2.2       11.64 ±  5%  perf-profile.calltrace.cycles-pp.process_backlog.net_rx_action.__softirqentry_text_start.do_softirq_own_stack.do_softirq
     12.77 ±  3%      -2.2       10.53 ±  5%  perf-profile.calltrace.cycles-pp.ip_local_deliver.ip_rcv.__netif_receive_skb_one_core.process_backlog.net_rx_action
     14.41 ±  3%      -2.2       12.18 ±  5%  perf-profile.calltrace.cycles-pp.__local_bh_enable_ip.ip_finish_output2.ip_output.__ip_queue_xmit.__tcp_transmit_skb
     14.41 ±  3%      -2.2       12.21 ±  5%  perf-profile.calltrace.cycles-pp.do_softirq.__local_bh_enable_ip.ip_finish_output2.ip_output.__ip_queue_xmit
     14.29 ±  3%      -2.1       12.15 ±  5%  perf-profile.calltrace.cycles-pp.__softirqentry_text_start.do_softirq_own_stack.do_softirq.__local_bh_enable_ip.ip_finish_output2
     12.58 ±  3%      -2.1       10.46 ±  5%  perf-profile.calltrace.cycles-pp.ip_local_deliver_finish.ip_local_deliver.ip_rcv.__netif_receive_skb_one_core.process_backlog
     14.30 ±  3%      -2.1       12.18 ±  5%  perf-profile.calltrace.cycles-pp.do_softirq_own_stack.do_softirq.__local_bh_enable_ip.ip_finish_output2.ip_output
      8.47 ±  3%      -1.7        6.73        perf-profile.calltrace.cycles-pp.__x64_sys_sendto.do_syscall_64.entry_SYSCALL_64_after_hwframe
      8.43 ±  3%      -1.7        6.72        perf-profile.calltrace.cycles-pp.__sys_sendto.__x64_sys_sendto.do_syscall_64.entry_SYSCALL_64_after_hwframe
      8.31 ±  3%      -1.6        6.68        perf-profile.calltrace.cycles-pp.sock_sendmsg.__sys_sendto.__x64_sys_sendto.do_syscall_64.entry_SYSCALL_64_after_hwframe
      9.00 ±  3%      -1.6        7.39 ±  3%  perf-profile.calltrace.cycles-pp.__inet_stream_connect.inet_stream_connect.__sys_connect.__x64_sys_connect.do_syscall_64
      9.22 ±  3%      -1.6        7.62 ±  3%  perf-profile.calltrace.cycles-pp.__x64_sys_connect.do_syscall_64.entry_SYSCALL_64_after_hwframe
      9.20 ±  3%      -1.6        7.62 ±  3%  perf-profile.calltrace.cycles-pp.__sys_connect.__x64_sys_connect.do_syscall_64.entry_SYSCALL_64_after_hwframe
      8.21 ±  3%      -1.6        6.63        perf-profile.calltrace.cycles-pp.tcp_sendmsg.sock_sendmsg.__sys_sendto.__x64_sys_sendto.do_syscall_64
      9.07 ±  3%      -1.6        7.51 ±  3%  perf-profile.calltrace.cycles-pp.inet_stream_connect.__sys_connect.__x64_sys_connect.do_syscall_64.entry_SYSCALL_64_after_hwframe
      4.81            -1.3        3.51 ±  3%  perf-profile.calltrace.cycles-pp.__x64_sys_recvfrom.do_syscall_64.entry_SYSCALL_64_after_hwframe
      4.77 ±  2%      -1.3        3.50 ±  3%  perf-profile.calltrace.cycles-pp.__sys_recvfrom.__x64_sys_recvfrom.do_syscall_64.entry_SYSCALL_64_after_hwframe
      6.98 ±  3%      -1.2        5.73        perf-profile.calltrace.cycles-pp.tcp_sendmsg_locked.tcp_sendmsg.sock_sendmsg.__sys_sendto.__x64_sys_sendto
      9.35 ±  3%      -1.2        8.11 ±  4%  perf-profile.calltrace.cycles-pp.ip_output.__ip_queue_xmit.__tcp_transmit_skb.tcp_write_xmit.__tcp_push_pending_frames
      9.27 ±  3%      -1.2        8.06 ±  5%  perf-profile.calltrace.cycles-pp.ip_finish_output2.ip_output.__ip_queue_xmit.__tcp_transmit_skb.tcp_write_xmit
      4.46 ±  2%      -1.1        3.37 ±  3%  perf-profile.calltrace.cycles-pp.inet_recvmsg.__sys_recvfrom.__x64_sys_recvfrom.do_syscall_64.entry_SYSCALL_64_after_hwframe
      4.45            -1.1        3.37 ±  4%  perf-profile.calltrace.cycles-pp.tcp_v4_do_rcv.__release_sock.release_sock.__inet_stream_connect.inet_stream_connect
      4.49 ±  2%      -1.1        3.42 ±  4%  perf-profile.calltrace.cycles-pp.__release_sock.release_sock.__inet_stream_connect.inet_stream_connect.__sys_connect
      4.05            -1.1        2.99 ±  4%  perf-profile.calltrace.cycles-pp.tcp_rcv_state_process.tcp_v4_do_rcv.__release_sock.release_sock.__inet_stream_connect
      4.52 ±  2%      -1.0        3.48 ±  4%  perf-profile.calltrace.cycles-pp.release_sock.__inet_stream_connect.inet_stream_connect.__sys_connect.__x64_sys_connect
      4.40 ±  2%      -1.0        3.36 ±  3%  perf-profile.calltrace.cycles-pp.tcp_recvmsg.inet_recvmsg.__sys_recvfrom.__x64_sys_recvfrom.do_syscall_64
      6.03 ±  3%      -0.9        5.18 ±  2%  perf-profile.calltrace.cycles-pp.__tcp_push_pending_frames.tcp_sendmsg_locked.tcp_sendmsg.sock_sendmsg.__sys_sendto
      6.02 ±  3%      -0.8        5.17 ±  2%  perf-profile.calltrace.cycles-pp.tcp_write_xmit.__tcp_push_pending_frames.tcp_sendmsg_locked.tcp_sendmsg.sock_sendmsg
      5.18 ±  4%      -0.8        4.39 ±  6%  perf-profile.calltrace.cycles-pp.__tcp_transmit_skb.tcp_write_xmit.__tcp_push_pending_frames.tcp_close.inet_release
      7.17 ±  2%      -0.8        6.38 ±  5%  perf-profile.calltrace.cycles-pp.tcp_v4_do_rcv.tcp_v4_rcv.ip_protocol_deliver_rcu.ip_local_deliver_finish.ip_local_deliver
      1.03 ±  2%      -0.8        0.26 ±100%  perf-profile.calltrace.cycles-pp.tcp_v4_do_rcv.__release_sock.release_sock.tcp_sendmsg.sock_sendmsg
      4.58 ±  4%      -0.7        3.85        perf-profile.calltrace.cycles-pp.__tcp_transmit_skb.tcp_write_xmit.__tcp_push_pending_frames.tcp_sendmsg_locked.tcp_sendmsg
      0.98 ±  2%      -0.7        0.26 ±100%  perf-profile.calltrace.cycles-pp.tcp_rcv_established.tcp_v4_do_rcv.__release_sock.release_sock.tcp_sendmsg
      3.51 ±  3%      -0.7        2.80 ±  4%  perf-profile.calltrace.cycles-pp.__tcp_transmit_skb.tcp_rcv_state_process.tcp_v4_do_rcv.__release_sock.release_sock
      3.77 ±  6%      -0.7        3.07 ±  3%  perf-profile.calltrace.cycles-pp.tcp_connect.tcp_v4_connect.__inet_stream_connect.inet_stream_connect.__sys_connect
      5.87 ±  4%      -0.7        5.21 ±  8%  perf-profile.calltrace.cycles-pp.__tcp_push_pending_frames.tcp_close.inet_release.__sock_release.sock_close
      5.86 ±  4%      -0.7        5.21 ±  8%  perf-profile.calltrace.cycles-pp.tcp_write_xmit.__tcp_push_pending_frames.tcp_close.inet_release.__sock_release
      4.98 ±  4%      -0.6        4.33 ±  6%  perf-profile.calltrace.cycles-pp.__ip_queue_xmit.__tcp_transmit_skb.tcp_write_xmit.__tcp_push_pending_frames.tcp_close
      3.29 ±  3%      -0.6        2.64 ±  3%  perf-profile.calltrace.cycles-pp.ip_finish_output2.ip_output.__ip_queue_xmit.__tcp_transmit_skb.tcp_rcv_state_process
      3.42 ±  3%      -0.6        2.78 ±  4%  perf-profile.calltrace.cycles-pp.__ip_queue_xmit.__tcp_transmit_skb.tcp_rcv_state_process.tcp_v4_do_rcv.__release_sock
      3.35 ±  3%      -0.6        2.71 ±  3%  perf-profile.calltrace.cycles-pp.ip_output.__ip_queue_xmit.__tcp_transmit_skb.tcp_rcv_state_process.tcp_v4_do_rcv
      0.93 ±  6%      -0.6        0.28 ±100%  perf-profile.calltrace.cycles-pp.try_to_wake_up.autoremove_wake_function.__wake_up_common.__wake_up_common_lock.sock_def_readable
      4.42 ±  5%      -0.6        3.81        perf-profile.calltrace.cycles-pp.__ip_queue_xmit.__tcp_transmit_skb.tcp_write_xmit.__tcp_push_pending_frames.tcp_sendmsg_locked
      7.44 ±  4%      -0.6        6.85 ±  6%  perf-profile.calltrace.cycles-pp.tcp_close.inet_release.__sock_release.sock_close.__fput
      9.05 ±  4%      -0.6        8.46 ±  5%  perf-profile.calltrace.cycles-pp.exit_to_usermode_loop.do_syscall_64.entry_SYSCALL_64_after_hwframe
      4.33 ±  5%      -0.6        3.74 ±  2%  perf-profile.calltrace.cycles-pp.tcp_v4_connect.__inet_stream_connect.inet_stream_connect.__sys_connect.__x64_sys_connect
      3.25 ±  5%      -0.6        2.70 ±  3%  perf-profile.calltrace.cycles-pp.__tcp_transmit_skb.tcp_connect.tcp_v4_connect.__inet_stream_connect.inet_stream_connect
      7.74 ±  4%      -0.5        7.19 ±  5%  perf-profile.calltrace.cycles-pp.sock_close.__fput.task_work_run.exit_to_usermode_loop.do_syscall_64
      7.61 ±  4%      -0.5        7.07 ±  6%  perf-profile.calltrace.cycles-pp.inet_release.__sock_release.sock_close.__fput.task_work_run
      7.72 ±  4%      -0.5        7.19 ±  5%  perf-profile.calltrace.cycles-pp.__sock_release.sock_close.__fput.task_work_run.exit_to_usermode_loop
      0.93 ±  7%      -0.5        0.40 ± 57%  perf-profile.calltrace.cycles-pp.__wake_up_common_lock.sock_def_readable.tcp_rcv_established.tcp_v4_do_rcv.tcp_v4_rcv
      0.94 ±  6%      -0.5        0.42 ± 58%  perf-profile.calltrace.cycles-pp.autoremove_wake_function.__wake_up_common.__wake_up_common_lock.sock_def_readable.tcp_child_process
      0.95 ±  7%      -0.5        0.43 ± 58%  perf-profile.calltrace.cycles-pp.__wake_up_common.__wake_up_common_lock.sock_def_readable.tcp_child_process.tcp_v4_rcv
      1.55 ±  5%      -0.5        1.03        perf-profile.calltrace.cycles-pp.tcp_child_process.tcp_v4_rcv.ip_protocol_deliver_rcu.ip_local_deliver_finish.ip_local_deliver
      4.02            -0.5        3.50 ±  4%  perf-profile.calltrace.cycles-pp.tcp_rcv_established.tcp_v4_do_rcv.tcp_v4_rcv.ip_protocol_deliver_rcu.ip_local_deliver_finish
      2.68 ±  5%      -0.5        2.20 ±  3%  perf-profile.calltrace.cycles-pp.ip_finish_output2.ip_output.__ip_queue_xmit.__tcp_transmit_skb.tcp_connect
      1.10 ±  3%      -0.5        0.62 ±  5%  perf-profile.calltrace.cycles-pp.__release_sock.release_sock.tcp_sendmsg.sock_sendmsg.__sys_sendto
      2.69 ±  5%      -0.5        2.21 ±  3%  perf-profile.calltrace.cycles-pp.ip_output.__ip_queue_xmit.__tcp_transmit_skb.tcp_connect.tcp_v4_connect
      1.11 ±  7%      -0.5        0.64 ±  9%  perf-profile.calltrace.cycles-pp.sock_def_readable.tcp_child_process.tcp_v4_rcv.ip_protocol_deliver_rcu.ip_local_deliver_finish
      1.03 ±  5%      -0.5        0.56 ±  3%  perf-profile.calltrace.cycles-pp.sock_def_readable.tcp_rcv_established.tcp_v4_do_rcv.tcp_v4_rcv.ip_protocol_deliver_rcu
      1.15 ±  3%      -0.4        0.72 ±  7%  perf-profile.calltrace.cycles-pp.release_sock.tcp_sendmsg.sock_sendmsg.__sys_sendto.__x64_sys_sendto
      3.07 ±  4%      -0.4        2.64 ±  3%  perf-profile.calltrace.cycles-pp.__ip_queue_xmit.__tcp_transmit_skb.tcp_connect.tcp_v4_connect.__inet_stream_connect
      1.03 ±  6%      -0.4        0.60 ±  9%  perf-profile.calltrace.cycles-pp.__wake_up_common_lock.sock_def_readable.tcp_child_process.tcp_v4_rcv.ip_protocol_deliver_rcu
      0.99 ±  4%      -0.4        0.63 ±  4%  perf-profile.calltrace.cycles-pp.tcp_fin.tcp_data_queue.tcp_rcv_established.tcp_v4_do_rcv.tcp_v4_rcv
      0.93 ±  6%      -0.3        0.61 ±  6%  perf-profile.calltrace.cycles-pp.sock_def_wakeup.tcp_fin.tcp_data_queue.tcp_rcv_established.tcp_v4_do_rcv
      0.88 ±  5%      -0.3        0.56 ±  5%  perf-profile.calltrace.cycles-pp.__wake_up_common_lock.sock_def_wakeup.tcp_fin.tcp_data_queue.tcp_rcv_established
      1.40 ±  5%      -0.3        1.12 ±  3%  perf-profile.calltrace.cycles-pp.tcp_conn_request.tcp_rcv_state_process.tcp_v4_do_rcv.tcp_v4_rcv.ip_protocol_deliver_rcu
      1.52 ± 10%      -0.2        1.28 ±  6%  perf-profile.calltrace.cycles-pp.schedule_idle.do_idle.cpu_startup_entry.start_secondary.secondary_startup_64
      0.64 ±  2%      -0.1        0.53 ±  3%  perf-profile.calltrace.cycles-pp.schedule_timeout.inet_csk_accept.inet_accept.__sys_accept4_file.__sys_accept4
      0.58 ±  5%      -0.1        0.53 ±  2%  perf-profile.calltrace.cycles-pp.schedule.schedule_timeout.inet_csk_accept.inet_accept.__sys_accept4_file
      2.08 ±  2%      +0.1        2.21 ±  3%  perf-profile.calltrace.cycles-pp.sk_wait_data.tcp_recvmsg.inet_recvmsg.__sys_recvfrom.__x64_sys_recvfrom
      0.64 ±  4%      +0.3        0.93 ±  6%  perf-profile.calltrace.cycles-pp.__ip_queue_xmit.__tcp_transmit_skb.tcp_rcv_established.tcp_v4_do_rcv.tcp_v4_rcv
      1.15 ±  3%      +0.3        1.44 ±  7%  perf-profile.calltrace.cycles-pp.tcp_data_queue.tcp_rcv_established.tcp_v4_do_rcv.tcp_v4_rcv.ip_protocol_deliver_rcu
      0.96 ±  4%      +0.3        1.26 ± 10%  perf-profile.calltrace.cycles-pp.tcp_fin.tcp_data_queue.tcp_rcv_state_process.tcp_v4_do_rcv.tcp_v4_rcv
      0.98 ±  4%      +0.3        1.30 ± 10%  perf-profile.calltrace.cycles-pp.tcp_data_queue.tcp_rcv_state_process.tcp_v4_do_rcv.tcp_v4_rcv.ip_protocol_deliver_rcu
      0.34 ±101%      +0.5        0.81 ± 18%  perf-profile.calltrace.cycles-pp.ktime_get.tick_nohz_irq_exit.irq_exit.smp_apic_timer_interrupt.apic_timer_interrupt
      0.35 ±101%      +0.5        0.85 ± 18%  perf-profile.calltrace.cycles-pp.tick_nohz_irq_exit.irq_exit.smp_apic_timer_interrupt.apic_timer_interrupt.cpuidle_enter_state
      0.00            +0.6        0.57 ±  9%  perf-profile.calltrace.cycles-pp.hrtimer_get_next_event.get_next_timer_interrupt.tick_nohz_next_event.tick_nohz_get_sleep_length.menu_select
      0.00            +0.6        0.59 ± 12%  perf-profile.calltrace.cycles-pp.__wake_up_common_lock.sock_def_readable.tcp_data_queue.tcp_rcv_established.tcp_v4_do_rcv
      0.13 ±173%      +0.6        0.72 ±  5%  perf-profile.calltrace.cycles-pp.run_timer_softirq.__softirqentry_text_start.irq_exit.smp_apic_timer_interrupt.apic_timer_interrupt
      0.00            +0.6        0.61 ±  6%  perf-profile.calltrace.cycles-pp.hrtimer_next_event_without.tick_nohz_get_sleep_length.menu_select.do_idle.cpu_startup_entry
      0.13 ±173%      +0.6        0.75 ±  7%  perf-profile.calltrace.cycles-pp.ip_output.__ip_queue_xmit.__tcp_transmit_skb.tcp_rcv_established.tcp_v4_do_rcv
      0.00            +0.6        0.62 ±  4%  perf-profile.calltrace.cycles-pp.ip_finish_output2.ip_output.__ip_queue_xmit.__tcp_transmit_skb.tcp_rcv_established
      0.00            +0.6        0.62 ± 12%  perf-profile.calltrace.cycles-pp.sock_def_readable.tcp_data_queue.tcp_rcv_established.tcp_v4_do_rcv.tcp_v4_rcv
      0.16 ±173%      +0.7        0.82 ± 36%  perf-profile.calltrace.cycles-pp.ktime_get.tick_irq_enter.irq_enter.smp_apic_timer_interrupt.apic_timer_interrupt
      0.89 ± 11%      +0.7        1.58 ±  4%  perf-profile.calltrace.cycles-pp.get_next_timer_interrupt.tick_nohz_next_event.tick_nohz_get_sleep_length.menu_select.do_idle
      0.13 ±173%      +0.7        0.83 ± 20%  perf-profile.calltrace.cycles-pp.scheduler_tick.update_process_times.tick_sched_handle.tick_sched_timer.__hrtimer_run_queues
      1.42 ± 18%      +0.7        2.15 ±  3%  perf-profile.calltrace.cycles-pp._raw_spin_lock_irqsave.rcu_core.__softirqentry_text_start.irq_exit.smp_apic_timer_interrupt
      0.58 ± 61%      +0.7        1.33 ± 35%  perf-profile.calltrace.cycles-pp.irq_enter.smp_apic_timer_interrupt.apic_timer_interrupt.cpuidle_enter_state.cpuidle_enter
      1.05 ± 16%      +1.0        2.08 ± 25%  perf-profile.calltrace.cycles-pp.update_process_times.tick_sched_handle.tick_sched_timer.__hrtimer_run_queues.hrtimer_interrupt
      1.12 ± 18%      +1.0        2.15 ± 27%  perf-profile.calltrace.cycles-pp.tick_sched_handle.tick_sched_timer.__hrtimer_run_queues.hrtimer_interrupt.smp_apic_timer_interrupt
      0.00            +1.1        1.15 ± 13%  perf-profile.calltrace.cycles-pp.ktime_get_update_offsets_now.hrtimer_interrupt.smp_apic_timer_interrupt.apic_timer_interrupt.cpuidle_enter_state
      2.12 ± 11%      +1.2        3.28 ±  2%  perf-profile.calltrace.cycles-pp.rcu_core.__softirqentry_text_start.irq_exit.smp_apic_timer_interrupt.apic_timer_interrupt
      1.41 ± 13%      +1.3        2.71 ± 24%  perf-profile.calltrace.cycles-pp.tick_sched_timer.__hrtimer_run_queues.hrtimer_interrupt.smp_apic_timer_interrupt.apic_timer_interrupt
      0.39 ±101%      +1.4        1.77 ± 38%  perf-profile.calltrace.cycles-pp.ktime_get.clockevents_program_event.hrtimer_interrupt.smp_apic_timer_interrupt.apic_timer_interrupt
      0.00            +1.5        1.48 ±  5%  perf-profile.calltrace.cycles-pp.native_queued_spin_lock_slowpath.do_raw_spin_lock._raw_spin_lock_irqsave.rcu_core.__softirqentry_text_start
      0.00            +1.5        1.49 ± 30%  perf-profile.calltrace.cycles-pp.perf_mux_hrtimer_handler.__hrtimer_run_queues.hrtimer_interrupt.smp_apic_timer_interrupt.apic_timer_interrupt
      3.14 ± 13%      +1.6        4.75 ± 11%  perf-profile.calltrace.cycles-pp.menu_select.do_idle.cpu_startup_entry.start_secondary.secondary_startup_64
      1.35 ± 25%      +1.8        3.14 ± 15%  perf-profile.calltrace.cycles-pp.tick_nohz_next_event.tick_nohz_get_sleep_length.menu_select.do_idle.cpu_startup_entry
      0.00            +1.9        1.86 ±  6%  perf-profile.calltrace.cycles-pp.do_raw_spin_lock._raw_spin_lock_irqsave.rcu_core.__softirqentry_text_start.irq_exit
      1.62 ± 20%      +2.2        3.83 ± 13%  perf-profile.calltrace.cycles-pp.tick_nohz_get_sleep_length.menu_select.do_idle.cpu_startup_entry.start_secondary
      3.29 ± 11%      +2.4        5.72 ±  4%  perf-profile.calltrace.cycles-pp.__softirqentry_text_start.irq_exit.smp_apic_timer_interrupt.apic_timer_interrupt.cpuidle_enter_state
      3.98 ±  7%      +2.9        6.83 ±  2%  perf-profile.calltrace.cycles-pp.irq_exit.smp_apic_timer_interrupt.apic_timer_interrupt.cpuidle_enter_state.cpuidle_enter
      2.40 ± 14%      +3.9        6.30 ± 24%  perf-profile.calltrace.cycles-pp.__hrtimer_run_queues.hrtimer_interrupt.smp_apic_timer_interrupt.apic_timer_interrupt.cpuidle_enter_state
      4.14 ±  4%      +6.5       10.63 ± 11%  perf-profile.calltrace.cycles-pp.hrtimer_interrupt.smp_apic_timer_interrupt.apic_timer_interrupt.cpuidle_enter_state.cpuidle_enter
     48.02 ±  4%      +7.9       55.92        perf-profile.calltrace.cycles-pp.cpuidle_enter.do_idle.cpu_startup_entry.start_secondary.secondary_startup_64
     47.19 ±  4%      +8.0       55.23        perf-profile.calltrace.cycles-pp.cpuidle_enter_state.cpuidle_enter.do_idle.cpu_startup_entry.start_secondary
     56.36 ±  2%      +8.1       64.47        perf-profile.calltrace.cycles-pp.secondary_startup_64
     54.68 ±  3%      +8.7       63.34        perf-profile.calltrace.cycles-pp.start_secondary.secondary_startup_64
     54.66 ±  3%      +8.7       63.34        perf-profile.calltrace.cycles-pp.cpu_startup_entry.start_secondary.secondary_startup_64
     54.62 ±  3%      +8.7       63.31        perf-profile.calltrace.cycles-pp.do_idle.cpu_startup_entry.start_secondary.secondary_startup_64
     10.59 ±  2%     +10.3       20.89 ±  9%  perf-profile.calltrace.cycles-pp.apic_timer_interrupt.cpuidle_enter_state.cpuidle_enter.do_idle.cpu_startup_entry
      8.93 ±  2%     +10.6       19.50 ±  9%  perf-profile.calltrace.cycles-pp.smp_apic_timer_interrupt.apic_timer_interrupt.cpuidle_enter_state.cpuidle_enter.do_idle
     38.73 ±  3%      -6.7       32.02 ±  2%  perf-profile.children.cycles-pp.do_syscall_64
     38.86 ±  3%      -6.7       32.19 ±  2%  perf-profile.children.cycles-pp.entry_SYSCALL_64_after_hwframe
     13.52 ±  3%      -2.7       10.87 ±  5%  perf-profile.children.cycles-pp.__netif_receive_skb_one_core
     13.11 ±  3%      -2.5       10.60 ±  5%  perf-profile.children.cycles-pp.ip_rcv
     17.80 ±  3%      -2.5       15.33 ±  4%  perf-profile.children.cycles-pp.__tcp_transmit_skb
     13.39 ±  2%      -2.4       10.95 ±  4%  perf-profile.children.cycles-pp.tcp_v4_do_rcv
      2.72            -2.4        0.35 ±  4%  perf-profile.children.cycles-pp.poll_idle
     14.15 ±  3%      -2.3       11.81 ±  5%  perf-profile.children.cycles-pp.net_rx_action
     12.56 ±  3%      -2.3       10.22 ±  5%  perf-profile.children.cycles-pp.ip_protocol_deliver_rcu
     12.46 ±  3%      -2.3       10.12 ±  5%  perf-profile.children.cycles-pp.tcp_v4_rcv
     12.80 ±  3%      -2.3       10.53 ±  5%  perf-profile.children.cycles-pp.ip_local_deliver
     13.93 ±  3%      -2.3       11.66 ±  5%  perf-profile.children.cycles-pp.process_backlog
     14.46 ±  3%      -2.2       12.24 ±  5%  perf-profile.children.cycles-pp.do_softirq
     12.61 ±  3%      -2.1       10.46 ±  5%  perf-profile.children.cycles-pp.ip_local_deliver_finish
     14.34 ±  3%      -2.1       12.20 ±  5%  perf-profile.children.cycles-pp.do_softirq_own_stack
     16.07 ±  3%      -1.8       14.25 ±  4%  perf-profile.children.cycles-pp.ip_finish_output2
     16.42 ±  3%      -1.8       14.64 ±  4%  perf-profile.children.cycles-pp.ip_output
     16.86 ±  3%      -1.8       15.08 ±  4%  perf-profile.children.cycles-pp.__ip_queue_xmit
      8.47 ±  3%      -1.7        6.73        perf-profile.children.cycles-pp.__x64_sys_sendto
     14.60 ±  3%      -1.7       12.89 ±  4%  perf-profile.children.cycles-pp.__local_bh_enable_ip
      8.43 ±  3%      -1.7        6.72        perf-profile.children.cycles-pp.__sys_sendto
      8.32 ±  3%      -1.6        6.68        perf-profile.children.cycles-pp.sock_sendmsg
      9.00 ±  3%      -1.6        7.39 ±  3%  perf-profile.children.cycles-pp.__inet_stream_connect
      9.22 ±  3%      -1.6        7.62 ±  3%  perf-profile.children.cycles-pp.__x64_sys_connect
      8.22 ±  3%      -1.6        6.63        perf-profile.children.cycles-pp.tcp_sendmsg
      9.20 ±  3%      -1.6        7.62 ±  3%  perf-profile.children.cycles-pp.__sys_connect
      9.08 ±  3%      -1.6        7.51 ±  3%  perf-profile.children.cycles-pp.inet_stream_connect
      6.35 ±  2%      -1.5        4.81 ±  3%  perf-profile.children.cycles-pp.__release_sock
     11.90 ±  3%      -1.5       10.38 ±  5%  perf-profile.children.cycles-pp.__tcp_push_pending_frames
     11.88 ±  3%      -1.5       10.38 ±  5%  perf-profile.children.cycles-pp.tcp_write_xmit
      4.82 ±  2%      -1.3        3.51 ±  3%  perf-profile.children.cycles-pp.__x64_sys_recvfrom
      4.77 ±  2%      -1.3        3.50 ±  3%  perf-profile.children.cycles-pp.__sys_recvfrom
      8.17 ±  3%      -1.3        6.92 ±  5%  perf-profile.children.cycles-pp.tcp_rcv_state_process
      6.99 ±  3%      -1.3        5.73        perf-profile.children.cycles-pp.tcp_sendmsg_locked
      6.10 ±  2%      -1.2        4.88 ±  3%  perf-profile.children.cycles-pp.release_sock
      1.47 ±  5%      -1.2        0.32 ±  4%  perf-profile.children.cycles-pp.entry_SYSCALL_64
      1.45 ±  7%      -1.1        0.35 ± 10%  perf-profile.children.cycles-pp.syscall_return_via_sysret
      5.09            -1.1        3.99 ±  4%  perf-profile.children.cycles-pp.tcp_rcv_established
      4.46 ±  2%      -1.1        3.37 ±  3%  perf-profile.children.cycles-pp.inet_recvmsg
      4.41 ±  2%      -1.0        3.36 ±  3%  perf-profile.children.cycles-pp.tcp_recvmsg
      1.83 ±  8%      -1.0        0.83 ± 14%  perf-profile.children.cycles-pp.tcp_ack
      0.91 ±  8%      -0.7        0.20 ± 18%  perf-profile.children.cycles-pp.__inet_lookup_established
      3.77 ±  6%      -0.7        3.08 ±  3%  perf-profile.children.cycles-pp.tcp_connect
      2.63 ±  2%      -0.6        2.00 ±  6%  perf-profile.children.cycles-pp.try_to_wake_up
      2.75 ±  2%      -0.6        2.13 ±  6%  perf-profile.children.cycles-pp.__wake_up_common
      1.19 ±  6%      -0.6        0.59 ± 11%  perf-profile.children.cycles-pp.read_tsc
      7.45 ±  4%      -0.6        6.86 ±  6%  perf-profile.children.cycles-pp.tcp_close
      9.06 ±  4%      -0.6        8.47 ±  5%  perf-profile.children.cycles-pp.exit_to_usermode_loop
      4.33 ±  5%      -0.6        3.74 ±  2%  perf-profile.children.cycles-pp.tcp_v4_connect
      3.03 ±  2%      -0.6        2.45 ±  6%  perf-profile.children.cycles-pp.__wake_up_common_lock
      7.75 ±  4%      -0.6        7.19 ±  5%  perf-profile.children.cycles-pp.sock_close
      7.72 ±  4%      -0.5        7.19 ±  5%  perf-profile.children.cycles-pp.__sock_release
      7.61 ±  4%      -0.5        7.07 ±  6%  perf-profile.children.cycles-pp.inet_release
      1.56 ±  6%      -0.5        1.04        perf-profile.children.cycles-pp.tcp_child_process
      0.98 ±  6%      -0.4        0.53 ±  7%  perf-profile.children.cycles-pp.enqueue_task_fair
      0.95 ±  6%      -0.4        0.54 ± 11%  perf-profile.children.cycles-pp.autoremove_wake_function
      0.68 ±  5%      -0.4        0.27 ± 11%  perf-profile.children.cycles-pp.__x86_indirect_thunk_rax
      2.34 ±  3%      -0.4        1.94 ±  6%  perf-profile.children.cycles-pp.sock_def_readable
      0.90 ±  4%      -0.4        0.52 ±  7%  perf-profile.children.cycles-pp.__kfree_skb
      0.98 ±  5%      -0.4        0.60 ±  9%  perf-profile.children.cycles-pp.activate_task
      0.96 ±  8%      -0.4        0.58 ± 17%  perf-profile.children.cycles-pp.tcp_clean_rtx_queue
      0.99 ±  5%      -0.4        0.64 ±  9%  perf-profile.children.cycles-pp.ttwu_do_activate
      0.78 ±  5%      -0.3        0.44 ±  8%  perf-profile.children.cycles-pp.enqueue_entity
      1.06 ±  5%      -0.3        0.73 ±  6%  perf-profile.children.cycles-pp.sock_def_wakeup
      0.39 ± 10%      -0.3        0.11 ±  7%  perf-profile.children.cycles-pp.skb_release_all
      1.40 ±  5%      -0.3        1.12 ±  3%  perf-profile.children.cycles-pp.tcp_conn_request
      0.53 ±  9%      -0.3        0.27 ±  3%  perf-profile.children.cycles-pp.sched_clock_cpu
      0.36 ± 10%      -0.3        0.10 ± 10%  perf-profile.children.cycles-pp.skb_release_head_state
      0.35 ± 12%      -0.3        0.09 ± 20%  perf-profile.children.cycles-pp.skb_release_data
      0.48 ± 13%      -0.2        0.24 ± 13%  perf-profile.children.cycles-pp.__skb_datagram_iter
      0.29 ± 10%      -0.2        0.06 ± 63%  perf-profile.children.cycles-pp.dst_release
      1.59 ±  9%      -0.2        1.35 ±  4%  perf-profile.children.cycles-pp.schedule_idle
      0.34 ± 11%      -0.2        0.11 ± 17%  perf-profile.children.cycles-pp.__switch_to
      0.48 ± 12%      -0.2        0.26 ± 14%  perf-profile.children.cycles-pp.skb_copy_datagram_iter
      0.27 ±  9%      -0.2        0.04 ± 58%  perf-profile.children.cycles-pp.copy_user_generic_unrolled
      0.55 ±  9%      -0.2        0.32 ± 11%  perf-profile.children.cycles-pp.set_next_entity
      0.69 ±  4%      -0.2        0.47 ±  6%  perf-profile.children.cycles-pp.native_write_msr
      0.29 ± 20%      -0.2        0.08 ±  8%  perf-profile.children.cycles-pp.ipv4_mtu
      0.27 ±  6%      -0.2        0.06 ± 14%  perf-profile.children.cycles-pp.call_rcu
      0.45 ± 11%      -0.2        0.24 ±  7%  perf-profile.children.cycles-pp.sched_clock
      1.13 ±  4%      -0.2        0.93 ±  6%  perf-profile.children.cycles-pp._raw_spin_lock_bh
      0.51 ±  7%      -0.2        0.30 ±  9%  perf-profile.children.cycles-pp.select_task_rq_fair
      0.71 ±  3%      -0.2        0.52 ±  3%  perf-profile.children.cycles-pp.sk_reset_timer
      0.50 ±  5%      -0.2        0.31 ±  6%  perf-profile.children.cycles-pp.tcp_event_new_data_sent
      0.29 ±  5%      -0.2        0.10 ± 23%  perf-profile.children.cycles-pp.__slab_free
      0.90 ±  4%      -0.2        0.71 ±  6%  perf-profile.children.cycles-pp.dequeue_task_fair
      0.24 ± 11%      -0.2        0.06 ± 26%  perf-profile.children.cycles-pp.ipv4_dst_check
      0.67 ± 13%      -0.2        0.50 ±  2%  perf-profile.children.cycles-pp.__next_timer_interrupt
      0.22 ±  6%      -0.2        0.05 ± 58%  perf-profile.children.cycles-pp.__ksize
      0.40 ± 14%      -0.2        0.23 ±  8%  perf-profile.children.cycles-pp.native_sched_clock
      0.19 ± 15%      -0.2        0.03 ±102%  perf-profile.children.cycles-pp.nf_hook_slow
      0.20 ± 18%      -0.2        0.04 ± 60%  perf-profile.children.cycles-pp.sock_rfree
      0.22 ±  3%      -0.2        0.07 ± 19%  perf-profile.children.cycles-pp.sockfd_lookup_light
      0.23 ± 11%      -0.1        0.08 ± 23%  perf-profile.children.cycles-pp.__switch_to_asm
      0.52 ±  5%      -0.1        0.38 ±  2%  perf-profile.children.cycles-pp.lapic_next_deadline
      0.21 ±  9%      -0.1        0.07 ± 16%  perf-profile.children.cycles-pp.__check_object_size
      0.47 ± 15%      -0.1        0.33 ±  7%  perf-profile.children.cycles-pp._find_next_bit
      0.17 ±  6%      -0.1        0.03 ±100%  perf-profile.children.cycles-pp._cond_resched
      0.25 ± 20%      -0.1        0.12 ± 23%  perf-profile.children.cycles-pp.__x64_sys_close
      0.27 ± 18%      -0.1        0.14 ± 38%  perf-profile.children.cycles-pp.update_ts_time_stats
      0.50 ± 13%      -0.1        0.36 ± 13%  perf-profile.children.cycles-pp.tcp_create_openreq_child
      0.17 ±  9%      -0.1        0.04 ± 58%  perf-profile.children.cycles-pp.validate_xmit_skb
      0.48 ±  9%      -0.1        0.35 ± 14%  perf-profile.children.cycles-pp.update_rq_clock
      0.18 ± 16%      -0.1        0.05 ± 58%  perf-profile.children.cycles-pp.__might_sleep
      0.21 ± 14%      -0.1        0.08 ± 59%  perf-profile.children.cycles-pp.rcu_dynticks_eqs_exit
      0.23 ± 10%      -0.1        0.10 ± 19%  perf-profile.children.cycles-pp.rcu_eqs_exit
      0.25 ± 11%      -0.1        0.13 ± 22%  perf-profile.children.cycles-pp.nr_iowait_cpu
      0.19 ± 11%      -0.1        0.07 ± 17%  perf-profile.children.cycles-pp.__fget_light
      0.21 ± 15%      -0.1        0.09 ±  9%  perf-profile.children.cycles-pp.run_ksoftirqd
      0.20 ± 11%      -0.1        0.08 ± 23%  perf-profile.children.cycles-pp.select_idle_sibling
      0.20 ± 24%      -0.1        0.08 ± 74%  perf-profile.children.cycles-pp.wake_up_klogd_work_func
      0.15 ± 10%      -0.1        0.04 ± 58%  perf-profile.children.cycles-pp.update_cfs_group
      0.21 ± 23%      -0.1        0.10 ± 17%  perf-profile.children.cycles-pp.__update_load_avg_cfs_rq
      0.36 ±  6%      -0.1        0.25 ± 16%  perf-profile.children.cycles-pp.__netif_receive_skb_core
      0.23 ± 19%      -0.1        0.12 ± 10%  perf-profile.children.cycles-pp.smpboot_thread_fn
      0.44 ±  7%      -0.1        0.34 ±  4%  perf-profile.children.cycles-pp.tcp_send_fin
      1.51 ±  5%      -0.1        1.41 ±  5%  perf-profile.children.cycles-pp.wait_woken
      0.14 ± 19%      -0.1        0.03 ±100%  perf-profile.children.cycles-pp.simple_copy_to_iter
      0.16 ± 29%      -0.1        0.06 ± 66%  perf-profile.children.cycles-pp.rb_next
      0.36 ± 12%      -0.1        0.26 ±  3%  perf-profile.children.cycles-pp.inet_csk_destroy_sock
      0.27 ± 13%      -0.1        0.17 ± 16%  perf-profile.children.cycles-pp.__sk_dst_check
      0.76 ±  7%      -0.1        0.67 ±  6%  perf-profile.children.cycles-pp.dequeue_entity
      0.15 ± 12%      -0.1        0.06 ± 58%  perf-profile.children.cycles-pp.sk_forced_mem_schedule
      0.12 ±  9%      -0.1        0.03 ±100%  perf-profile.children.cycles-pp.inet_reqsk_alloc
      0.27 ±  6%      -0.1        0.18 ± 15%  perf-profile.children.cycles-pp.memcpy_erms
      0.37 ± 11%      -0.1        0.28 ± 15%  perf-profile.children.cycles-pp.inet_csk_clone_lock
      0.14 ± 18%      -0.1        0.05 ± 64%  perf-profile.children.cycles-pp.inet_sk_rebuild_header
      0.42 ±  8%      -0.1        0.34 ± 16%  perf-profile.children.cycles-pp.native_irq_return_iret
      0.18 ± 10%      -0.1        0.10 ± 17%  perf-profile.children.cycles-pp.rcu_eqs_enter
      0.11 ± 24%      -0.1        0.04 ±107%  perf-profile.children.cycles-pp.native_apic_mem_write
      0.15 ± 25%      -0.1        0.08 ± 14%  perf-profile.children.cycles-pp.tcp_current_mss
      0.19 ± 10%      -0.1        0.12 ± 17%  perf-profile.children.cycles-pp._copy_to_iter
      0.11 ± 14%      -0.1        0.04 ± 60%  perf-profile.children.cycles-pp.reweight_entity
      0.16 ± 23%      -0.1        0.09 ± 37%  perf-profile.children.cycles-pp.menu_reflect
      0.12 ±  8%      -0.1        0.06 ± 62%  perf-profile.children.cycles-pp.sock_recvmsg
      0.12 ± 29%      -0.1        0.05 ± 67%  perf-profile.children.cycles-pp.tsc_verify_tsc_adjust
      0.12 ± 19%      -0.1        0.06 ±  7%  perf-profile.children.cycles-pp.tcp_release_cb
      0.10 ± 23%      -0.1        0.04 ± 58%  perf-profile.children.cycles-pp.run_local_timers
      0.25 ± 12%      -0.1        0.19 ± 14%  perf-profile.children.cycles-pp.__tcp_send_ack
      0.09 ± 25%      -0.1        0.03 ±100%  perf-profile.children.cycles-pp.rb_insert_color
      0.26 ±  5%      -0.1        0.20 ± 10%  perf-profile.children.cycles-pp.tick_nohz_idle_exit
      0.12 ±  3%      -0.1        0.06 ± 62%  perf-profile.children.cycles-pp.security_socket_recvmsg
      0.12 ± 28%      -0.1        0.07 ± 31%  perf-profile.children.cycles-pp.arch_cpu_idle_enter
      0.08 ± 10%      -0.1        0.03 ±100%  perf-profile.children.cycles-pp.tcp_add_backlog
      0.12 ± 13%      -0.1        0.07 ± 17%  perf-profile.children.cycles-pp.security_sk_alloc
      0.11 ± 13%      -0.1        0.06 ± 20%  perf-profile.children.cycles-pp.apparmor_sk_alloc_security
      0.19 ± 13%      -0.0        0.15 ± 10%  perf-profile.children.cycles-pp.tcp_make_synack
      0.07 ± 11%      -0.0        0.03 ±102%  perf-profile.children.cycles-pp.security_socket_getsockopt
      0.20 ±  6%      -0.0        0.16 ± 10%  perf-profile.children.cycles-pp.sk_prot_alloc
      0.10 ± 27%      -0.0        0.06 ± 13%  perf-profile.children.cycles-pp.tcp_get_metrics
      0.11 ± 17%      -0.0        0.08 ± 10%  perf-profile.children.cycles-pp.__update_load_avg_se
      0.11 ± 14%      -0.0        0.08 ± 10%  perf-profile.children.cycles-pp.pick_next_entity
      0.11 ±  9%      -0.0        0.08 ± 23%  perf-profile.children.cycles-pp.inode_init_always
      0.15 ± 12%      -0.0        0.12 ± 15%  perf-profile.children.cycles-pp.remove_wait_queue
      0.07 ± 16%      +0.0        0.10 ± 13%  perf-profile.children.cycles-pp.read
      0.06 ± 14%      +0.0        0.09 ± 17%  perf-profile.children.cycles-pp.forkshell
      0.07 ± 13%      +0.0        0.10 ± 10%  perf-profile.children.cycles-pp.security_sk_free
      0.06            +0.0        0.10 ± 15%  perf-profile.children.cycles-pp.inet_csk_reqsk_queue_drop
      0.14 ±  7%      +0.0        0.18 ±  9%  perf-profile.children.cycles-pp.evict
      0.11 ±  6%      +0.0        0.15 ± 12%  perf-profile.children.cycles-pp.sock_alloc_inode
      0.06 ± 66%      +0.0        0.10 ±  4%  perf-profile.children.cycles-pp.add_wait_queue
      0.03 ±100%      +0.1        0.08 ± 16%  perf-profile.children.cycles-pp.tick_sched_do_timer
      0.08 ± 17%      +0.1        0.13 ± 16%  perf-profile.children.cycles-pp.try_to_del_timer_sync
      0.04 ± 58%      +0.1        0.10 ± 15%  perf-profile.children.cycles-pp.down_write
      0.03 ±102%      +0.1        0.08 ± 17%  perf-profile.children.cycles-pp.__x64_sys_exit_group
      0.03 ±102%      +0.1        0.08 ± 17%  perf-profile.children.cycles-pp.do_group_exit
      0.03 ±102%      +0.1        0.08 ± 17%  perf-profile.children.cycles-pp.do_exit
      0.00            +0.1        0.05 ±  8%  perf-profile.children.cycles-pp.alloc_set_pte
      0.00            +0.1        0.05 ±  9%  perf-profile.children.cycles-pp.bpf_sk_storage_free
      0.09 ± 38%      +0.1        0.15 ± 19%  perf-profile.children.cycles-pp.execve
      0.01 ±173%      +0.1        0.07 ± 10%  perf-profile.children.cycles-pp.update_rt_rq_load_avg
      0.00            +0.1        0.06 ± 20%  perf-profile.children.cycles-pp.sock_owned_by_me
      0.00            +0.1        0.06 ± 11%  perf-profile.children.cycles-pp.clear_inode
      0.01 ±173%      +0.1        0.07 ± 22%  perf-profile.children.cycles-pp.__sk_free
      0.00            +0.1        0.06 ± 17%  perf-profile.children.cycles-pp.__fd_install
      0.18 ± 15%      +0.1        0.25 ± 12%  perf-profile.children.cycles-pp.del_timer
      0.03 ±102%      +0.1        0.10 ± 15%  perf-profile.children.cycles-pp.__libc_start_main
      0.03 ±102%      +0.1        0.10 ± 15%  perf-profile.children.cycles-pp.main
      0.00            +0.1        0.07 ± 13%  perf-profile.children.cycles-pp.update_dl_rq_load_avg
      0.00            +0.1        0.07 ±  7%  perf-profile.children.cycles-pp.rcu_read_lock_bh_held
      0.00            +0.1        0.07 ± 13%  perf-profile.children.cycles-pp.lockdep_init_map
      0.00            +0.1        0.07 ± 25%  perf-profile.children.cycles-pp.netlink_has_listeners
      0.06 ± 22%      +0.1        0.12 ±  8%  perf-profile.children.cycles-pp.ksys_read
      0.06 ± 22%      +0.1        0.12 ±  8%  perf-profile.children.cycles-pp.vfs_read
      0.00            +0.1        0.07 ±  6%  perf-profile.children.cycles-pp.register_lock_class
      0.00            +0.1        0.07 ± 21%  perf-profile.children.cycles-pp.inet_twsk_hashdance
      0.32 ±  9%      +0.1        0.39 ±  5%  perf-profile.children.cycles-pp.alloc_empty_file
      0.01 ±173%      +0.1        0.08 ± 17%  perf-profile.children.cycles-pp.cmd_stat
      0.00            +0.1        0.07 ± 15%  perf-profile.children.cycles-pp.inet_csk_init_xmit_timers
      0.32 ±  6%      +0.1        0.39 ±  9%  perf-profile.children.cycles-pp.inet_create
      0.31 ± 11%      +0.1        0.38 ±  6%  perf-profile.children.cycles-pp.__alloc_file
      0.00            +0.1        0.07 ± 14%  perf-profile.children.cycles-pp.do_filp_open
      0.00            +0.1        0.07 ± 14%  perf-profile.children.cycles-pp.path_openat
      0.01 ±173%      +0.1        0.09 ±  7%  perf-profile.children.cycles-pp.__note_gp_changes
      0.00            +0.1        0.08 ± 20%  perf-profile.children.cycles-pp.trace_hardirqs_off_caller
      0.33 ±  6%      +0.1        0.41 ±  9%  perf-profile.children.cycles-pp.tcp_done
      0.00            +0.1        0.08 ± 10%  perf-profile.children.cycles-pp.inet_sk_state_store
      0.14 ±  7%      +0.1        0.22 ± 13%  perf-profile.children.cycles-pp.sk_alloc
      0.06 ± 13%      +0.1        0.14 ± 32%  perf-profile.children.cycles-pp.rcu_gp_kthread
      0.03 ±100%      +0.1        0.11 ± 11%  perf-profile.children.cycles-pp.tcp_update_metrics
      0.04 ± 59%      +0.1        0.12 ± 27%  perf-profile.children.cycles-pp._copy_from_user
      0.03 ±100%      +0.1        0.11 ±  7%  perf-profile.children.cycles-pp.inet_put_port
      0.16 ± 17%      +0.1        0.24 ±  4%  perf-profile.children.cycles-pp.__x64_sys_setsockopt
      0.00            +0.1        0.09 ± 13%  perf-profile.children.cycles-pp.detach_if_pending
      0.00            +0.1        0.09 ± 13%  perf-profile.children.cycles-pp.cgroup_sk_alloc
      0.01 ±173%      +0.1        0.10 ± 15%  perf-profile.children.cycles-pp.enqueue_timer
      0.21 ±  8%      +0.1        0.30 ±  7%  perf-profile.children.cycles-pp.__inet_bind
      0.00            +0.1        0.09 ± 17%  perf-profile.children.cycles-pp.do_sys_open
      0.00            +0.1        0.09 ± 17%  perf-profile.children.cycles-pp.do_sys_openat2
      0.15 ± 14%      +0.1        0.24 ±  4%  perf-profile.children.cycles-pp.__sys_setsockopt
      0.03 ±100%      +0.1        0.12 ± 11%  perf-profile.children.cycles-pp.filemap_map_pages
      0.01 ±173%      +0.1        0.10 ±  4%  perf-profile.children.cycles-pp.__update_idle_core
      0.00            +0.1        0.09 ± 27%  perf-profile.children.cycles-pp.ret_from_intr
      0.17 ± 10%      +0.1        0.26 ±  9%  perf-profile.children.cycles-pp.newidle_balance
      0.00            +0.1        0.10 ± 11%  perf-profile.children.cycles-pp.init_timer_key
      0.03 ±100%      +0.1        0.13 ±  6%  perf-profile.children.cycles-pp.pick_next_task_idle
      0.00            +0.1        0.10 ± 21%  perf-profile.children.cycles-pp.do_raw_spin_trylock
      0.00            +0.1        0.10 ± 18%  perf-profile.children.cycles-pp._raw_write_lock_bh
      0.01 ±173%      +0.1        0.12 ±  3%  perf-profile.children.cycles-pp.set_next_task_idle
      0.00            +0.1        0.11 ± 20%  perf-profile.children.cycles-pp.restore_regs_and_return_to_kernel
      0.15 ± 10%      +0.1        0.26 ± 16%  perf-profile.children.cycles-pp.inet_csk_route_req
      0.09 ±  8%      +0.1        0.21 ±  5%  perf-profile.children.cycles-pp.sock_setsockopt
      0.24 ± 10%      +0.1        0.36 ±  6%  perf-profile.children.cycles-pp.__kmalloc_reserve
      0.22 ±  8%      +0.1        0.33 ±  9%  perf-profile.children.cycles-pp.ttwu_do_wakeup
      0.00            +0.1        0.12 ± 32%  perf-profile.children.cycles-pp.__local_bh_enable
      2.08 ±  2%      +0.1        2.21 ±  3%  perf-profile.children.cycles-pp.sk_wait_data
      0.39 ±  7%      +0.1        0.51 ±  9%  perf-profile.children.cycles-pp.tcp_mstamp_refresh
      0.09 ± 20%      +0.1        0.21 ± 10%  perf-profile.children.cycles-pp.tcp_set_state
      0.09 ± 26%      +0.1        0.22 ± 11%  perf-profile.children.cycles-pp.del_timer_sync
      0.03 ±100%      +0.1        0.15 ± 14%  perf-profile.children.cycles-pp.cpuacct_charge
      0.07 ± 62%      +0.1        0.20 ±  6%  perf-profile.children.cycles-pp.__handle_mm_fault
      0.06 ± 61%      +0.1        0.20 ±  2%  perf-profile.children.cycles-pp.handle_pte_fault
      0.00            +0.1        0.14 ± 12%  perf-profile.children.cycles-pp.rcu_note_context_switch
      0.00            +0.1        0.14 ±  7%  perf-profile.children.cycles-pp.trace_softirqs_on
      0.00            +0.1        0.14 ± 12%  perf-profile.children.cycles-pp.lock_unpin_lock
      0.34 ± 19%      +0.1        0.48 ± 10%  perf-profile.children.cycles-pp.enqueue_to_backlog
      0.09 ±  8%      +0.1        0.24 ± 11%  perf-profile.children.cycles-pp.dput
      0.20 ± 13%      +0.1        0.35 ±  7%  perf-profile.children.cycles-pp.__kmalloc_node_track_caller
      0.00            +0.1        0.15 ± 29%  perf-profile.children.cycles-pp.trace_softirqs_off
      0.00            +0.2        0.15 ± 12%  perf-profile.children.cycles-pp.lockdep_rtnl_is_held
      0.00            +0.2        0.15 ± 14%  perf-profile.children.cycles-pp.trace_hardirqs_on_thunk
      0.23 ± 12%      +0.2        0.39 ± 11%  perf-profile.children.cycles-pp.__sk_destruct
      0.07 ± 64%      +0.2        0.22 ±  4%  perf-profile.children.cycles-pp.handle_mm_fault
      0.00            +0.2        0.16 ± 11%  perf-profile.children.cycles-pp.__raw_spin_lock_init
      0.00            +0.2        0.16 ± 15%  perf-profile.children.cycles-pp._raw_spin_unlock_bh
      0.00            +0.2        0.16 ± 13%  perf-profile.children.cycles-pp.lock_pin_lock
      0.06 ± 11%      +0.2        0.22 ± 14%  perf-profile.children.cycles-pp.trigger_load_balance
      0.10 ± 28%      +0.2        0.26 ±  4%  perf-profile.children.cycles-pp.do_page_fault
      0.22 ± 21%      +0.2        0.39 ± 15%  perf-profile.children.cycles-pp.fib_table_lookup
      0.11 ± 31%      +0.2        0.28 ±  6%  perf-profile.children.cycles-pp.page_fault
      0.16 ±  7%      +0.2        0.33 ±  9%  perf-profile.children.cycles-pp.sk_filter_trim_cap
      0.16 ± 49%      +0.2        0.34 ± 29%  perf-profile.children.cycles-pp.enqueue_hrtimer
      0.00            +0.2        0.18 ± 14%  perf-profile.children.cycles-pp._raw_spin_lock_nested
      0.19 ± 26%      +0.2        0.38 ± 25%  perf-profile.children.cycles-pp.finish_task_switch
      0.09 ± 21%      +0.2        0.29 ±  9%  perf-profile.children.cycles-pp.___perf_sw_event
      0.19 ± 14%      +0.2        0.40 ±  4%  perf-profile.children.cycles-pp.kmem_cache_alloc_node
      0.00            +0.2        0.21 ± 31%  perf-profile.children.cycles-pp.trace_hardirqs_off_thunk
      0.00            +0.2        0.21 ± 11%  perf-profile.children.cycles-pp.tracer_hardirqs_on
      0.11 ± 15%      +0.2        0.33 ± 12%  perf-profile.children.cycles-pp.raise_softirq
      0.18 ±  4%      +0.2        0.40 ±  8%  perf-profile.children.cycles-pp.kfree
      0.31            +0.2        0.53 ± 14%  perf-profile.children.cycles-pp.ktime_get_with_offset
      1.40 ±  5%      +0.2        1.63 ±  2%  perf-profile.children.cycles-pp.dev_hard_start_xmit
      0.39 ±  9%      +0.3        0.65 ±  4%  perf-profile.children.cycles-pp.kmem_cache_alloc
      0.22 ± 37%      +0.3        0.49 ±  9%  perf-profile.children.cycles-pp.run_rebalance_domains
      0.00            +0.3        0.27 ± 12%  perf-profile.children.cycles-pp.tracer_hardirqs_off
      0.18 ± 26%      +0.3        0.46 ±  8%  perf-profile.children.cycles-pp.update_blocked_averages
      0.27 ±  8%      +0.3        0.54 ±  3%  perf-profile.children.cycles-pp.update_curr
      0.00            +0.3        0.28 ±  6%  perf-profile.children.cycles-pp.debug_check_no_locks_freed
      0.00            +0.3        0.29 ± 14%  perf-profile.children.cycles-pp.do_raw_spin_unlock
      0.00            +0.3        0.32 ± 10%  perf-profile.children.cycles-pp.reacquire_held_locks
      0.39 ± 10%      +0.4        0.74 ± 13%  perf-profile.children.cycles-pp.kmem_cache_free
      0.31 ±  7%      +0.4        0.67 ±  5%  perf-profile.children.cycles-pp.ip_route_output_flow
      0.39 ± 12%      +0.4        0.75 ±  7%  perf-profile.children.cycles-pp.ip_route_output_key_hash_rcu
      0.48 ± 51%      +0.4        0.85 ± 18%  perf-profile.children.cycles-pp.tick_nohz_irq_exit
      0.00            +0.4        0.38 ± 13%  perf-profile.children.cycles-pp.__local_bh_disable_ip
      0.62 ± 11%      +0.4        1.01 ±  4%  perf-profile.children.cycles-pp.netif_rx_internal
      0.00            +0.4        0.40 ± 10%  perf-profile.children.cycles-pp.trace_hardirqs_on
      2.03 ±  6%      +0.4        2.44 ±  4%  perf-profile.children.cycles-pp.__dev_queue_xmit
      0.33 ± 28%      +0.4        0.75 ± 40%  perf-profile.children.cycles-pp.rcu_sched_clock_irq
      0.00            +0.4        0.42 ±  7%  perf-profile.children.cycles-pp.fs_reclaim_acquire
      0.20 ±  6%      +0.4        0.63 ±  6%  perf-profile.children.cycles-pp.hrtimer_next_event_without
      0.00            +0.4        0.43 ± 21%  perf-profile.children.cycles-pp._raw_spin_unlock_irq
      0.43 ± 11%      +0.4        0.87 ±  6%  perf-profile.children.cycles-pp.ip_route_output_key_hash
      0.47 ± 15%      +0.4        0.91 ± 20%  perf-profile.children.cycles-pp.scheduler_tick
      2.42            +0.4        2.87 ±  7%  perf-profile.children.cycles-pp.tcp_data_queue
      0.13 ± 20%      +0.4        0.58 ± 10%  perf-profile.children.cycles-pp.__might_fault
      0.13 ± 18%      +0.5        0.58 ±  8%  perf-profile.children.cycles-pp.hrtimer_get_next_event
      0.28 ± 65%      +0.5        0.74 ±  5%  perf-profile.children.cycles-pp.run_timer_softirq
      0.00            +0.6        0.58 ±  5%  perf-profile.children.cycles-pp.rcu_is_watching
      0.64 ± 10%      +0.6        1.23 ±  4%  perf-profile.children.cycles-pp.netif_rx
      0.70 ± 34%      +0.7        1.36 ± 34%  perf-profile.children.cycles-pp.irq_enter
      0.92 ± 11%      +0.7        1.60 ±  4%  perf-profile.children.cycles-pp.get_next_timer_interrupt
      0.49 ± 10%      +0.8        1.25 ±  3%  perf-profile.children.cycles-pp.___might_sleep
      0.00            +0.8        0.79 ±  5%  perf-profile.children.cycles-pp.trace_hardirqs_off
      0.00            +0.8        0.82 ±  5%  perf-profile.children.cycles-pp.find_held_lock
      0.22 ±  8%      +0.9        1.08 ±  6%  perf-profile.children.cycles-pp._raw_spin_lock_irq
      1.29 ± 16%      +0.9        2.23 ± 25%  perf-profile.children.cycles-pp.update_process_times
      1.35 ± 16%      +0.9        2.29 ± 26%  perf-profile.children.cycles-pp.tick_sched_handle
      0.26 ± 31%      +0.9        1.20 ± 13%  perf-profile.children.cycles-pp.ktime_get_update_offsets_now
      0.00            +1.0        1.03 ±  2%  perf-profile.children.cycles-pp.mark_held_locks
      0.00            +1.0        1.04 ±  6%  perf-profile.children.cycles-pp._raw_spin_unlock
      0.70 ± 14%      +1.1        1.76 ±  4%  perf-profile.children.cycles-pp._raw_spin_unlock_irqrestore
      0.49 ± 11%      +1.1        1.58 ± 30%  perf-profile.children.cycles-pp.perf_mux_hrtimer_handler
      0.00            +1.1        1.15 ± 11%  perf-profile.children.cycles-pp.lockdep_hardirqs_off
      2.52 ± 10%      +1.2        3.70 ±  2%  perf-profile.children.cycles-pp.rcu_core
      0.00            +1.2        1.19 ±  3%  perf-profile.children.cycles-pp.match_held_lock
      1.65 ± 14%      +1.3        2.90 ± 23%  perf-profile.children.cycles-pp.tick_sched_timer
      0.00            +1.4        1.37 ± 11%  perf-profile.children.cycles-pp.rcu_lockdep_current_cpu_online
      3.23 ± 13%      +1.6        4.83 ± 11%  perf-profile.children.cycles-pp.menu_select
      0.00            +1.7        1.68 ±  3%  perf-profile.children.cycles-pp.rcu_read_lock_held
      2.81 ±  9%      +1.7        4.56 ±  2%  perf-profile.children.cycles-pp._raw_spin_lock_irqsave
      0.00            +1.8        1.76 ±  4%  perf-profile.children.cycles-pp.lockdep_hardirqs_on
      0.00            +1.8        1.79 ± 12%  perf-profile.children.cycles-pp.debug_lockdep_rcu_enabled
      1.40 ± 24%      +1.8        3.21 ± 14%  perf-profile.children.cycles-pp.tick_nohz_next_event
      0.00            +2.2        2.19        perf-profile.children.cycles-pp.mark_lock
      1.68 ± 20%      +2.2        3.88 ± 13%  perf-profile.children.cycles-pp.tick_nohz_get_sleep_length
      0.00            +2.5        2.46 ±  9%  perf-profile.children.cycles-pp.__lock_text_start
      0.00            +2.7        2.65 ±  4%  perf-profile.children.cycles-pp.rcu_read_lock_held_common
      4.25 ±  6%      +2.9        7.11 ±  2%  perf-profile.children.cycles-pp.irq_exit
      0.00            +3.0        2.97 ±  4%  perf-profile.children.cycles-pp.do_raw_spin_lock
      2.18 ± 33%      +3.4        5.57 ±  4%  perf-profile.children.cycles-pp.ktime_get
      2.75 ± 16%      +3.9        6.65 ± 25%  perf-profile.children.cycles-pp.__hrtimer_run_queues
      0.00            +4.7        4.71 ±  3%  perf-profile.children.cycles-pp.lock_release
      0.00            +4.7        4.74        perf-profile.children.cycles-pp.rcu_read_lock_sched_held
      0.00            +6.2        6.18 ±  2%  perf-profile.children.cycles-pp.lock_is_held_type
      4.58 ±  8%      +6.6       11.14 ± 11%  perf-profile.children.cycles-pp.hrtimer_interrupt
     49.50 ±  3%      +7.4       56.87        perf-profile.children.cycles-pp.cpuidle_enter
     49.48 ±  3%      +7.4       56.85        perf-profile.children.cycles-pp.cpuidle_enter_state
     56.39 ±  2%      +8.1       64.48        perf-profile.children.cycles-pp.do_idle
     56.36 ±  2%      +8.1       64.47        perf-profile.children.cycles-pp.secondary_startup_64
     56.36 ±  2%      +8.1       64.47        perf-profile.children.cycles-pp.cpu_startup_entry
     54.68 ±  3%      +8.7       63.34        perf-profile.children.cycles-pp.start_secondary
     10.58 ±  4%     +10.5       21.06 ±  9%  perf-profile.children.cycles-pp.apic_timer_interrupt
      9.66 ±  4%     +10.6       20.30 ±  9%  perf-profile.children.cycles-pp.smp_apic_timer_interrupt
      0.00           +10.8       10.77 ±  3%  perf-profile.children.cycles-pp.__lock_acquire
      0.00           +14.2       14.15 ±  2%  perf-profile.children.cycles-pp.lock_acquire
      2.65 ±  2%      -2.3        0.32 ±  8%  perf-profile.self.cycles-pp.poll_idle
      2.35 ±  8%      -1.8        0.58 ±  6%  perf-profile.self.cycles-pp.do_syscall_64
      1.62 ±  6%      -1.5        0.12 ±  5%  perf-profile.self.cycles-pp._raw_spin_lock_irqsave
      1.47 ±  6%      -1.1        0.32 ±  4%  perf-profile.self.cycles-pp.entry_SYSCALL_64
      1.45 ±  7%      -1.1        0.35 ± 10%  perf-profile.self.cycles-pp.syscall_return_via_sysret
      0.81 ±  9%      -0.6        0.17 ± 16%  perf-profile.self.cycles-pp.__inet_lookup_established
      1.14 ±  5%      -0.6        0.56 ± 13%  perf-profile.self.cycles-pp.read_tsc
      1.26 ± 15%      -0.6        0.70 ± 21%  perf-profile.self.cycles-pp.menu_select
      0.81 ±  8%      -0.5        0.32 ±  4%  perf-profile.self.cycles-pp.__sched_text_start
      0.56 ± 10%      -0.4        0.17 ± 15%  perf-profile.self.cycles-pp.tcp_recvmsg
      0.63 ±  4%      -0.4        0.25 ± 14%  perf-profile.self.cycles-pp.__x86_indirect_thunk_rax
      0.50 ± 10%      -0.4        0.14 ± 19%  perf-profile.self.cycles-pp.__tcp_transmit_skb
      0.46 ± 10%      -0.4        0.11 ±  7%  perf-profile.self.cycles-pp.tcp_ack
      0.42 ± 12%      -0.3        0.11 ± 12%  perf-profile.self.cycles-pp.__dev_queue_xmit
      0.47 ±  6%      -0.3        0.17 ±  9%  perf-profile.self.cycles-pp.tcp_v4_rcv
      0.50 ± 14%      -0.3        0.22 ±  7%  perf-profile.self.cycles-pp.do_idle
      0.57 ±  7%      -0.3        0.29 ±  2%  perf-profile.self.cycles-pp._raw_spin_unlock_irqrestore
      0.48 ± 12%      -0.3        0.21 ±  4%  perf-profile.self.cycles-pp.___might_sleep
      0.35 ± 12%      -0.3        0.09 ± 18%  perf-profile.self.cycles-pp.skb_release_data
      0.36 ±  5%      -0.3        0.10 ± 11%  perf-profile.self.cycles-pp.__netif_receive_skb_core
      0.38 ± 11%      -0.3        0.12 ±  9%  perf-profile.self.cycles-pp.set_next_entity
      0.29 ± 17%      -0.2        0.04 ± 60%  perf-profile.self.cycles-pp.sock_def_readable
      0.31 ± 12%      -0.2        0.08 ± 10%  perf-profile.self.cycles-pp.tcp_clean_rtx_queue
      0.26 ± 11%      -0.2        0.03 ±100%  perf-profile.self.cycles-pp.copy_user_generic_unrolled
      0.29 ± 12%      -0.2        0.06 ± 64%  perf-profile.self.cycles-pp.dst_release
      0.35 ± 10%      -0.2        0.12 ±  5%  perf-profile.self.cycles-pp.ip_finish_output2
      0.69 ±  4%      -0.2        0.47 ±  6%  perf-profile.self.cycles-pp.native_write_msr
      0.32 ±  9%      -0.2        0.10 ± 19%  perf-profile.self.cycles-pp.__switch_to
      0.35 ± 14%      -0.2        0.14 ± 21%  perf-profile.self.cycles-pp.update_rq_clock
      0.29 ±  8%      -0.2        0.09 ± 12%  perf-profile.self.cycles-pp.__ip_queue_xmit
      0.27 ± 20%      -0.2        0.07 ± 10%  perf-profile.self.cycles-pp.ipv4_mtu
      1.03 ±  7%      -0.2        0.83 ±  5%  perf-profile.self.cycles-pp.cpuidle_enter_state
      0.24 ±  8%      -0.2        0.05 ± 60%  perf-profile.self.cycles-pp.tcp_sendmsg_locked
      0.28 ±  5%      -0.2        0.10 ± 23%  perf-profile.self.cycles-pp.__slab_free
      0.27 ±  7%      -0.2        0.09 ± 21%  perf-profile.self.cycles-pp.select_task_rq_fair
      0.22 ±  6%      -0.2        0.05 ± 58%  perf-profile.self.cycles-pp.__ksize
      0.20 ± 20%      -0.2        0.03 ±105%  perf-profile.self.cycles-pp.net_rx_action
      0.39 ± 15%      -0.2        0.22 ±  9%  perf-profile.self.cycles-pp.native_sched_clock
      0.21 ±  8%      -0.2        0.05 ± 58%  perf-profile.self.cycles-pp.aa_sk_perm
      0.24 ±  9%      -0.2        0.07 ± 15%  perf-profile.self.cycles-pp.loopback_xmit
      0.22 ± 12%      -0.2        0.06 ± 16%  perf-profile.self.cycles-pp.enqueue_entity
      0.25 ± 10%      -0.2        0.09 ± 17%  perf-profile.self.cycles-pp.process_backlog
      0.22 ± 21%      -0.2        0.06 ± 20%  perf-profile.self.cycles-pp.fib_table_lookup
      0.19 ± 16%      -0.2        0.04 ±107%  perf-profile.self.cycles-pp.ipv4_dst_check
      0.23 ± 14%      -0.2        0.08 ± 21%  perf-profile.self.cycles-pp.tcp_rcv_established
      0.19 ± 23%      -0.1        0.04 ± 60%  perf-profile.self.cycles-pp.enqueue_to_backlog
      0.23 ± 11%      -0.1        0.08 ± 23%  perf-profile.self.cycles-pp.__switch_to_asm
      0.19 ± 16%      -0.1        0.04 ± 60%  perf-profile.self.cycles-pp.sock_rfree
      0.35 ± 14%      -0.1        0.20 ± 17%  perf-profile.self.cycles-pp.note_gp_changes
      0.46 ± 14%      -0.1        0.32 ±  6%  perf-profile.self.cycles-pp._find_next_bit
      0.21 ± 18%      -0.1        0.08 ± 27%  perf-profile.self.cycles-pp.kmem_cache_alloc
      0.21 ± 23%      -0.1        0.07 ± 17%  perf-profile.self.cycles-pp.__update_load_avg_cfs_rq
      0.21 ± 14%      -0.1        0.08 ± 59%  perf-profile.self.cycles-pp.rcu_dynticks_eqs_exit
      0.19 ± 11%      -0.1        0.07 ± 13%  perf-profile.self.cycles-pp.__fget_light
      0.16 ± 16%      -0.1        0.04 ± 59%  perf-profile.self.cycles-pp.__might_sleep
      0.24 ± 12%      -0.1        0.13 ± 22%  perf-profile.self.cycles-pp.nr_iowait_cpu
      0.16 ±  2%      -0.1        0.05 ± 60%  perf-profile.self.cycles-pp.tcp_rcv_state_process
      0.14 ± 24%      -0.1        0.03 ±100%  perf-profile.self.cycles-pp.entry_SYSCALL_64_after_hwframe
      0.15 ± 10%      -0.1        0.04 ± 58%  perf-profile.self.cycles-pp.update_cfs_group
      0.17 ±  8%      -0.1        0.07 ± 16%  perf-profile.self.cycles-pp.tcp_write_xmit
      0.14 ± 13%      -0.1        0.04 ±100%  perf-profile.self.cycles-pp.__kmalloc_node_track_caller
      0.19 ± 18%      -0.1        0.09 ±  7%  perf-profile.self.cycles-pp.enqueue_task_fair
      0.17 ± 11%      -0.1        0.07 ± 10%  perf-profile.self.cycles-pp.mod_timer
      0.17 ± 17%      -0.1        0.08 ± 20%  perf-profile.self.cycles-pp.ip_local_deliver
      0.14 ± 15%      -0.1        0.05 ± 58%  perf-profile.self.cycles-pp.sk_forced_mem_schedule
      0.27 ±  6%      -0.1        0.18 ± 13%  perf-profile.self.cycles-pp.memcpy_erms
      0.18 ±  8%      -0.1        0.09 ± 17%  perf-profile.self.cycles-pp.ip_output
      0.14 ± 27%      -0.1        0.06 ± 66%  perf-profile.self.cycles-pp.rb_next
      0.18 ± 10%      -0.1        0.10 ± 15%  perf-profile.self.cycles-pp.rcu_eqs_enter
      0.42 ±  8%      -0.1        0.34 ± 16%  perf-profile.self.cycles-pp.native_irq_return_iret
      0.30 ± 14%      -0.1        0.22 ± 11%  perf-profile.self.cycles-pp.__softirqentry_text_start
      0.14 ±  8%      -0.1        0.07 ± 12%  perf-profile.self.cycles-pp.kmem_cache_alloc_node
      0.11 ± 14%      -0.1        0.04 ± 58%  perf-profile.self.cycles-pp.reweight_entity
      0.18 ±  6%      -0.1        0.11 ± 21%  perf-profile.self.cycles-pp.kfree
      0.12 ± 20%      -0.1        0.05 ± 67%  perf-profile.self.cycles-pp.menu_reflect
      0.12 ± 12%      -0.1        0.06 ±  7%  perf-profile.self.cycles-pp.dequeue_entity
      0.12 ± 13%      -0.1        0.07 ± 25%  perf-profile.self.cycles-pp.newidle_balance
      0.08 ± 23%      -0.1        0.03 ±100%  perf-profile.self.cycles-pp.run_local_timers
      0.08 ± 19%      -0.1        0.03 ±100%  perf-profile.self.cycles-pp.rb_insert_color
      0.24 ± 12%      -0.0        0.19 ±  3%  perf-profile.self.cycles-pp.__next_timer_interrupt
      0.12 ± 18%      -0.0        0.07 ±  5%  perf-profile.self.cycles-pp.resched_curr
      0.11 ± 14%      -0.0        0.06 ± 11%  perf-profile.self.cycles-pp.__update_load_avg_se
      0.12 ± 24%      -0.0        0.07 ± 10%  perf-profile.self.cycles-pp.update_curr
      0.10 ± 14%      -0.0        0.06 ±  9%  perf-profile.self.cycles-pp.ip_route_output_key_hash_rcu
      0.09 ± 15%      -0.0        0.04 ± 59%  perf-profile.self.cycles-pp.rcu_eqs_exit
      0.07 ± 22%      -0.0        0.04 ± 58%  perf-profile.self.cycles-pp.dev_hard_start_xmit
      0.11 ±  4%      -0.0        0.08 ± 22%  perf-profile.self.cycles-pp.finish_task_switch
      0.10 ± 15%      -0.0        0.07 ± 21%  perf-profile.self.cycles-pp.inet_csk_accept
      0.08 ±  8%      -0.0        0.05 ±  9%  perf-profile.self.cycles-pp.release_sock
      0.08 ±  6%      -0.0        0.06 ±  7%  perf-profile.self.cycles-pp.rcu_idle_exit
      0.05 ± 62%      +0.0        0.08 ± 15%  perf-profile.self.cycles-pp.__wake_up_common
      0.00            +0.1        0.07 ±  6%  perf-profile.self.cycles-pp.register_lock_class
      0.15 ± 27%      +0.1        0.22 ± 15%  perf-profile.self.cycles-pp.rcu_core
      0.00            +0.1        0.07 ± 20%  perf-profile.self.cycles-pp.reacquire_held_locks
      0.03 ±100%      +0.1        0.12 ± 18%  perf-profile.self.cycles-pp.smp_apic_timer_interrupt
      0.00            +0.1        0.10 ±  9%  perf-profile.self.cycles-pp._raw_spin_unlock
      0.00            +0.1        0.10 ± 25%  perf-profile.self.cycles-pp.__lock_text_start
      0.00            +0.1        0.10 ± 21%  perf-profile.self.cycles-pp.do_raw_spin_trylock
      0.00            +0.1        0.11 ± 10%  perf-profile.self.cycles-pp.lock_pin_lock
      0.00            +0.1        0.12 ± 14%  perf-profile.self.cycles-pp.lock_unpin_lock
      0.00            +0.1        0.14 ±  8%  perf-profile.self.cycles-pp.trace_softirqs_on
      0.00            +0.1        0.14 ± 31%  perf-profile.self.cycles-pp.trace_softirqs_off
      0.00            +0.2        0.18 ± 11%  perf-profile.self.cycles-pp.rcu_read_lock_held
      0.00            +0.2        0.18 ± 17%  perf-profile.self.cycles-pp.tracer_hardirqs_on
      0.00            +0.2        0.21 ±  7%  perf-profile.self.cycles-pp.trace_hardirqs_on
      0.00            +0.2        0.24 ± 10%  perf-profile.self.cycles-pp.tracer_hardirqs_off
      0.00            +0.3        0.28 ± 13%  perf-profile.self.cycles-pp.do_raw_spin_unlock
      0.00            +0.3        0.28 ±  6%  perf-profile.self.cycles-pp.debug_check_no_locks_freed
      0.00            +0.3        0.28 ±  3%  perf-profile.self.cycles-pp.__local_bh_disable_ip
      0.00            +0.4        0.39 ± 14%  perf-profile.self.cycles-pp.rcu_read_lock_sched_held
      0.00            +0.4        0.43 ±  7%  perf-profile.self.cycles-pp.trace_hardirqs_off
      0.00            +0.5        0.48 ±  6%  perf-profile.self.cycles-pp.rcu_is_watching
      0.00            +0.5        0.51 ±  9%  perf-profile.self.cycles-pp.find_held_lock
      0.00            +0.5        0.53 ±  3%  perf-profile.self.cycles-pp.mark_held_locks
      0.00            +0.7        0.68 ±  8%  perf-profile.self.cycles-pp.rcu_read_lock_held_common
      0.00            +0.8        0.75 ± 11%  perf-profile.self.cycles-pp.lockdep_hardirqs_on
      0.00            +0.9        0.88 ±  6%  perf-profile.self.cycles-pp.match_held_lock
      0.00            +1.1        1.13 ± 11%  perf-profile.self.cycles-pp.lockdep_hardirqs_off
      0.00            +1.3        1.30 ±  5%  perf-profile.self.cycles-pp.do_raw_spin_lock
      0.00            +1.3        1.31 ± 11%  perf-profile.self.cycles-pp.rcu_lockdep_current_cpu_online
      0.00            +1.5        1.55 ± 12%  perf-profile.self.cycles-pp.debug_lockdep_rcu_enabled
      0.00            +2.1        2.07        perf-profile.self.cycles-pp.mark_lock
      0.00            +3.3        3.29 ±  2%  perf-profile.self.cycles-pp.lock_release
      0.00            +3.3        3.30 ±  2%  perf-profile.self.cycles-pp.lock_acquire
      0.00            +5.4        5.41        perf-profile.self.cycles-pp.lock_is_held_type
      0.00            +9.1        9.07 ±  4%  perf-profile.self.cycles-pp.__lock_acquire





Disclaimer:
Results have been estimated based on internal Intel analysis and are provided
for informational purposes only. Any difference in system hardware or software
design or configuration may affect actual performance.


Thanks,
Rong Chen


--kkcDP0v44wDpNmbp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="config-5.6.0-rc5-00002-g05c5a0273bc25"

#
# Automatically generated file; DO NOT EDIT.
# Linux/x86_64 5.6.0-rc5 Kernel Configuration
#

#
# Compiler: gcc-7 (Ubuntu 7.5.0-6ubuntu2) 7.5.0
#
CONFIG_CC_IS_GCC=y
CONFIG_GCC_VERSION=70500
CONFIG_CLANG_VERSION=0
CONFIG_CC_CAN_LINK=y
CONFIG_CC_HAS_ASM_GOTO=y
CONFIG_CC_HAS_ASM_INLINE=y
CONFIG_CC_HAS_WARN_MAYBE_UNINITIALIZED=y
CONFIG_IRQ_WORK=y
CONFIG_BUILDTIME_TABLE_SORT=y
CONFIG_THREAD_INFO_IN_TASK=y

#
# General setup
#
CONFIG_INIT_ENV_ARG_LIMIT=32
# CONFIG_COMPILE_TEST is not set
CONFIG_LOCALVERSION=""
CONFIG_LOCALVERSION_AUTO=y
CONFIG_BUILD_SALT=""
CONFIG_HAVE_KERNEL_GZIP=y
CONFIG_HAVE_KERNEL_BZIP2=y
CONFIG_HAVE_KERNEL_LZMA=y
CONFIG_HAVE_KERNEL_XZ=y
CONFIG_HAVE_KERNEL_LZO=y
CONFIG_HAVE_KERNEL_LZ4=y
CONFIG_KERNEL_GZIP=y
# CONFIG_KERNEL_BZIP2 is not set
# CONFIG_KERNEL_LZMA is not set
# CONFIG_KERNEL_XZ is not set
# CONFIG_KERNEL_LZO is not set
# CONFIG_KERNEL_LZ4 is not set
CONFIG_DEFAULT_HOSTNAME="(none)"
CONFIG_SWAP=y
CONFIG_SYSVIPC=y
CONFIG_SYSVIPC_SYSCTL=y
CONFIG_POSIX_MQUEUE=y
CONFIG_POSIX_MQUEUE_SYSCTL=y
CONFIG_CROSS_MEMORY_ATTACH=y
CONFIG_USELIB=y
CONFIG_AUDIT=y
CONFIG_HAVE_ARCH_AUDITSYSCALL=y
CONFIG_AUDITSYSCALL=y

#
# IRQ subsystem
#
CONFIG_GENERIC_IRQ_PROBE=y
CONFIG_GENERIC_IRQ_SHOW=y
CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK=y
CONFIG_GENERIC_PENDING_IRQ=y
CONFIG_GENERIC_IRQ_MIGRATION=y
CONFIG_IRQ_DOMAIN=y
CONFIG_IRQ_SIM=y
CONFIG_IRQ_DOMAIN_HIERARCHY=y
CONFIG_GENERIC_MSI_IRQ=y
CONFIG_GENERIC_MSI_IRQ_DOMAIN=y
CONFIG_IRQ_MSI_IOMMU=y
CONFIG_GENERIC_IRQ_MATRIX_ALLOCATOR=y
CONFIG_GENERIC_IRQ_RESERVATION_MODE=y
CONFIG_IRQ_FORCED_THREADING=y
CONFIG_SPARSE_IRQ=y
# CONFIG_GENERIC_IRQ_DEBUGFS is not set
# end of IRQ subsystem

CONFIG_CLOCKSOURCE_WATCHDOG=y
CONFIG_ARCH_CLOCKSOURCE_DATA=y
CONFIG_ARCH_CLOCKSOURCE_INIT=y
CONFIG_CLOCKSOURCE_VALIDATE_LAST_CYCLE=y
CONFIG_GENERIC_TIME_VSYSCALL=y
CONFIG_GENERIC_CLOCKEVENTS=y
CONFIG_GENERIC_CLOCKEVENTS_BROADCAST=y
CONFIG_GENERIC_CLOCKEVENTS_MIN_ADJUST=y
CONFIG_GENERIC_CMOS_UPDATE=y

#
# Timers subsystem
#
CONFIG_TICK_ONESHOT=y
CONFIG_NO_HZ_COMMON=y
# CONFIG_HZ_PERIODIC is not set
# CONFIG_NO_HZ_IDLE is not set
CONFIG_NO_HZ_FULL=y
CONFIG_CONTEXT_TRACKING=y
# CONFIG_CONTEXT_TRACKING_FORCE is not set
CONFIG_NO_HZ=y
CONFIG_HIGH_RES_TIMERS=y
# end of Timers subsystem

# CONFIG_PREEMPT_NONE is not set
CONFIG_PREEMPT_VOLUNTARY=y
# CONFIG_PREEMPT is not set
CONFIG_PREEMPT_COUNT=y

#
# CPU/Task time and stats accounting
#
CONFIG_VIRT_CPU_ACCOUNTING=y
CONFIG_VIRT_CPU_ACCOUNTING_GEN=y
# CONFIG_IRQ_TIME_ACCOUNTING is not set
CONFIG_HAVE_SCHED_AVG_IRQ=y
CONFIG_BSD_PROCESS_ACCT=y
CONFIG_BSD_PROCESS_ACCT_V3=y
CONFIG_TASKSTATS=y
CONFIG_TASK_DELAY_ACCT=y
CONFIG_TASK_XACCT=y
CONFIG_TASK_IO_ACCOUNTING=y
# CONFIG_PSI is not set
# end of CPU/Task time and stats accounting

CONFIG_CPU_ISOLATION=y

#
# RCU Subsystem
#
CONFIG_TREE_RCU=y
# CONFIG_RCU_EXPERT is not set
CONFIG_SRCU=y
CONFIG_TREE_SRCU=y
CONFIG_TASKS_RCU=y
CONFIG_RCU_STALL_COMMON=y
CONFIG_RCU_NEED_SEGCBLIST=y
CONFIG_RCU_NOCB_CPU=y
# end of RCU Subsystem

CONFIG_BUILD_BIN2C=y
CONFIG_IKCONFIG=y
CONFIG_IKCONFIG_PROC=y
# CONFIG_IKHEADERS is not set
CONFIG_LOG_BUF_SHIFT=20
CONFIG_LOG_CPU_MAX_BUF_SHIFT=12
CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=13
CONFIG_HAVE_UNSTABLE_SCHED_CLOCK=y

#
# Scheduler features
#
# CONFIG_UCLAMP_TASK is not set
# end of Scheduler features

CONFIG_ARCH_SUPPORTS_NUMA_BALANCING=y
CONFIG_ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH=y
CONFIG_CC_HAS_INT128=y
CONFIG_ARCH_SUPPORTS_INT128=y
CONFIG_NUMA_BALANCING=y
CONFIG_NUMA_BALANCING_DEFAULT_ENABLED=y
CONFIG_CGROUPS=y
CONFIG_PAGE_COUNTER=y
CONFIG_MEMCG=y
CONFIG_MEMCG_SWAP=y
CONFIG_MEMCG_SWAP_ENABLED=y
CONFIG_MEMCG_KMEM=y
CONFIG_BLK_CGROUP=y
CONFIG_CGROUP_WRITEBACK=y
CONFIG_CGROUP_SCHED=y
CONFIG_FAIR_GROUP_SCHED=y
CONFIG_CFS_BANDWIDTH=y
CONFIG_RT_GROUP_SCHED=y
CONFIG_CGROUP_PIDS=y
CONFIG_CGROUP_RDMA=y
CONFIG_CGROUP_FREEZER=y
CONFIG_CGROUP_HUGETLB=y
CONFIG_CPUSETS=y
CONFIG_PROC_PID_CPUSET=y
CONFIG_CGROUP_DEVICE=y
CONFIG_CGROUP_CPUACCT=y
CONFIG_CGROUP_PERF=y
CONFIG_CGROUP_BPF=y
# CONFIG_CGROUP_DEBUG is not set
CONFIG_SOCK_CGROUP_DATA=y
CONFIG_NAMESPACES=y
CONFIG_UTS_NS=y
CONFIG_TIME_NS=y
CONFIG_IPC_NS=y
CONFIG_USER_NS=y
CONFIG_PID_NS=y
CONFIG_NET_NS=y
CONFIG_CHECKPOINT_RESTORE=y
CONFIG_SCHED_AUTOGROUP=y
# CONFIG_SYSFS_DEPRECATED is not set
CONFIG_RELAY=y
CONFIG_BLK_DEV_INITRD=y
CONFIG_INITRAMFS_SOURCE=""
CONFIG_RD_GZIP=y
CONFIG_RD_BZIP2=y
CONFIG_RD_LZMA=y
CONFIG_RD_XZ=y
CONFIG_RD_LZO=y
CONFIG_RD_LZ4=y
# CONFIG_BOOT_CONFIG is not set
CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y
# CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
CONFIG_SYSCTL=y
CONFIG_HAVE_UID16=y
CONFIG_SYSCTL_EXCEPTION_TRACE=y
CONFIG_HAVE_PCSPKR_PLATFORM=y
CONFIG_BPF=y
CONFIG_EXPERT=y
CONFIG_UID16=y
CONFIG_MULTIUSER=y
CONFIG_SGETMASK_SYSCALL=y
CONFIG_SYSFS_SYSCALL=y
CONFIG_FHANDLE=y
CONFIG_POSIX_TIMERS=y
CONFIG_PRINTK=y
CONFIG_PRINTK_NMI=y
CONFIG_BUG=y
CONFIG_ELF_CORE=y
CONFIG_PCSPKR_PLATFORM=y
CONFIG_BASE_FULL=y
CONFIG_FUTEX=y
CONFIG_FUTEX_PI=y
CONFIG_EPOLL=y
CONFIG_SIGNALFD=y
CONFIG_TIMERFD=y
CONFIG_EVENTFD=y
CONFIG_SHMEM=y
CONFIG_AIO=y
CONFIG_IO_URING=y
CONFIG_ADVISE_SYSCALLS=y
CONFIG_MEMBARRIER=y
CONFIG_KALLSYMS=y
CONFIG_KALLSYMS_ALL=y
CONFIG_KALLSYMS_ABSOLUTE_PERCPU=y
CONFIG_KALLSYMS_BASE_RELATIVE=y
CONFIG_BPF_SYSCALL=y
CONFIG_ARCH_WANT_DEFAULT_BPF_JIT=y
CONFIG_BPF_JIT_ALWAYS_ON=y
CONFIG_BPF_JIT_DEFAULT_ON=y
CONFIG_USERFAULTFD=y
CONFIG_ARCH_HAS_MEMBARRIER_SYNC_CORE=y
CONFIG_RSEQ=y
# CONFIG_DEBUG_RSEQ is not set
CONFIG_EMBEDDED=y
CONFIG_HAVE_PERF_EVENTS=y
# CONFIG_PC104 is not set

#
# Kernel Performance Events And Counters
#
CONFIG_PERF_EVENTS=y
# CONFIG_DEBUG_PERF_USE_VMALLOC is not set
# end of Kernel Performance Events And Counters

CONFIG_VM_EVENT_COUNTERS=y
CONFIG_SLUB_DEBUG=y
# CONFIG_SLUB_MEMCG_SYSFS_ON is not set
# CONFIG_COMPAT_BRK is not set
# CONFIG_SLAB is not set
CONFIG_SLUB=y
# CONFIG_SLOB is not set
CONFIG_SLAB_MERGE_DEFAULT=y
# CONFIG_SLAB_FREELIST_RANDOM is not set
# CONFIG_SLAB_FREELIST_HARDENED is not set
# CONFIG_SHUFFLE_PAGE_ALLOCATOR is not set
CONFIG_SLUB_CPU_PARTIAL=y
CONFIG_SYSTEM_DATA_VERIFICATION=y
CONFIG_PROFILING=y
CONFIG_TRACEPOINTS=y
# end of General setup

CONFIG_64BIT=y
CONFIG_X86_64=y
CONFIG_X86=y
CONFIG_INSTRUCTION_DECODER=y
CONFIG_OUTPUT_FORMAT="elf64-x86-64"
CONFIG_ARCH_DEFCONFIG="arch/x86/configs/x86_64_defconfig"
CONFIG_LOCKDEP_SUPPORT=y
CONFIG_STACKTRACE_SUPPORT=y
CONFIG_MMU=y
CONFIG_ARCH_MMAP_RND_BITS_MIN=28
CONFIG_ARCH_MMAP_RND_BITS_MAX=32
CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MIN=8
CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX=16
CONFIG_GENERIC_ISA_DMA=y
CONFIG_GENERIC_BUG=y
CONFIG_GENERIC_BUG_RELATIVE_POINTERS=y
CONFIG_ARCH_MAY_HAVE_PC_FDC=y
CONFIG_GENERIC_CALIBRATE_DELAY=y
CONFIG_ARCH_HAS_CPU_RELAX=y
CONFIG_ARCH_HAS_CACHE_LINE_SIZE=y
CONFIG_ARCH_HAS_FILTER_PGPROT=y
CONFIG_HAVE_SETUP_PER_CPU_AREA=y
CONFIG_NEED_PER_CPU_EMBED_FIRST_CHUNK=y
CONFIG_NEED_PER_CPU_PAGE_FIRST_CHUNK=y
CONFIG_ARCH_HIBERNATION_POSSIBLE=y
CONFIG_ARCH_SUSPEND_POSSIBLE=y
CONFIG_ARCH_WANT_GENERAL_HUGETLB=y
CONFIG_ZONE_DMA32=y
CONFIG_AUDIT_ARCH=y
CONFIG_ARCH_SUPPORTS_DEBUG_PAGEALLOC=y
CONFIG_HAVE_INTEL_TXT=y
CONFIG_X86_64_SMP=y
CONFIG_ARCH_SUPPORTS_UPROBES=y
CONFIG_FIX_EARLYCON_MEM=y
CONFIG_DYNAMIC_PHYSICAL_MASK=y
CONFIG_PGTABLE_LEVELS=5
CONFIG_CC_HAS_SANE_STACKPROTECTOR=y

#
# Processor type and features
#
CONFIG_ZONE_DMA=y
CONFIG_SMP=y
CONFIG_X86_FEATURE_NAMES=y
CONFIG_X86_X2APIC=y
CONFIG_X86_MPPARSE=y
# CONFIG_GOLDFISH is not set
CONFIG_RETPOLINE=y
CONFIG_X86_CPU_RESCTRL=y
CONFIG_X86_EXTENDED_PLATFORM=y
# CONFIG_X86_NUMACHIP is not set
# CONFIG_X86_VSMP is not set
CONFIG_X86_UV=y
# CONFIG_X86_GOLDFISH is not set
# CONFIG_X86_INTEL_MID is not set
CONFIG_X86_INTEL_LPSS=y
CONFIG_X86_AMD_PLATFORM_DEVICE=y
CONFIG_IOSF_MBI=y
# CONFIG_IOSF_MBI_DEBUG is not set
CONFIG_X86_SUPPORTS_MEMORY_FAILURE=y
# CONFIG_SCHED_OMIT_FRAME_POINTER is not set
CONFIG_HYPERVISOR_GUEST=y
CONFIG_PARAVIRT=y
CONFIG_PARAVIRT_XXL=y
# CONFIG_PARAVIRT_DEBUG is not set
CONFIG_PARAVIRT_SPINLOCKS=y
CONFIG_X86_HV_CALLBACK_VECTOR=y
CONFIG_XEN=y
CONFIG_XEN_PV=y
CONFIG_XEN_PV_SMP=y
# CONFIG_XEN_DOM0 is not set
CONFIG_XEN_PVHVM=y
CONFIG_XEN_PVHVM_SMP=y
CONFIG_XEN_512GB=y
CONFIG_XEN_SAVE_RESTORE=y
# CONFIG_XEN_DEBUG_FS is not set
# CONFIG_XEN_PVH is not set
CONFIG_KVM_GUEST=y
CONFIG_ARCH_CPUIDLE_HALTPOLL=y
# CONFIG_PVH is not set
# CONFIG_KVM_DEBUG_FS is not set
CONFIG_PARAVIRT_TIME_ACCOUNTING=y
CONFIG_PARAVIRT_CLOCK=y
# CONFIG_JAILHOUSE_GUEST is not set
# CONFIG_ACRN_GUEST is not set
# CONFIG_MK8 is not set
# CONFIG_MPSC is not set
# CONFIG_MCORE2 is not set
# CONFIG_MATOM is not set
CONFIG_GENERIC_CPU=y
CONFIG_X86_INTERNODE_CACHE_SHIFT=6
CONFIG_X86_L1_CACHE_SHIFT=6
CONFIG_X86_TSC=y
CONFIG_X86_CMPXCHG64=y
CONFIG_X86_CMOV=y
CONFIG_X86_MINIMUM_CPU_FAMILY=64
CONFIG_X86_DEBUGCTLMSR=y
CONFIG_IA32_FEAT_CTL=y
CONFIG_X86_VMX_FEATURE_NAMES=y
# CONFIG_PROCESSOR_SELECT is not set
CONFIG_CPU_SUP_INTEL=y
CONFIG_CPU_SUP_AMD=y
CONFIG_CPU_SUP_HYGON=y
CONFIG_CPU_SUP_CENTAUR=y
CONFIG_CPU_SUP_ZHAOXIN=y
CONFIG_HPET_TIMER=y
CONFIG_HPET_EMULATE_RTC=y
CONFIG_DMI=y
CONFIG_GART_IOMMU=y
CONFIG_MAXSMP=y
CONFIG_NR_CPUS_RANGE_BEGIN=8192
CONFIG_NR_CPUS_RANGE_END=8192
CONFIG_NR_CPUS_DEFAULT=8192
CONFIG_NR_CPUS=8192
CONFIG_SCHED_SMT=y
CONFIG_SCHED_MC=y
CONFIG_SCHED_MC_PRIO=y
CONFIG_X86_LOCAL_APIC=y
CONFIG_X86_IO_APIC=y
CONFIG_X86_REROUTE_FOR_BROKEN_BOOT_IRQS=y
CONFIG_X86_MCE=y
CONFIG_X86_MCELOG_LEGACY=y
CONFIG_X86_MCE_INTEL=y
CONFIG_X86_MCE_AMD=y
CONFIG_X86_MCE_THRESHOLD=y
CONFIG_X86_MCE_INJECT=m
CONFIG_X86_THERMAL_VECTOR=y

#
# Performance monitoring
#
CONFIG_PERF_EVENTS_INTEL_UNCORE=y
CONFIG_PERF_EVENTS_INTEL_RAPL=y
CONFIG_PERF_EVENTS_INTEL_CSTATE=y
# CONFIG_PERF_EVENTS_AMD_POWER is not set
# end of Performance monitoring

CONFIG_X86_16BIT=y
CONFIG_X86_ESPFIX64=y
CONFIG_X86_VSYSCALL_EMULATION=y
CONFIG_X86_IOPL_IOPERM=y
CONFIG_I8K=m
CONFIG_MICROCODE=y
CONFIG_MICROCODE_INTEL=y
CONFIG_MICROCODE_AMD=y
CONFIG_MICROCODE_OLD_INTERFACE=y
CONFIG_X86_MSR=y
CONFIG_X86_CPUID=y
CONFIG_X86_5LEVEL=y
CONFIG_X86_DIRECT_GBPAGES=y
# CONFIG_X86_CPA_STATISTICS is not set
CONFIG_AMD_MEM_ENCRYPT=y
# CONFIG_AMD_MEM_ENCRYPT_ACTIVE_BY_DEFAULT is not set
CONFIG_NUMA=y
CONFIG_AMD_NUMA=y
CONFIG_X86_64_ACPI_NUMA=y
CONFIG_NODES_SPAN_OTHER_NODES=y
CONFIG_NUMA_EMU=y
CONFIG_NODES_SHIFT=10
CONFIG_ARCH_SPARSEMEM_ENABLE=y
CONFIG_ARCH_SPARSEMEM_DEFAULT=y
CONFIG_ARCH_SELECT_MEMORY_MODEL=y
CONFIG_ARCH_MEMORY_PROBE=y
CONFIG_ARCH_PROC_KCORE_TEXT=y
CONFIG_ILLEGAL_POINTER_VALUE=0xdead000000000000
CONFIG_X86_PMEM_LEGACY_DEVICE=y
CONFIG_X86_PMEM_LEGACY=m
CONFIG_X86_CHECK_BIOS_CORRUPTION=y
# CONFIG_X86_BOOTPARAM_MEMORY_CORRUPTION_CHECK is not set
CONFIG_X86_RESERVE_LOW=64
CONFIG_MTRR=y
CONFIG_MTRR_SANITIZER=y
CONFIG_MTRR_SANITIZER_ENABLE_DEFAULT=1
CONFIG_MTRR_SANITIZER_SPARE_REG_NR_DEFAULT=1
CONFIG_X86_PAT=y
CONFIG_ARCH_USES_PG_UNCACHED=y
CONFIG_ARCH_RANDOM=y
CONFIG_X86_SMAP=y
CONFIG_X86_UMIP=y
CONFIG_X86_INTEL_MEMORY_PROTECTION_KEYS=y
CONFIG_X86_INTEL_TSX_MODE_OFF=y
# CONFIG_X86_INTEL_TSX_MODE_ON is not set
# CONFIG_X86_INTEL_TSX_MODE_AUTO is not set
CONFIG_EFI=y
CONFIG_EFI_STUB=y
CONFIG_EFI_MIXED=y
CONFIG_SECCOMP=y
# CONFIG_HZ_100 is not set
# CONFIG_HZ_250 is not set
# CONFIG_HZ_300 is not set
CONFIG_HZ_1000=y
CONFIG_HZ=1000
CONFIG_SCHED_HRTICK=y
CONFIG_KEXEC=y
CONFIG_KEXEC_FILE=y
CONFIG_ARCH_HAS_KEXEC_PURGATORY=y
# CONFIG_KEXEC_SIG is not set
CONFIG_CRASH_DUMP=y
CONFIG_KEXEC_JUMP=y
CONFIG_PHYSICAL_START=0x1000000
CONFIG_RELOCATABLE=y
CONFIG_RANDOMIZE_BASE=y
CONFIG_X86_NEED_RELOCS=y
CONFIG_PHYSICAL_ALIGN=0x200000
CONFIG_DYNAMIC_MEMORY_LAYOUT=y
CONFIG_RANDOMIZE_MEMORY=y
CONFIG_RANDOMIZE_MEMORY_PHYSICAL_PADDING=0xa
CONFIG_HOTPLUG_CPU=y
CONFIG_BOOTPARAM_HOTPLUG_CPU0=y
# CONFIG_DEBUG_HOTPLUG_CPU0 is not set
# CONFIG_COMPAT_VDSO is not set
CONFIG_LEGACY_VSYSCALL_EMULATE=y
# CONFIG_LEGACY_VSYSCALL_XONLY is not set
# CONFIG_LEGACY_VSYSCALL_NONE is not set
# CONFIG_CMDLINE_BOOL is not set
CONFIG_MODIFY_LDT_SYSCALL=y
CONFIG_HAVE_LIVEPATCH=y
CONFIG_LIVEPATCH=y
# end of Processor type and features

CONFIG_ARCH_HAS_ADD_PAGES=y
CONFIG_ARCH_ENABLE_MEMORY_HOTPLUG=y
CONFIG_ARCH_ENABLE_MEMORY_HOTREMOVE=y
CONFIG_USE_PERCPU_NUMA_NODE_ID=y
CONFIG_ARCH_ENABLE_SPLIT_PMD_PTLOCK=y
CONFIG_ARCH_ENABLE_HUGEPAGE_MIGRATION=y
CONFIG_ARCH_ENABLE_THP_MIGRATION=y

#
# Power management and ACPI options
#
CONFIG_ARCH_HIBERNATION_HEADER=y
CONFIG_SUSPEND=y
CONFIG_SUSPEND_FREEZER=y
# CONFIG_SUSPEND_SKIP_SYNC is not set
CONFIG_HIBERNATE_CALLBACKS=y
CONFIG_HIBERNATION=y
CONFIG_PM_STD_PARTITION=""
CONFIG_PM_SLEEP=y
CONFIG_PM_SLEEP_SMP=y
# CONFIG_PM_AUTOSLEEP is not set
# CONFIG_PM_WAKELOCKS is not set
CONFIG_PM=y
CONFIG_PM_DEBUG=y
CONFIG_PM_ADVANCED_DEBUG=y
# CONFIG_PM_TEST_SUSPEND is not set
CONFIG_PM_SLEEP_DEBUG=y
# CONFIG_DPM_WATCHDOG is not set
CONFIG_PM_TRACE=y
CONFIG_PM_TRACE_RTC=y
CONFIG_PM_CLK=y
# CONFIG_WQ_POWER_EFFICIENT_DEFAULT is not set
# CONFIG_ENERGY_MODEL is not set
CONFIG_ARCH_SUPPORTS_ACPI=y
CONFIG_ACPI=y
CONFIG_ACPI_LEGACY_TABLES_LOOKUP=y
CONFIG_ARCH_MIGHT_HAVE_ACPI_PDC=y
CONFIG_ACPI_SYSTEM_POWER_STATES_SUPPORT=y
# CONFIG_ACPI_DEBUGGER is not set
CONFIG_ACPI_SPCR_TABLE=y
CONFIG_ACPI_LPIT=y
CONFIG_ACPI_SLEEP=y
# CONFIG_ACPI_PROCFS_POWER is not set
CONFIG_ACPI_REV_OVERRIDE_POSSIBLE=y
CONFIG_ACPI_EC_DEBUGFS=m
CONFIG_ACPI_AC=y
CONFIG_ACPI_BATTERY=y
CONFIG_ACPI_BUTTON=y
CONFIG_ACPI_VIDEO=m
CONFIG_ACPI_FAN=y
# CONFIG_ACPI_TAD is not set
CONFIG_ACPI_DOCK=y
CONFIG_ACPI_CPU_FREQ_PSS=y
CONFIG_ACPI_PROCESSOR_CSTATE=y
CONFIG_ACPI_PROCESSOR_IDLE=y
CONFIG_ACPI_CPPC_LIB=y
CONFIG_ACPI_PROCESSOR=y
CONFIG_ACPI_IPMI=m
CONFIG_ACPI_HOTPLUG_CPU=y
CONFIG_ACPI_PROCESSOR_AGGREGATOR=m
CONFIG_ACPI_THERMAL=y
CONFIG_ARCH_HAS_ACPI_TABLE_UPGRADE=y
CONFIG_ACPI_TABLE_UPGRADE=y
# CONFIG_ACPI_DEBUG is not set
CONFIG_ACPI_PCI_SLOT=y
CONFIG_ACPI_CONTAINER=y
CONFIG_ACPI_HOTPLUG_MEMORY=y
CONFIG_ACPI_HOTPLUG_IOAPIC=y
CONFIG_ACPI_SBS=m
CONFIG_ACPI_HED=y
CONFIG_ACPI_CUSTOM_METHOD=m
CONFIG_ACPI_BGRT=y
# CONFIG_ACPI_REDUCED_HARDWARE_ONLY is not set
CONFIG_ACPI_NFIT=m
# CONFIG_NFIT_SECURITY_DEBUG is not set
CONFIG_ACPI_NUMA=y
# CONFIG_ACPI_HMAT is not set
CONFIG_HAVE_ACPI_APEI=y
CONFIG_HAVE_ACPI_APEI_NMI=y
CONFIG_ACPI_APEI=y
CONFIG_ACPI_APEI_GHES=y
CONFIG_ACPI_APEI_PCIEAER=y
CONFIG_ACPI_APEI_MEMORY_FAILURE=y
CONFIG_ACPI_APEI_EINJ=m
CONFIG_ACPI_APEI_ERST_DEBUG=y
# CONFIG_DPTF_POWER is not set
CONFIG_ACPI_WATCHDOG=y
CONFIG_ACPI_EXTLOG=m
CONFIG_ACPI_ADXL=y
# CONFIG_PMIC_OPREGION is not set
# CONFIG_ACPI_CONFIGFS is not set
CONFIG_X86_PM_TIMER=y
CONFIG_SFI=y

#
# CPU Frequency scaling
#
CONFIG_CPU_FREQ=y
CONFIG_CPU_FREQ_GOV_ATTR_SET=y
CONFIG_CPU_FREQ_GOV_COMMON=y
CONFIG_CPU_FREQ_STAT=y
# CONFIG_CPU_FREQ_DEFAULT_GOV_PERFORMANCE is not set
# CONFIG_CPU_FREQ_DEFAULT_GOV_POWERSAVE is not set
# CONFIG_CPU_FREQ_DEFAULT_GOV_USERSPACE is not set
CONFIG_CPU_FREQ_DEFAULT_GOV_ONDEMAND=y
# CONFIG_CPU_FREQ_DEFAULT_GOV_CONSERVATIVE is not set
# CONFIG_CPU_FREQ_DEFAULT_GOV_SCHEDUTIL is not set
CONFIG_CPU_FREQ_GOV_PERFORMANCE=y
CONFIG_CPU_FREQ_GOV_POWERSAVE=y
CONFIG_CPU_FREQ_GOV_USERSPACE=y
CONFIG_CPU_FREQ_GOV_ONDEMAND=y
CONFIG_CPU_FREQ_GOV_CONSERVATIVE=y
CONFIG_CPU_FREQ_GOV_SCHEDUTIL=y

#
# CPU frequency scaling drivers
#
CONFIG_X86_INTEL_PSTATE=y
CONFIG_X86_PCC_CPUFREQ=m
CONFIG_X86_ACPI_CPUFREQ=m
CONFIG_X86_ACPI_CPUFREQ_CPB=y
CONFIG_X86_POWERNOW_K8=m
CONFIG_X86_AMD_FREQ_SENSITIVITY=m
# CONFIG_X86_SPEEDSTEP_CENTRINO is not set
CONFIG_X86_P4_CLOCKMOD=m

#
# shared options
#
CONFIG_X86_SPEEDSTEP_LIB=m
# end of CPU Frequency scaling

#
# CPU Idle
#
CONFIG_CPU_IDLE=y
# CONFIG_CPU_IDLE_GOV_LADDER is not set
CONFIG_CPU_IDLE_GOV_MENU=y
# CONFIG_CPU_IDLE_GOV_TEO is not set
# CONFIG_CPU_IDLE_GOV_HALTPOLL is not set
CONFIG_HALTPOLL_CPUIDLE=y
# end of CPU Idle

CONFIG_INTEL_IDLE=y
# end of Power management and ACPI options

#
# Bus options (PCI etc.)
#
CONFIG_PCI_DIRECT=y
CONFIG_PCI_MMCONFIG=y
CONFIG_PCI_XEN=y
CONFIG_MMCONF_FAM10H=y
# CONFIG_PCI_CNB20LE_QUIRK is not set
# CONFIG_ISA_BUS is not set
CONFIG_ISA_DMA_API=y
CONFIG_AMD_NB=y
# CONFIG_X86_SYSFB is not set
# end of Bus options (PCI etc.)

#
# Binary Emulations
#
CONFIG_IA32_EMULATION=y
# CONFIG_X86_X32 is not set
CONFIG_COMPAT_32=y
CONFIG_COMPAT=y
CONFIG_COMPAT_FOR_U64_ALIGNMENT=y
CONFIG_SYSVIPC_COMPAT=y
# end of Binary Emulations

#
# Firmware Drivers
#
CONFIG_EDD=m
# CONFIG_EDD_OFF is not set
CONFIG_FIRMWARE_MEMMAP=y
CONFIG_DMIID=y
CONFIG_DMI_SYSFS=y
CONFIG_DMI_SCAN_MACHINE_NON_EFI_FALLBACK=y
CONFIG_ISCSI_IBFT_FIND=y
CONFIG_ISCSI_IBFT=m
CONFIG_FW_CFG_SYSFS=y
# CONFIG_FW_CFG_SYSFS_CMDLINE is not set
# CONFIG_GOOGLE_FIRMWARE is not set

#
# EFI (Extensible Firmware Interface) Support
#
CONFIG_EFI_VARS=y
CONFIG_EFI_ESRT=y
CONFIG_EFI_VARS_PSTORE=y
CONFIG_EFI_VARS_PSTORE_DEFAULT_DISABLE=y
CONFIG_EFI_RUNTIME_MAP=y
# CONFIG_EFI_FAKE_MEMMAP is not set
CONFIG_EFI_RUNTIME_WRAPPERS=y
# CONFIG_EFI_BOOTLOADER_CONTROL is not set
# CONFIG_EFI_CAPSULE_LOADER is not set
# CONFIG_EFI_TEST is not set
CONFIG_APPLE_PROPERTIES=y
# CONFIG_RESET_ATTACK_MITIGATION is not set
# CONFIG_EFI_RCI2_TABLE is not set
# CONFIG_EFI_DISABLE_PCI_DMA is not set
# end of EFI (Extensible Firmware Interface) Support

CONFIG_UEFI_CPER=y
CONFIG_UEFI_CPER_X86=y
CONFIG_EFI_DEV_PATH_PARSER=y
CONFIG_EFI_EARLYCON=y

#
# Tegra firmware driver
#
# end of Tegra firmware driver
# end of Firmware Drivers

CONFIG_HAVE_KVM=y
CONFIG_HAVE_KVM_IRQCHIP=y
CONFIG_HAVE_KVM_IRQFD=y
CONFIG_HAVE_KVM_IRQ_ROUTING=y
CONFIG_HAVE_KVM_EVENTFD=y
CONFIG_KVM_MMIO=y
CONFIG_KVM_ASYNC_PF=y
CONFIG_HAVE_KVM_MSI=y
CONFIG_HAVE_KVM_CPU_RELAX_INTERCEPT=y
CONFIG_KVM_VFIO=y
CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT=y
CONFIG_KVM_COMPAT=y
CONFIG_HAVE_KVM_IRQ_BYPASS=y
CONFIG_HAVE_KVM_NO_POLL=y
CONFIG_VIRTUALIZATION=y
CONFIG_KVM=y
CONFIG_KVM_WERROR=y
CONFIG_KVM_INTEL=y
CONFIG_KVM_AMD=y
CONFIG_KVM_MMU_AUDIT=y
CONFIG_VHOST_NET=m
# CONFIG_VHOST_SCSI is not set
CONFIG_VHOST_VSOCK=m
CONFIG_VHOST=m
# CONFIG_VHOST_CROSS_ENDIAN_LEGACY is not set

#
# General architecture-dependent options
#
CONFIG_CRASH_CORE=y
CONFIG_KEXEC_CORE=y
CONFIG_HOTPLUG_SMT=y
CONFIG_OPROFILE=m
CONFIG_OPROFILE_EVENT_MULTIPLEX=y
CONFIG_HAVE_OPROFILE=y
CONFIG_OPROFILE_NMI_TIMER=y
CONFIG_KPROBES=y
CONFIG_JUMP_LABEL=y
# CONFIG_STATIC_KEYS_SELFTEST is not set
CONFIG_OPTPROBES=y
CONFIG_KPROBES_ON_FTRACE=y
CONFIG_UPROBES=y
CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS=y
CONFIG_ARCH_USE_BUILTIN_BSWAP=y
CONFIG_KRETPROBES=y
CONFIG_USER_RETURN_NOTIFIER=y
CONFIG_HAVE_IOREMAP_PROT=y
CONFIG_HAVE_KPROBES=y
CONFIG_HAVE_KRETPROBES=y
CONFIG_HAVE_OPTPROBES=y
CONFIG_HAVE_KPROBES_ON_FTRACE=y
CONFIG_HAVE_FUNCTION_ERROR_INJECTION=y
CONFIG_HAVE_NMI=y
CONFIG_HAVE_ARCH_TRACEHOOK=y
CONFIG_HAVE_DMA_CONTIGUOUS=y
CONFIG_GENERIC_SMP_IDLE_THREAD=y
CONFIG_ARCH_HAS_FORTIFY_SOURCE=y
CONFIG_ARCH_HAS_SET_MEMORY=y
CONFIG_ARCH_HAS_SET_DIRECT_MAP=y
CONFIG_HAVE_ARCH_THREAD_STRUCT_WHITELIST=y
CONFIG_ARCH_WANTS_DYNAMIC_TASK_STRUCT=y
CONFIG_HAVE_ASM_MODVERSIONS=y
CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
CONFIG_HAVE_RSEQ=y
CONFIG_HAVE_FUNCTION_ARG_ACCESS_API=y
CONFIG_HAVE_CLK=y
CONFIG_HAVE_HW_BREAKPOINT=y
CONFIG_HAVE_MIXED_BREAKPOINTS_REGS=y
CONFIG_HAVE_USER_RETURN_NOTIFIER=y
CONFIG_HAVE_PERF_EVENTS_NMI=y
CONFIG_HAVE_HARDLOCKUP_DETECTOR_PERF=y
CONFIG_HAVE_PERF_REGS=y
CONFIG_HAVE_PERF_USER_STACK_DUMP=y
CONFIG_HAVE_ARCH_JUMP_LABEL=y
CONFIG_HAVE_ARCH_JUMP_LABEL_RELATIVE=y
CONFIG_MMU_GATHER_TABLE_FREE=y
CONFIG_MMU_GATHER_RCU_TABLE_FREE=y
CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG=y
CONFIG_HAVE_ALIGNED_STRUCT_PAGE=y
CONFIG_HAVE_CMPXCHG_LOCAL=y
CONFIG_HAVE_CMPXCHG_DOUBLE=y
CONFIG_ARCH_WANT_COMPAT_IPC_PARSE_VERSION=y
CONFIG_ARCH_WANT_OLD_COMPAT_IPC=y
CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
CONFIG_SECCOMP_FILTER=y
CONFIG_HAVE_ARCH_STACKLEAK=y
CONFIG_HAVE_STACKPROTECTOR=y
CONFIG_CC_HAS_STACKPROTECTOR_NONE=y
CONFIG_STACKPROTECTOR=y
CONFIG_STACKPROTECTOR_STRONG=y
CONFIG_HAVE_ARCH_WITHIN_STACK_FRAMES=y
CONFIG_HAVE_CONTEXT_TRACKING=y
CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=y
CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
CONFIG_HAVE_MOVE_PMD=y
CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD=y
CONFIG_HAVE_ARCH_HUGE_VMAP=y
CONFIG_ARCH_WANT_HUGE_PMD_SHARE=y
CONFIG_HAVE_ARCH_SOFT_DIRTY=y
CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
CONFIG_MODULES_USE_ELF_RELA=y
CONFIG_HAVE_IRQ_EXIT_ON_IRQ_STACK=y
CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
CONFIG_HAVE_ARCH_MMAP_RND_BITS=y
CONFIG_HAVE_EXIT_THREAD=y
CONFIG_ARCH_MMAP_RND_BITS=28
CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS=y
CONFIG_ARCH_MMAP_RND_COMPAT_BITS=8
CONFIG_HAVE_ARCH_COMPAT_MMAP_BASES=y
CONFIG_HAVE_COPY_THREAD_TLS=y
CONFIG_HAVE_STACK_VALIDATION=y
CONFIG_HAVE_RELIABLE_STACKTRACE=y
CONFIG_OLD_SIGSUSPEND3=y
CONFIG_COMPAT_OLD_SIGACTION=y
CONFIG_COMPAT_32BIT_TIME=y
CONFIG_HAVE_ARCH_VMAP_STACK=y
CONFIG_VMAP_STACK=y
CONFIG_ARCH_HAS_STRICT_KERNEL_RWX=y
CONFIG_STRICT_KERNEL_RWX=y
CONFIG_ARCH_HAS_STRICT_MODULE_RWX=y
CONFIG_STRICT_MODULE_RWX=y
CONFIG_HAVE_ARCH_PREL32_RELOCATIONS=y
CONFIG_ARCH_USE_MEMREMAP_PROT=y
# CONFIG_LOCK_EVENT_COUNTS is not set
CONFIG_ARCH_HAS_MEM_ENCRYPT=y

#
# GCOV-based kernel profiling
#
# CONFIG_GCOV_KERNEL is not set
CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
# end of GCOV-based kernel profiling

CONFIG_PLUGIN_HOSTCC="g++"
CONFIG_HAVE_GCC_PLUGINS=y
CONFIG_GCC_PLUGINS=y
# CONFIG_GCC_PLUGIN_CYC_COMPLEXITY is not set
# CONFIG_GCC_PLUGIN_LATENT_ENTROPY is not set
# CONFIG_GCC_PLUGIN_RANDSTRUCT is not set
# end of General architecture-dependent options

CONFIG_RT_MUTEXES=y
CONFIG_BASE_SMALL=0
CONFIG_MODULE_SIG_FORMAT=y
CONFIG_MODULES=y
CONFIG_MODULE_FORCE_LOAD=y
CONFIG_MODULE_UNLOAD=y
# CONFIG_MODULE_FORCE_UNLOAD is not set
# CONFIG_MODVERSIONS is not set
# CONFIG_MODULE_SRCVERSION_ALL is not set
CONFIG_MODULE_SIG=y
# CONFIG_MODULE_SIG_FORCE is not set
CONFIG_MODULE_SIG_ALL=y
# CONFIG_MODULE_SIG_SHA1 is not set
# CONFIG_MODULE_SIG_SHA224 is not set
CONFIG_MODULE_SIG_SHA256=y
# CONFIG_MODULE_SIG_SHA384 is not set
# CONFIG_MODULE_SIG_SHA512 is not set
CONFIG_MODULE_SIG_HASH="sha256"
# CONFIG_MODULE_COMPRESS is not set
# CONFIG_MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS is not set
# CONFIG_UNUSED_SYMBOLS is not set
# CONFIG_TRIM_UNUSED_KSYMS is not set
CONFIG_MODULES_TREE_LOOKUP=y
CONFIG_BLOCK=y
CONFIG_BLK_SCSI_REQUEST=y
CONFIG_BLK_CGROUP_RWSTAT=y
CONFIG_BLK_DEV_BSG=y
CONFIG_BLK_DEV_BSGLIB=y
CONFIG_BLK_DEV_INTEGRITY=y
CONFIG_BLK_DEV_INTEGRITY_T10=m
CONFIG_BLK_DEV_ZONED=y
CONFIG_BLK_DEV_THROTTLING=y
# CONFIG_BLK_DEV_THROTTLING_LOW is not set
# CONFIG_BLK_CMDLINE_PARSER is not set
# CONFIG_BLK_WBT is not set
# CONFIG_BLK_CGROUP_IOLATENCY is not set
# CONFIG_BLK_CGROUP_IOCOST is not set
CONFIG_BLK_DEBUG_FS=y
CONFIG_BLK_DEBUG_FS_ZONED=y
# CONFIG_BLK_SED_OPAL is not set

#
# Partition Types
#
CONFIG_PARTITION_ADVANCED=y
# CONFIG_ACORN_PARTITION is not set
# CONFIG_AIX_PARTITION is not set
CONFIG_OSF_PARTITION=y
CONFIG_AMIGA_PARTITION=y
# CONFIG_ATARI_PARTITION is not set
CONFIG_MAC_PARTITION=y
CONFIG_MSDOS_PARTITION=y
CONFIG_BSD_DISKLABEL=y
CONFIG_MINIX_SUBPARTITION=y
CONFIG_SOLARIS_X86_PARTITION=y
CONFIG_UNIXWARE_DISKLABEL=y
# CONFIG_LDM_PARTITION is not set
CONFIG_SGI_PARTITION=y
# CONFIG_ULTRIX_PARTITION is not set
CONFIG_SUN_PARTITION=y
CONFIG_KARMA_PARTITION=y
CONFIG_EFI_PARTITION=y
# CONFIG_SYSV68_PARTITION is not set
# CONFIG_CMDLINE_PARTITION is not set
# end of Partition Types

CONFIG_BLOCK_COMPAT=y
CONFIG_BLK_MQ_PCI=y
CONFIG_BLK_MQ_VIRTIO=y
CONFIG_BLK_MQ_RDMA=y
CONFIG_BLK_PM=y

#
# IO Schedulers
#
CONFIG_MQ_IOSCHED_DEADLINE=y
CONFIG_MQ_IOSCHED_KYBER=y
# CONFIG_IOSCHED_BFQ is not set
# end of IO Schedulers

CONFIG_PREEMPT_NOTIFIERS=y
CONFIG_PADATA=y
CONFIG_ASN1=y
CONFIG_UNINLINE_SPIN_UNLOCK=y
CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=y
CONFIG_MUTEX_SPIN_ON_OWNER=y
CONFIG_RWSEM_SPIN_ON_OWNER=y
CONFIG_LOCK_SPIN_ON_OWNER=y
CONFIG_ARCH_USE_QUEUED_SPINLOCKS=y
CONFIG_QUEUED_SPINLOCKS=y
CONFIG_ARCH_USE_QUEUED_RWLOCKS=y
CONFIG_QUEUED_RWLOCKS=y
CONFIG_ARCH_HAS_SYNC_CORE_BEFORE_USERMODE=y
CONFIG_ARCH_HAS_SYSCALL_WRAPPER=y
CONFIG_FREEZER=y

#
# Executable file formats
#
CONFIG_BINFMT_ELF=y
CONFIG_COMPAT_BINFMT_ELF=y
CONFIG_ELFCORE=y
CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS=y
CONFIG_BINFMT_SCRIPT=y
CONFIG_BINFMT_MISC=m
CONFIG_COREDUMP=y
# end of Executable file formats

#
# Memory Management options
#
CONFIG_SELECT_MEMORY_MODEL=y
CONFIG_SPARSEMEM_MANUAL=y
CONFIG_SPARSEMEM=y
CONFIG_NEED_MULTIPLE_NODES=y
CONFIG_HAVE_MEMORY_PRESENT=y
CONFIG_SPARSEMEM_EXTREME=y
CONFIG_SPARSEMEM_VMEMMAP_ENABLE=y
CONFIG_SPARSEMEM_VMEMMAP=y
CONFIG_HAVE_MEMBLOCK_NODE_MAP=y
CONFIG_HAVE_FAST_GUP=y
CONFIG_MEMORY_ISOLATION=y
CONFIG_HAVE_BOOTMEM_INFO_NODE=y
CONFIG_MEMORY_HOTPLUG=y
CONFIG_MEMORY_HOTPLUG_SPARSE=y
# CONFIG_MEMORY_HOTPLUG_DEFAULT_ONLINE is not set
CONFIG_MEMORY_HOTREMOVE=y
CONFIG_SPLIT_PTLOCK_CPUS=4
CONFIG_MEMORY_BALLOON=y
CONFIG_BALLOON_COMPACTION=y
CONFIG_COMPACTION=y
CONFIG_MIGRATION=y
CONFIG_CONTIG_ALLOC=y
CONFIG_PHYS_ADDR_T_64BIT=y
CONFIG_BOUNCE=y
CONFIG_VIRT_TO_BUS=y
CONFIG_MMU_NOTIFIER=y
CONFIG_KSM=y
CONFIG_DEFAULT_MMAP_MIN_ADDR=4096
CONFIG_ARCH_SUPPORTS_MEMORY_FAILURE=y
CONFIG_MEMORY_FAILURE=y
CONFIG_HWPOISON_INJECT=m
CONFIG_TRANSPARENT_HUGEPAGE=y
CONFIG_TRANSPARENT_HUGEPAGE_ALWAYS=y
# CONFIG_TRANSPARENT_HUGEPAGE_MADVISE is not set
CONFIG_ARCH_WANTS_THP_SWAP=y
CONFIG_THP_SWAP=y
CONFIG_TRANSPARENT_HUGE_PAGECACHE=y
CONFIG_CLEANCACHE=y
CONFIG_FRONTSWAP=y
CONFIG_CMA=y
# CONFIG_CMA_DEBUG is not set
# CONFIG_CMA_DEBUGFS is not set
CONFIG_CMA_AREAS=7
CONFIG_MEM_SOFT_DIRTY=y
CONFIG_ZSWAP=y
CONFIG_ZPOOL=y
CONFIG_ZBUD=y
# CONFIG_Z3FOLD is not set
CONFIG_ZSMALLOC=y
# CONFIG_PGTABLE_MAPPING is not set
# CONFIG_ZSMALLOC_STAT is not set
CONFIG_GENERIC_EARLY_IOREMAP=y
CONFIG_DEFERRED_STRUCT_PAGE_INIT=y
CONFIG_IDLE_PAGE_TRACKING=y
CONFIG_ARCH_HAS_PTE_DEVMAP=y
CONFIG_ZONE_DEVICE=y
CONFIG_DEV_PAGEMAP_OPS=y
# CONFIG_DEVICE_PRIVATE is not set
CONFIG_FRAME_VECTOR=y
CONFIG_ARCH_USES_HIGH_VMA_FLAGS=y
CONFIG_ARCH_HAS_PKEYS=y
# CONFIG_PERCPU_STATS is not set
CONFIG_GUP_BENCHMARK=y
# CONFIG_READ_ONLY_THP_FOR_FS is not set
CONFIG_ARCH_HAS_PTE_SPECIAL=y
CONFIG_MAPPING_DIRTY_HELPERS=y
# end of Memory Management options

CONFIG_NET=y
CONFIG_COMPAT_NETLINK_MESSAGES=y
CONFIG_NET_INGRESS=y
CONFIG_NET_EGRESS=y
CONFIG_SKB_EXTENSIONS=y

#
# Networking options
#
CONFIG_PACKET=y
CONFIG_PACKET_DIAG=m
CONFIG_UNIX=y
CONFIG_UNIX_SCM=y
CONFIG_UNIX_DIAG=m
CONFIG_TLS=m
# CONFIG_TLS_DEVICE is not set
# CONFIG_TLS_TOE is not set
CONFIG_XFRM=y
CONFIG_XFRM_ALGO=y
CONFIG_XFRM_USER=y
# CONFIG_XFRM_INTERFACE is not set
CONFIG_XFRM_SUB_POLICY=y
CONFIG_XFRM_MIGRATE=y
CONFIG_XFRM_STATISTICS=y
CONFIG_XFRM_IPCOMP=m
CONFIG_NET_KEY=m
CONFIG_NET_KEY_MIGRATE=y
# CONFIG_SMC is not set
CONFIG_XDP_SOCKETS=y
# CONFIG_XDP_SOCKETS_DIAG is not set
CONFIG_INET=y
CONFIG_IP_MULTICAST=y
CONFIG_IP_ADVANCED_ROUTER=y
CONFIG_IP_FIB_TRIE_STATS=y
CONFIG_IP_MULTIPLE_TABLES=y
CONFIG_IP_ROUTE_MULTIPATH=y
CONFIG_IP_ROUTE_VERBOSE=y
CONFIG_IP_ROUTE_CLASSID=y
CONFIG_IP_PNP=y
CONFIG_IP_PNP_DHCP=y
# CONFIG_IP_PNP_BOOTP is not set
# CONFIG_IP_PNP_RARP is not set
CONFIG_NET_IPIP=y
CONFIG_NET_IPGRE_DEMUX=y
CONFIG_NET_IP_TUNNEL=y
CONFIG_NET_IPGRE=y
CONFIG_NET_IPGRE_BROADCAST=y
CONFIG_IP_MROUTE_COMMON=y
CONFIG_IP_MROUTE=y
CONFIG_IP_MROUTE_MULTIPLE_TABLES=y
CONFIG_IP_PIMSM_V1=y
CONFIG_IP_PIMSM_V2=y
CONFIG_SYN_COOKIES=y
CONFIG_NET_IPVTI=y
CONFIG_NET_UDP_TUNNEL=y
CONFIG_NET_FOU=y
CONFIG_NET_FOU_IP_TUNNELS=y
CONFIG_INET_AH=m
CONFIG_INET_ESP=m
# CONFIG_INET_ESP_OFFLOAD is not set
# CONFIG_INET_ESPINTCP is not set
CONFIG_INET_IPCOMP=m
CONFIG_INET_XFRM_TUNNEL=m
CONFIG_INET_TUNNEL=y
CONFIG_INET_DIAG=m
CONFIG_INET_TCP_DIAG=m
CONFIG_INET_UDP_DIAG=m
# CONFIG_INET_RAW_DIAG is not set
# CONFIG_INET_DIAG_DESTROY is not set
CONFIG_TCP_CONG_ADVANCED=y
CONFIG_TCP_CONG_BIC=m
CONFIG_TCP_CONG_CUBIC=y
CONFIG_TCP_CONG_WESTWOOD=m
CONFIG_TCP_CONG_HTCP=m
CONFIG_TCP_CONG_HSTCP=m
CONFIG_TCP_CONG_HYBLA=m
CONFIG_TCP_CONG_VEGAS=m
# CONFIG_TCP_CONG_NV is not set
CONFIG_TCP_CONG_SCALABLE=m
CONFIG_TCP_CONG_LP=m
CONFIG_TCP_CONG_VENO=m
CONFIG_TCP_CONG_YEAH=m
CONFIG_TCP_CONG_ILLINOIS=m
CONFIG_TCP_CONG_DCTCP=m
# CONFIG_TCP_CONG_CDG is not set
# CONFIG_TCP_CONG_BBR is not set
CONFIG_DEFAULT_CUBIC=y
# CONFIG_DEFAULT_RENO is not set
CONFIG_DEFAULT_TCP_CONG="cubic"
CONFIG_TCP_MD5SIG=y
CONFIG_IPV6=y
CONFIG_IPV6_ROUTER_PREF=y
CONFIG_IPV6_ROUTE_INFO=y
CONFIG_IPV6_OPTIMISTIC_DAD=y
CONFIG_INET6_AH=m
CONFIG_INET6_ESP=m
# CONFIG_INET6_ESP_OFFLOAD is not set
CONFIG_INET6_IPCOMP=m
CONFIG_IPV6_MIP6=m
# CONFIG_IPV6_ILA is not set
CONFIG_INET6_XFRM_TUNNEL=m
CONFIG_INET6_TUNNEL=y
CONFIG_IPV6_VTI=y
CONFIG_IPV6_SIT=m
CONFIG_IPV6_SIT_6RD=y
CONFIG_IPV6_NDISC_NODETYPE=y
CONFIG_IPV6_TUNNEL=y
CONFIG_IPV6_GRE=y
CONFIG_IPV6_FOU=y
CONFIG_IPV6_FOU_TUNNEL=y
CONFIG_IPV6_MULTIPLE_TABLES=y
# CONFIG_IPV6_SUBTREES is not set
CONFIG_IPV6_MROUTE=y
CONFIG_IPV6_MROUTE_MULTIPLE_TABLES=y
CONFIG_IPV6_PIMSM_V2=y
CONFIG_IPV6_SEG6_LWTUNNEL=y
# CONFIG_IPV6_SEG6_HMAC is not set
CONFIG_IPV6_SEG6_BPF=y
CONFIG_NETLABEL=y
CONFIG_MPTCP=y
CONFIG_MPTCP_IPV6=y
# CONFIG_MPTCP_HMAC_TEST is not set
CONFIG_NETWORK_SECMARK=y
CONFIG_NET_PTP_CLASSIFY=y
CONFIG_NETWORK_PHY_TIMESTAMPING=y
CONFIG_NETFILTER=y
CONFIG_NETFILTER_ADVANCED=y
CONFIG_BRIDGE_NETFILTER=m

#
# Core Netfilter Configuration
#
CONFIG_NETFILTER_INGRESS=y
CONFIG_NETFILTER_NETLINK=m
CONFIG_NETFILTER_FAMILY_BRIDGE=y
CONFIG_NETFILTER_FAMILY_ARP=y
CONFIG_NETFILTER_NETLINK_ACCT=m
CONFIG_NETFILTER_NETLINK_QUEUE=m
CONFIG_NETFILTER_NETLINK_LOG=m
CONFIG_NETFILTER_NETLINK_OSF=m
CONFIG_NF_CONNTRACK=m
CONFIG_NF_LOG_COMMON=m
# CONFIG_NF_LOG_NETDEV is not set
CONFIG_NETFILTER_CONNCOUNT=m
CONFIG_NF_CONNTRACK_MARK=y
CONFIG_NF_CONNTRACK_SECMARK=y
CONFIG_NF_CONNTRACK_ZONES=y
CONFIG_NF_CONNTRACK_PROCFS=y
CONFIG_NF_CONNTRACK_EVENTS=y
CONFIG_NF_CONNTRACK_TIMEOUT=y
CONFIG_NF_CONNTRACK_TIMESTAMP=y
CONFIG_NF_CONNTRACK_LABELS=y
CONFIG_NF_CT_PROTO_DCCP=y
CONFIG_NF_CT_PROTO_GRE=y
CONFIG_NF_CT_PROTO_SCTP=y
CONFIG_NF_CT_PROTO_UDPLITE=y
CONFIG_NF_CONNTRACK_AMANDA=m
CONFIG_NF_CONNTRACK_FTP=m
CONFIG_NF_CONNTRACK_H323=m
CONFIG_NF_CONNTRACK_IRC=m
CONFIG_NF_CONNTRACK_BROADCAST=m
CONFIG_NF_CONNTRACK_NETBIOS_NS=m
CONFIG_NF_CONNTRACK_SNMP=m
CONFIG_NF_CONNTRACK_PPTP=m
CONFIG_NF_CONNTRACK_SANE=m
CONFIG_NF_CONNTRACK_SIP=m
CONFIG_NF_CONNTRACK_TFTP=m
CONFIG_NF_CT_NETLINK=m
CONFIG_NF_CT_NETLINK_TIMEOUT=m
# CONFIG_NETFILTER_NETLINK_GLUE_CT is not set
CONFIG_NF_NAT=m
CONFIG_NF_NAT_AMANDA=m
CONFIG_NF_NAT_FTP=m
CONFIG_NF_NAT_IRC=m
CONFIG_NF_NAT_SIP=m
CONFIG_NF_NAT_TFTP=m
CONFIG_NF_NAT_REDIRECT=y
CONFIG_NF_NAT_MASQUERADE=y
CONFIG_NETFILTER_SYNPROXY=m
CONFIG_NF_TABLES=m
# CONFIG_NF_TABLES_SET is not set
CONFIG_NF_TABLES_INET=y
CONFIG_NF_TABLES_NETDEV=y
# CONFIG_NFT_NUMGEN is not set
CONFIG_NFT_CT=m
CONFIG_NFT_FLOW_OFFLOAD=m
CONFIG_NFT_COUNTER=m
# CONFIG_NFT_CONNLIMIT is not set
CONFIG_NFT_LOG=m
CONFIG_NFT_LIMIT=m
CONFIG_NFT_MASQ=m
CONFIG_NFT_REDIR=m
CONFIG_NFT_NAT=m
# CONFIG_NFT_TUNNEL is not set
CONFIG_NFT_OBJREF=m
CONFIG_NFT_QUEUE=m
# CONFIG_NFT_QUOTA is not set
CONFIG_NFT_REJECT=m
CONFIG_NFT_REJECT_INET=m
CONFIG_NFT_COMPAT=m
CONFIG_NFT_HASH=m
# CONFIG_NFT_XFRM is not set
# CONFIG_NFT_SOCKET is not set
# CONFIG_NFT_OSF is not set
# CONFIG_NFT_TPROXY is not set
# CONFIG_NFT_SYNPROXY is not set
# CONFIG_NF_DUP_NETDEV is not set
# CONFIG_NFT_DUP_NETDEV is not set
# CONFIG_NFT_FWD_NETDEV is not set
CONFIG_NF_FLOW_TABLE_INET=m
CONFIG_NF_FLOW_TABLE=m
CONFIG_NETFILTER_XTABLES=y

#
# Xtables combined modules
#
CONFIG_NETFILTER_XT_MARK=m
CONFIG_NETFILTER_XT_CONNMARK=m
CONFIG_NETFILTER_XT_SET=m

#
# Xtables targets
#
CONFIG_NETFILTER_XT_TARGET_AUDIT=m
CONFIG_NETFILTER_XT_TARGET_CHECKSUM=m
CONFIG_NETFILTER_XT_TARGET_CLASSIFY=m
CONFIG_NETFILTER_XT_TARGET_CONNMARK=m
CONFIG_NETFILTER_XT_TARGET_CONNSECMARK=m
CONFIG_NETFILTER_XT_TARGET_CT=m
CONFIG_NETFILTER_XT_TARGET_DSCP=m
CONFIG_NETFILTER_XT_TARGET_HL=m
CONFIG_NETFILTER_XT_TARGET_HMARK=m
CONFIG_NETFILTER_XT_TARGET_IDLETIMER=m
CONFIG_NETFILTER_XT_TARGET_LED=m
CONFIG_NETFILTER_XT_TARGET_LOG=m
CONFIG_NETFILTER_XT_TARGET_MARK=m
CONFIG_NETFILTER_XT_NAT=m
CONFIG_NETFILTER_XT_TARGET_NETMAP=m
CONFIG_NETFILTER_XT_TARGET_NFLOG=m
CONFIG_NETFILTER_XT_TARGET_NFQUEUE=m
CONFIG_NETFILTER_XT_TARGET_NOTRACK=m
CONFIG_NETFILTER_XT_TARGET_RATEEST=m
CONFIG_NETFILTER_XT_TARGET_REDIRECT=m
CONFIG_NETFILTER_XT_TARGET_MASQUERADE=m
CONFIG_NETFILTER_XT_TARGET_TEE=m
CONFIG_NETFILTER_XT_TARGET_TPROXY=m
CONFIG_NETFILTER_XT_TARGET_TRACE=m
CONFIG_NETFILTER_XT_TARGET_SECMARK=m
CONFIG_NETFILTER_XT_TARGET_TCPMSS=m
CONFIG_NETFILTER_XT_TARGET_TCPOPTSTRIP=m

#
# Xtables matches
#
CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=m
CONFIG_NETFILTER_XT_MATCH_BPF=m
CONFIG_NETFILTER_XT_MATCH_CGROUP=m
CONFIG_NETFILTER_XT_MATCH_CLUSTER=m
CONFIG_NETFILTER_XT_MATCH_COMMENT=m
CONFIG_NETFILTER_XT_MATCH_CONNBYTES=m
CONFIG_NETFILTER_XT_MATCH_CONNLABEL=m
CONFIG_NETFILTER_XT_MATCH_CONNLIMIT=m
CONFIG_NETFILTER_XT_MATCH_CONNMARK=m
CONFIG_NETFILTER_XT_MATCH_CONNTRACK=m
CONFIG_NETFILTER_XT_MATCH_CPU=m
CONFIG_NETFILTER_XT_MATCH_DCCP=m
CONFIG_NETFILTER_XT_MATCH_DEVGROUP=m
CONFIG_NETFILTER_XT_MATCH_DSCP=m
CONFIG_NETFILTER_XT_MATCH_ECN=m
CONFIG_NETFILTER_XT_MATCH_ESP=m
CONFIG_NETFILTER_XT_MATCH_HASHLIMIT=m
CONFIG_NETFILTER_XT_MATCH_HELPER=m
CONFIG_NETFILTER_XT_MATCH_HL=m
# CONFIG_NETFILTER_XT_MATCH_IPCOMP is not set
CONFIG_NETFILTER_XT_MATCH_IPRANGE=m
CONFIG_NETFILTER_XT_MATCH_IPVS=m
CONFIG_NETFILTER_XT_MATCH_L2TP=m
CONFIG_NETFILTER_XT_MATCH_LENGTH=m
CONFIG_NETFILTER_XT_MATCH_LIMIT=m
CONFIG_NETFILTER_XT_MATCH_MAC=m
CONFIG_NETFILTER_XT_MATCH_MARK=m
CONFIG_NETFILTER_XT_MATCH_MULTIPORT=m
CONFIG_NETFILTER_XT_MATCH_NFACCT=m
CONFIG_NETFILTER_XT_MATCH_OSF=m
CONFIG_NETFILTER_XT_MATCH_OWNER=m
CONFIG_NETFILTER_XT_MATCH_POLICY=m
CONFIG_NETFILTER_XT_MATCH_PHYSDEV=m
CONFIG_NETFILTER_XT_MATCH_PKTTYPE=m
CONFIG_NETFILTER_XT_MATCH_QUOTA=m
CONFIG_NETFILTER_XT_MATCH_RATEEST=m
CONFIG_NETFILTER_XT_MATCH_REALM=m
CONFIG_NETFILTER_XT_MATCH_RECENT=m
CONFIG_NETFILTER_XT_MATCH_SCTP=m
CONFIG_NETFILTER_XT_MATCH_SOCKET=m
CONFIG_NETFILTER_XT_MATCH_STATE=m
CONFIG_NETFILTER_XT_MATCH_STATISTIC=m
CONFIG_NETFILTER_XT_MATCH_STRING=m
CONFIG_NETFILTER_XT_MATCH_TCPMSS=m
CONFIG_NETFILTER_XT_MATCH_TIME=m
CONFIG_NETFILTER_XT_MATCH_U32=m
# end of Core Netfilter Configuration

CONFIG_IP_SET=m
CONFIG_IP_SET_MAX=256
CONFIG_IP_SET_BITMAP_IP=m
CONFIG_IP_SET_BITMAP_IPMAC=m
CONFIG_IP_SET_BITMAP_PORT=m
CONFIG_IP_SET_HASH_IP=m
CONFIG_IP_SET_HASH_IPMARK=m
CONFIG_IP_SET_HASH_IPPORT=m
CONFIG_IP_SET_HASH_IPPORTIP=m
CONFIG_IP_SET_HASH_IPPORTNET=m
CONFIG_IP_SET_HASH_IPMAC=m
CONFIG_IP_SET_HASH_MAC=m
CONFIG_IP_SET_HASH_NETPORTNET=m
CONFIG_IP_SET_HASH_NET=m
CONFIG_IP_SET_HASH_NETNET=m
CONFIG_IP_SET_HASH_NETPORT=m
CONFIG_IP_SET_HASH_NETIFACE=m
CONFIG_IP_SET_LIST_SET=m
CONFIG_IP_VS=m
CONFIG_IP_VS_IPV6=y
# CONFIG_IP_VS_DEBUG is not set
CONFIG_IP_VS_TAB_BITS=12

#
# IPVS transport protocol load balancing support
#
CONFIG_IP_VS_PROTO_TCP=y
CONFIG_IP_VS_PROTO_UDP=y
CONFIG_IP_VS_PROTO_AH_ESP=y
CONFIG_IP_VS_PROTO_ESP=y
CONFIG_IP_VS_PROTO_AH=y
CONFIG_IP_VS_PROTO_SCTP=y

#
# IPVS scheduler
#
CONFIG_IP_VS_RR=m
CONFIG_IP_VS_WRR=m
CONFIG_IP_VS_LC=m
CONFIG_IP_VS_WLC=m
# CONFIG_IP_VS_FO is not set
# CONFIG_IP_VS_OVF is not set
CONFIG_IP_VS_LBLC=m
CONFIG_IP_VS_LBLCR=m
CONFIG_IP_VS_DH=m
CONFIG_IP_VS_SH=m
# CONFIG_IP_VS_MH is not set
CONFIG_IP_VS_SED=m
CONFIG_IP_VS_NQ=m

#
# IPVS SH scheduler
#
CONFIG_IP_VS_SH_TAB_BITS=8

#
# IPVS MH scheduler
#
CONFIG_IP_VS_MH_TAB_INDEX=12

#
# IPVS application helper
#
CONFIG_IP_VS_FTP=m
CONFIG_IP_VS_NFCT=y
CONFIG_IP_VS_PE_SIP=m

#
# IP: Netfilter Configuration
#
CONFIG_NF_DEFRAG_IPV4=m
CONFIG_NF_SOCKET_IPV4=m
CONFIG_NF_TPROXY_IPV4=m
CONFIG_NF_TABLES_IPV4=y
CONFIG_NFT_REJECT_IPV4=m
# CONFIG_NFT_DUP_IPV4 is not set
# CONFIG_NFT_FIB_IPV4 is not set
# CONFIG_NF_TABLES_ARP is not set
CONFIG_NF_FLOW_TABLE_IPV4=m
CONFIG_NF_DUP_IPV4=m
# CONFIG_NF_LOG_ARP is not set
CONFIG_NF_LOG_IPV4=m
CONFIG_NF_REJECT_IPV4=m
CONFIG_NF_NAT_SNMP_BASIC=m
CONFIG_NF_NAT_PPTP=m
CONFIG_NF_NAT_H323=m
CONFIG_IP_NF_IPTABLES=m
CONFIG_IP_NF_MATCH_AH=m
CONFIG_IP_NF_MATCH_ECN=m
CONFIG_IP_NF_MATCH_RPFILTER=m
CONFIG_IP_NF_MATCH_TTL=m
CONFIG_IP_NF_FILTER=m
CONFIG_IP_NF_TARGET_REJECT=m
CONFIG_IP_NF_TARGET_SYNPROXY=m
CONFIG_IP_NF_NAT=m
CONFIG_IP_NF_TARGET_MASQUERADE=m
CONFIG_IP_NF_TARGET_NETMAP=m
CONFIG_IP_NF_TARGET_REDIRECT=m
CONFIG_IP_NF_MANGLE=m
CONFIG_IP_NF_TARGET_CLUSTERIP=m
CONFIG_IP_NF_TARGET_ECN=m
CONFIG_IP_NF_TARGET_TTL=m
CONFIG_IP_NF_RAW=m
CONFIG_IP_NF_SECURITY=m
CONFIG_IP_NF_ARPTABLES=m
CONFIG_IP_NF_ARPFILTER=m
CONFIG_IP_NF_ARP_MANGLE=m
# end of IP: Netfilter Configuration

#
# IPv6: Netfilter Configuration
#
CONFIG_NF_SOCKET_IPV6=m
CONFIG_NF_TPROXY_IPV6=m
CONFIG_NF_TABLES_IPV6=y
CONFIG_NFT_REJECT_IPV6=m
# CONFIG_NFT_DUP_IPV6 is not set
# CONFIG_NFT_FIB_IPV6 is not set
CONFIG_NF_FLOW_TABLE_IPV6=m
CONFIG_NF_DUP_IPV6=m
CONFIG_NF_REJECT_IPV6=m
CONFIG_NF_LOG_IPV6=m
CONFIG_IP6_NF_IPTABLES=m
CONFIG_IP6_NF_MATCH_AH=m
CONFIG_IP6_NF_MATCH_EUI64=m
CONFIG_IP6_NF_MATCH_FRAG=m
CONFIG_IP6_NF_MATCH_OPTS=m
CONFIG_IP6_NF_MATCH_HL=m
CONFIG_IP6_NF_MATCH_IPV6HEADER=m
CONFIG_IP6_NF_MATCH_MH=m
CONFIG_IP6_NF_MATCH_RPFILTER=m
CONFIG_IP6_NF_MATCH_RT=m
# CONFIG_IP6_NF_MATCH_SRH is not set
CONFIG_IP6_NF_TARGET_HL=m
CONFIG_IP6_NF_FILTER=m
CONFIG_IP6_NF_TARGET_REJECT=m
CONFIG_IP6_NF_TARGET_SYNPROXY=m
CONFIG_IP6_NF_MANGLE=m
CONFIG_IP6_NF_RAW=m
CONFIG_IP6_NF_SECURITY=m
CONFIG_IP6_NF_NAT=m
CONFIG_IP6_NF_TARGET_MASQUERADE=m
CONFIG_IP6_NF_TARGET_NPT=m
# end of IPv6: Netfilter Configuration

CONFIG_NF_DEFRAG_IPV6=m
# CONFIG_NF_TABLES_BRIDGE is not set
# CONFIG_NF_CONNTRACK_BRIDGE is not set
CONFIG_BRIDGE_NF_EBTABLES=m
CONFIG_BRIDGE_EBT_BROUTE=m
CONFIG_BRIDGE_EBT_T_FILTER=m
CONFIG_BRIDGE_EBT_T_NAT=m
CONFIG_BRIDGE_EBT_802_3=m
CONFIG_BRIDGE_EBT_AMONG=m
CONFIG_BRIDGE_EBT_ARP=m
CONFIG_BRIDGE_EBT_IP=m
CONFIG_BRIDGE_EBT_IP6=m
CONFIG_BRIDGE_EBT_LIMIT=m
CONFIG_BRIDGE_EBT_MARK=m
CONFIG_BRIDGE_EBT_PKTTYPE=m
CONFIG_BRIDGE_EBT_STP=m
CONFIG_BRIDGE_EBT_VLAN=m
CONFIG_BRIDGE_EBT_ARPREPLY=m
CONFIG_BRIDGE_EBT_DNAT=m
CONFIG_BRIDGE_EBT_MARK_T=m
CONFIG_BRIDGE_EBT_REDIRECT=m
CONFIG_BRIDGE_EBT_SNAT=m
CONFIG_BRIDGE_EBT_LOG=m
CONFIG_BRIDGE_EBT_NFLOG=m
# CONFIG_BPFILTER is not set
CONFIG_IP_DCCP=m
CONFIG_INET_DCCP_DIAG=m

#
# DCCP CCIDs Configuration
#
# CONFIG_IP_DCCP_CCID2_DEBUG is not set
CONFIG_IP_DCCP_CCID3=y
# CONFIG_IP_DCCP_CCID3_DEBUG is not set
CONFIG_IP_DCCP_TFRC_LIB=y
# end of DCCP CCIDs Configuration

#
# DCCP Kernel Hacking
#
# CONFIG_IP_DCCP_DEBUG is not set
# end of DCCP Kernel Hacking

CONFIG_IP_SCTP=m
# CONFIG_SCTP_DBG_OBJCNT is not set
# CONFIG_SCTP_DEFAULT_COOKIE_HMAC_MD5 is not set
CONFIG_SCTP_DEFAULT_COOKIE_HMAC_SHA1=y
# CONFIG_SCTP_DEFAULT_COOKIE_HMAC_NONE is not set
CONFIG_SCTP_COOKIE_HMAC_MD5=y
CONFIG_SCTP_COOKIE_HMAC_SHA1=y
CONFIG_INET_SCTP_DIAG=m
# CONFIG_RDS is not set
# CONFIG_TIPC is not set
CONFIG_ATM=m
CONFIG_ATM_CLIP=m
# CONFIG_ATM_CLIP_NO_ICMP is not set
CONFIG_ATM_LANE=m
# CONFIG_ATM_MPOA is not set
CONFIG_ATM_BR2684=m
# CONFIG_ATM_BR2684_IPFILTER is not set
CONFIG_L2TP=m
CONFIG_L2TP_DEBUGFS=m
CONFIG_L2TP_V3=y
CONFIG_L2TP_IP=m
CONFIG_L2TP_ETH=m
CONFIG_STP=y
CONFIG_GARP=y
CONFIG_MRP=y
CONFIG_BRIDGE=y
CONFIG_BRIDGE_IGMP_SNOOPING=y
CONFIG_BRIDGE_VLAN_FILTERING=y
CONFIG_HAVE_NET_DSA=y
# CONFIG_NET_DSA is not set
CONFIG_VLAN_8021Q=y
CONFIG_VLAN_8021Q_GVRP=y
CONFIG_VLAN_8021Q_MVRP=y
# CONFIG_DECNET is not set
CONFIG_LLC=y
# CONFIG_LLC2 is not set
# CONFIG_ATALK is not set
# CONFIG_X25 is not set
# CONFIG_LAPB is not set
# CONFIG_PHONET is not set
CONFIG_6LOWPAN=m
# CONFIG_6LOWPAN_DEBUGFS is not set
CONFIG_6LOWPAN_NHC=m
CONFIG_6LOWPAN_NHC_DEST=m
CONFIG_6LOWPAN_NHC_FRAGMENT=m
CONFIG_6LOWPAN_NHC_HOP=m
CONFIG_6LOWPAN_NHC_IPV6=m
CONFIG_6LOWPAN_NHC_MOBILITY=m
CONFIG_6LOWPAN_NHC_ROUTING=m
CONFIG_6LOWPAN_NHC_UDP=m
# CONFIG_6LOWPAN_GHC_EXT_HDR_HOP is not set
# CONFIG_6LOWPAN_GHC_UDP is not set
# CONFIG_6LOWPAN_GHC_ICMPV6 is not set
# CONFIG_6LOWPAN_GHC_EXT_HDR_DEST is not set
# CONFIG_6LOWPAN_GHC_EXT_HDR_FRAG is not set
# CONFIG_6LOWPAN_GHC_EXT_HDR_ROUTE is not set
CONFIG_IEEE802154=m
# CONFIG_IEEE802154_NL802154_EXPERIMENTAL is not set
CONFIG_IEEE802154_SOCKET=m
CONFIG_IEEE802154_6LOWPAN=m
CONFIG_MAC802154=m
CONFIG_NET_SCHED=y

#
# Queueing/Scheduling
#
CONFIG_NET_SCH_CBQ=m
CONFIG_NET_SCH_HTB=m
CONFIG_NET_SCH_HFSC=m
CONFIG_NET_SCH_ATM=m
CONFIG_NET_SCH_PRIO=m
CONFIG_NET_SCH_MULTIQ=m
CONFIG_NET_SCH_RED=m
CONFIG_NET_SCH_SFB=m
CONFIG_NET_SCH_SFQ=m
CONFIG_NET_SCH_TEQL=m
CONFIG_NET_SCH_TBF=m
# CONFIG_NET_SCH_CBS is not set
CONFIG_NET_SCH_ETF=m
# CONFIG_NET_SCH_TAPRIO is not set
CONFIG_NET_SCH_GRED=m
CONFIG_NET_SCH_DSMARK=m
CONFIG_NET_SCH_NETEM=y
CONFIG_NET_SCH_DRR=m
CONFIG_NET_SCH_MQPRIO=m
# CONFIG_NET_SCH_SKBPRIO is not set
CONFIG_NET_SCH_CHOKE=m
CONFIG_NET_SCH_QFQ=m
CONFIG_NET_SCH_CODEL=m
CONFIG_NET_SCH_FQ_CODEL=m
# CONFIG_NET_SCH_CAKE is not set
CONFIG_NET_SCH_FQ=m
# CONFIG_NET_SCH_HHF is not set
# CONFIG_NET_SCH_PIE is not set
CONFIG_NET_SCH_INGRESS=y
CONFIG_NET_SCH_PLUG=m
# CONFIG_NET_SCH_ETS is not set
# CONFIG_NET_SCH_DEFAULT is not set

#
# Classification
#
CONFIG_NET_CLS=y
CONFIG_NET_CLS_BASIC=m
CONFIG_NET_CLS_TCINDEX=m
CONFIG_NET_CLS_ROUTE4=m
CONFIG_NET_CLS_FW=m
CONFIG_NET_CLS_U32=m
CONFIG_CLS_U32_PERF=y
CONFIG_CLS_U32_MARK=y
CONFIG_NET_CLS_RSVP=m
CONFIG_NET_CLS_RSVP6=m
CONFIG_NET_CLS_FLOW=m
CONFIG_NET_CLS_CGROUP=y
CONFIG_NET_CLS_BPF=m
CONFIG_NET_CLS_FLOWER=m
CONFIG_NET_CLS_MATCHALL=m
CONFIG_NET_EMATCH=y
CONFIG_NET_EMATCH_STACK=32
CONFIG_NET_EMATCH_CMP=m
CONFIG_NET_EMATCH_NBYTE=m
CONFIG_NET_EMATCH_U32=m
CONFIG_NET_EMATCH_META=m
CONFIG_NET_EMATCH_TEXT=m
# CONFIG_NET_EMATCH_CANID is not set
CONFIG_NET_EMATCH_IPSET=m
# CONFIG_NET_EMATCH_IPT is not set
CONFIG_NET_CLS_ACT=y
CONFIG_NET_ACT_POLICE=m
CONFIG_NET_ACT_GACT=m
CONFIG_GACT_PROB=y
CONFIG_NET_ACT_MIRRED=m
CONFIG_NET_ACT_SAMPLE=m
CONFIG_NET_ACT_IPT=m
CONFIG_NET_ACT_NAT=m
CONFIG_NET_ACT_PEDIT=m
CONFIG_NET_ACT_SIMP=m
CONFIG_NET_ACT_SKBEDIT=m
CONFIG_NET_ACT_CSUM=m
# CONFIG_NET_ACT_MPLS is not set
CONFIG_NET_ACT_VLAN=m
# CONFIG_NET_ACT_BPF is not set
CONFIG_NET_ACT_CONNMARK=m
# CONFIG_NET_ACT_CTINFO is not set
CONFIG_NET_ACT_SKBMOD=m
# CONFIG_NET_ACT_IFE is not set
CONFIG_NET_ACT_TUNNEL_KEY=m
# CONFIG_NET_ACT_CT is not set
# CONFIG_NET_TC_SKB_EXT is not set
CONFIG_NET_SCH_FIFO=y
CONFIG_DCB=y
CONFIG_DNS_RESOLVER=m
# CONFIG_BATMAN_ADV is not set
CONFIG_OPENVSWITCH=m
CONFIG_OPENVSWITCH_GRE=m
CONFIG_OPENVSWITCH_VXLAN=m
CONFIG_OPENVSWITCH_GENEVE=m
CONFIG_VSOCKETS=m
CONFIG_VSOCKETS_DIAG=m
CONFIG_VSOCKETS_LOOPBACK=m
CONFIG_VMWARE_VMCI_VSOCKETS=m
CONFIG_VIRTIO_VSOCKETS=m
CONFIG_VIRTIO_VSOCKETS_COMMON=m
CONFIG_HYPERV_VSOCKETS=m
CONFIG_NETLINK_DIAG=m
CONFIG_MPLS=y
CONFIG_NET_MPLS_GSO=m
CONFIG_MPLS_ROUTING=m
CONFIG_MPLS_IPTUNNEL=m
CONFIG_NET_NSH=m
# CONFIG_HSR is not set
CONFIG_NET_SWITCHDEV=y
CONFIG_NET_L3_MASTER_DEV=y
# CONFIG_NET_NCSI is not set
CONFIG_RPS=y
CONFIG_RFS_ACCEL=y
CONFIG_XPS=y
# CONFIG_CGROUP_NET_PRIO is not set
CONFIG_CGROUP_NET_CLASSID=y
CONFIG_NET_RX_BUSY_POLL=y
CONFIG_BQL=y
CONFIG_BPF_JIT=y
CONFIG_BPF_STREAM_PARSER=y
CONFIG_NET_FLOW_LIMIT=y

#
# Network testing
#
CONFIG_NET_PKTGEN=m
CONFIG_NET_DROP_MONITOR=y
# end of Network testing
# end of Networking options

# CONFIG_HAMRADIO is not set
CONFIG_CAN=m
CONFIG_CAN_RAW=m
CONFIG_CAN_BCM=m
CONFIG_CAN_GW=m
# CONFIG_CAN_J1939 is not set

#
# CAN Device Drivers
#
CONFIG_CAN_VCAN=m
# CONFIG_CAN_VXCAN is not set
CONFIG_CAN_SLCAN=m
CONFIG_CAN_DEV=m
CONFIG_CAN_CALC_BITTIMING=y
# CONFIG_CAN_KVASER_PCIEFD is not set
CONFIG_CAN_C_CAN=m
CONFIG_CAN_C_CAN_PLATFORM=m
CONFIG_CAN_C_CAN_PCI=m
CONFIG_CAN_CC770=m
# CONFIG_CAN_CC770_ISA is not set
CONFIG_CAN_CC770_PLATFORM=m
# CONFIG_CAN_IFI_CANFD is not set
# CONFIG_CAN_M_CAN is not set
# CONFIG_CAN_PEAK_PCIEFD is not set
CONFIG_CAN_SJA1000=m
CONFIG_CAN_EMS_PCI=m
# CONFIG_CAN_F81601 is not set
CONFIG_CAN_KVASER_PCI=m
CONFIG_CAN_PEAK_PCI=m
CONFIG_CAN_PEAK_PCIEC=y
CONFIG_CAN_PLX_PCI=m
# CONFIG_CAN_SJA1000_ISA is not set
CONFIG_CAN_SJA1000_PLATFORM=m
CONFIG_CAN_SOFTING=m

#
# CAN SPI interfaces
#
# CONFIG_CAN_HI311X is not set
# CONFIG_CAN_MCP251X is not set
# end of CAN SPI interfaces

#
# CAN USB interfaces
#
CONFIG_CAN_8DEV_USB=m
CONFIG_CAN_EMS_USB=m
CONFIG_CAN_ESD_USB2=m
# CONFIG_CAN_GS_USB is not set
CONFIG_CAN_KVASER_USB=m
# CONFIG_CAN_MCBA_USB is not set
CONFIG_CAN_PEAK_USB=m
# CONFIG_CAN_UCAN is not set
# end of CAN USB interfaces

# CONFIG_CAN_DEBUG_DEVICES is not set
# end of CAN Device Drivers

CONFIG_BT=m
CONFIG_BT_BREDR=y
CONFIG_BT_RFCOMM=m
CONFIG_BT_RFCOMM_TTY=y
CONFIG_BT_BNEP=m
CONFIG_BT_BNEP_MC_FILTER=y
CONFIG_BT_BNEP_PROTO_FILTER=y
CONFIG_BT_CMTP=m
CONFIG_BT_HIDP=m
CONFIG_BT_HS=y
CONFIG_BT_LE=y
# CONFIG_BT_6LOWPAN is not set
# CONFIG_BT_LEDS is not set
# CONFIG_BT_SELFTEST is not set
CONFIG_BT_DEBUGFS=y

#
# Bluetooth device drivers
#
CONFIG_BT_INTEL=m
CONFIG_BT_BCM=m
CONFIG_BT_RTL=m
CONFIG_BT_HCIBTUSB=m
# CONFIG_BT_HCIBTUSB_AUTOSUSPEND is not set
CONFIG_BT_HCIBTUSB_BCM=y
# CONFIG_BT_HCIBTUSB_MTK is not set
CONFIG_BT_HCIBTUSB_RTL=y
CONFIG_BT_HCIBTSDIO=m
CONFIG_BT_HCIUART=m
CONFIG_BT_HCIUART_H4=y
CONFIG_BT_HCIUART_BCSP=y
CONFIG_BT_HCIUART_ATH3K=y
# CONFIG_BT_HCIUART_INTEL is not set
# CONFIG_BT_HCIUART_AG6XX is not set
CONFIG_BT_HCIBCM203X=m
CONFIG_BT_HCIBPA10X=m
CONFIG_BT_HCIBFUSB=m
CONFIG_BT_HCIVHCI=m
CONFIG_BT_MRVL=m
CONFIG_BT_MRVL_SDIO=m
CONFIG_BT_ATH3K=m
# CONFIG_BT_MTKSDIO is not set
# end of Bluetooth device drivers

# CONFIG_AF_RXRPC is not set
# CONFIG_AF_KCM is not set
CONFIG_STREAM_PARSER=y
CONFIG_FIB_RULES=y
CONFIG_WIRELESS=y
CONFIG_WIRELESS_EXT=y
CONFIG_WEXT_CORE=y
CONFIG_WEXT_PROC=y
CONFIG_WEXT_PRIV=y
CONFIG_CFG80211=m
# CONFIG_NL80211_TESTMODE is not set
# CONFIG_CFG80211_DEVELOPER_WARNINGS is not set
# CONFIG_CFG80211_CERTIFICATION_ONUS is not set
CONFIG_CFG80211_REQUIRE_SIGNED_REGDB=y
CONFIG_CFG80211_USE_KERNEL_REGDB_KEYS=y
CONFIG_CFG80211_DEFAULT_PS=y
# CONFIG_CFG80211_DEBUGFS is not set
CONFIG_CFG80211_CRDA_SUPPORT=y
CONFIG_CFG80211_WEXT=y
CONFIG_LIB80211=m
# CONFIG_LIB80211_DEBUG is not set
CONFIG_MAC80211=m
CONFIG_MAC80211_HAS_RC=y
CONFIG_MAC80211_RC_MINSTREL=y
CONFIG_MAC80211_RC_DEFAULT_MINSTREL=y
CONFIG_MAC80211_RC_DEFAULT="minstrel_ht"
CONFIG_MAC80211_MESH=y
CONFIG_MAC80211_LEDS=y
CONFIG_MAC80211_DEBUGFS=y
# CONFIG_MAC80211_MESSAGE_TRACING is not set
# CONFIG_MAC80211_DEBUG_MENU is not set
CONFIG_MAC80211_STA_HASH_MAX_SIZE=0
# CONFIG_WIMAX is not set
CONFIG_RFKILL=m
CONFIG_RFKILL_LEDS=y
CONFIG_RFKILL_INPUT=y
# CONFIG_RFKILL_GPIO is not set
CONFIG_NET_9P=y
CONFIG_NET_9P_VIRTIO=y
# CONFIG_NET_9P_XEN is not set
# CONFIG_NET_9P_RDMA is not set
# CONFIG_NET_9P_DEBUG is not set
# CONFIG_CAIF is not set
CONFIG_CEPH_LIB=m
# CONFIG_CEPH_LIB_PRETTYDEBUG is not set
CONFIG_CEPH_LIB_USE_DNS_RESOLVER=y
# CONFIG_NFC is not set
CONFIG_PSAMPLE=m
# CONFIG_NET_IFE is not set
CONFIG_LWTUNNEL=y
CONFIG_LWTUNNEL_BPF=y
CONFIG_DST_CACHE=y
CONFIG_GRO_CELLS=y
CONFIG_NET_SOCK_MSG=y
CONFIG_NET_DEVLINK=y
CONFIG_PAGE_POOL=y
CONFIG_FAILOVER=m
CONFIG_ETHTOOL_NETLINK=y
CONFIG_HAVE_EBPF_JIT=y

#
# Device Drivers
#
CONFIG_HAVE_EISA=y
# CONFIG_EISA is not set
CONFIG_HAVE_PCI=y
CONFIG_PCI=y
CONFIG_PCI_DOMAINS=y
CONFIG_PCIEPORTBUS=y
CONFIG_HOTPLUG_PCI_PCIE=y
CONFIG_PCIEAER=y
CONFIG_PCIEAER_INJECT=m
CONFIG_PCIE_ECRC=y
CONFIG_PCIEASPM=y
CONFIG_PCIEASPM_DEFAULT=y
# CONFIG_PCIEASPM_POWERSAVE is not set
# CONFIG_PCIEASPM_POWER_SUPERSAVE is not set
# CONFIG_PCIEASPM_PERFORMANCE is not set
CONFIG_PCIE_PME=y
# CONFIG_PCIE_DPC is not set
# CONFIG_PCIE_PTM is not set
# CONFIG_PCIE_BW is not set
CONFIG_PCI_MSI=y
CONFIG_PCI_MSI_IRQ_DOMAIN=y
CONFIG_PCI_QUIRKS=y
# CONFIG_PCI_DEBUG is not set
# CONFIG_PCI_REALLOC_ENABLE_AUTO is not set
CONFIG_PCI_STUB=y
# CONFIG_PCI_PF_STUB is not set
# CONFIG_XEN_PCIDEV_FRONTEND is not set
CONFIG_PCI_ATS=y
CONFIG_PCI_LOCKLESS_CONFIG=y
CONFIG_PCI_IOV=y
CONFIG_PCI_PRI=y
CONFIG_PCI_PASID=y
# CONFIG_PCI_P2PDMA is not set
CONFIG_PCI_LABEL=y
CONFIG_PCI_HYPERV=m
CONFIG_HOTPLUG_PCI=y
CONFIG_HOTPLUG_PCI_ACPI=y
CONFIG_HOTPLUG_PCI_ACPI_IBM=m
# CONFIG_HOTPLUG_PCI_CPCI is not set
CONFIG_HOTPLUG_PCI_SHPC=y

#
# PCI controller drivers
#
CONFIG_VMD=y
CONFIG_PCI_HYPERV_INTERFACE=m

#
# DesignWare PCI Core Support
#
# CONFIG_PCIE_DW_PLAT_HOST is not set
# CONFIG_PCI_MESON is not set
# end of DesignWare PCI Core Support

#
# Cadence PCIe controllers support
#
# end of Cadence PCIe controllers support
# end of PCI controller drivers

#
# PCI Endpoint
#
# CONFIG_PCI_ENDPOINT is not set
# end of PCI Endpoint

#
# PCI switch controller drivers
#
# CONFIG_PCI_SW_SWITCHTEC is not set
# end of PCI switch controller drivers

CONFIG_PCCARD=y
# CONFIG_PCMCIA is not set
CONFIG_CARDBUS=y

#
# PC-card bridges
#
CONFIG_YENTA=m
CONFIG_YENTA_O2=y
CONFIG_YENTA_RICOH=y
CONFIG_YENTA_TI=y
CONFIG_YENTA_ENE_TUNE=y
CONFIG_YENTA_TOSHIBA=y
# CONFIG_RAPIDIO is not set

#
# Generic Driver Options
#
CONFIG_UEVENT_HELPER=y
CONFIG_UEVENT_HELPER_PATH=""
CONFIG_DEVTMPFS=y
CONFIG_DEVTMPFS_MOUNT=y
CONFIG_STANDALONE=y
CONFIG_PREVENT_FIRMWARE_BUILD=y

#
# Firmware loader
#
CONFIG_FW_LOADER=y
CONFIG_FW_LOADER_PAGED_BUF=y
CONFIG_EXTRA_FIRMWARE=""
CONFIG_FW_LOADER_USER_HELPER=y
# CONFIG_FW_LOADER_USER_HELPER_FALLBACK is not set
# CONFIG_FW_LOADER_COMPRESS is not set
CONFIG_FW_CACHE=y
# end of Firmware loader

CONFIG_WANT_DEV_COREDUMP=y
CONFIG_ALLOW_DEV_COREDUMP=y
CONFIG_DEV_COREDUMP=y
# CONFIG_DEBUG_DRIVER is not set
# CONFIG_DEBUG_DEVRES is not set
# CONFIG_DEBUG_TEST_DRIVER_REMOVE is not set
# CONFIG_TEST_ASYNC_DRIVER_PROBE is not set
CONFIG_SYS_HYPERVISOR=y
CONFIG_GENERIC_CPU_AUTOPROBE=y
CONFIG_GENERIC_CPU_VULNERABILITIES=y
CONFIG_REGMAP=y
CONFIG_REGMAP_I2C=m
CONFIG_REGMAP_SPI=m
CONFIG_REGMAP_IRQ=y
CONFIG_DMA_SHARED_BUFFER=y
# CONFIG_DMA_FENCE_TRACE is not set
# end of Generic Driver Options

#
# Bus devices
#
# end of Bus devices

CONFIG_CONNECTOR=y
CONFIG_PROC_EVENTS=y
# CONFIG_GNSS is not set
CONFIG_MTD=m
# CONFIG_MTD_TESTS is not set

#
# Partition parsers
#
# CONFIG_MTD_AR7_PARTS is not set
# CONFIG_MTD_CMDLINE_PARTS is not set
# CONFIG_MTD_REDBOOT_PARTS is not set
# end of Partition parsers

#
# User Modules And Translation Layers
#
CONFIG_MTD_BLKDEVS=m
CONFIG_MTD_BLOCK=m
# CONFIG_MTD_BLOCK_RO is not set
# CONFIG_FTL is not set
# CONFIG_NFTL is not set
# CONFIG_INFTL is not set
# CONFIG_RFD_FTL is not set
# CONFIG_SSFDC is not set
# CONFIG_SM_FTL is not set
# CONFIG_MTD_OOPS is not set
# CONFIG_MTD_SWAP is not set
# CONFIG_MTD_PARTITIONED_MASTER is not set

#
# RAM/ROM/Flash chip drivers
#
# CONFIG_MTD_CFI is not set
# CONFIG_MTD_JEDECPROBE is not set
CONFIG_MTD_MAP_BANK_WIDTH_1=y
CONFIG_MTD_MAP_BANK_WIDTH_2=y
CONFIG_MTD_MAP_BANK_WIDTH_4=y
CONFIG_MTD_CFI_I1=y
CONFIG_MTD_CFI_I2=y
# CONFIG_MTD_RAM is not set
# CONFIG_MTD_ROM is not set
# CONFIG_MTD_ABSENT is not set
# end of RAM/ROM/Flash chip drivers

#
# Mapping drivers for chip access
#
# CONFIG_MTD_COMPLEX_MAPPINGS is not set
# CONFIG_MTD_INTEL_VR_NOR is not set
# CONFIG_MTD_PLATRAM is not set
# end of Mapping drivers for chip access

#
# Self-contained MTD device drivers
#
# CONFIG_MTD_PMC551 is not set
# CONFIG_MTD_DATAFLASH is not set
# CONFIG_MTD_MCHP23K256 is not set
# CONFIG_MTD_SST25L is not set
# CONFIG_MTD_SLRAM is not set
# CONFIG_MTD_PHRAM is not set
# CONFIG_MTD_MTDRAM is not set
# CONFIG_MTD_BLOCK2MTD is not set

#
# Disk-On-Chip Device Drivers
#
# CONFIG_MTD_DOCG3 is not set
# end of Self-contained MTD device drivers

# CONFIG_MTD_ONENAND is not set
# CONFIG_MTD_RAW_NAND is not set
# CONFIG_MTD_SPI_NAND is not set

#
# LPDDR & LPDDR2 PCM memory drivers
#
# CONFIG_MTD_LPDDR is not set
# end of LPDDR & LPDDR2 PCM memory drivers

# CONFIG_MTD_SPI_NOR is not set
CONFIG_MTD_UBI=m
CONFIG_MTD_UBI_WL_THRESHOLD=4096
CONFIG_MTD_UBI_BEB_LIMIT=20
# CONFIG_MTD_UBI_FASTMAP is not set
# CONFIG_MTD_UBI_GLUEBI is not set
# CONFIG_MTD_UBI_BLOCK is not set
# CONFIG_MTD_HYPERBUS is not set
# CONFIG_OF is not set
CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
CONFIG_PARPORT=m
CONFIG_PARPORT_PC=m
CONFIG_PARPORT_SERIAL=m
# CONFIG_PARPORT_PC_FIFO is not set
# CONFIG_PARPORT_PC_SUPERIO is not set
# CONFIG_PARPORT_AX88796 is not set
CONFIG_PARPORT_1284=y
CONFIG_PARPORT_NOT_PC=y
CONFIG_PNP=y
# CONFIG_PNP_DEBUG_MESSAGES is not set

#
# Protocols
#
CONFIG_PNPACPI=y
CONFIG_BLK_DEV=y
CONFIG_BLK_DEV_NULL_BLK=m
CONFIG_BLK_DEV_NULL_BLK_FAULT_INJECTION=y
CONFIG_BLK_DEV_FD=m
CONFIG_CDROM=m
# CONFIG_PARIDE is not set
CONFIG_BLK_DEV_PCIESSD_MTIP32XX=m
# CONFIG_ZRAM is not set
# CONFIG_BLK_DEV_UMEM is not set
CONFIG_BLK_DEV_LOOP=m
CONFIG_BLK_DEV_LOOP_MIN_COUNT=0
# CONFIG_BLK_DEV_CRYPTOLOOP is not set
# CONFIG_BLK_DEV_DRBD is not set
CONFIG_BLK_DEV_NBD=m
# CONFIG_BLK_DEV_SKD is not set
CONFIG_BLK_DEV_SX8=m
CONFIG_BLK_DEV_RAM=m
CONFIG_BLK_DEV_RAM_COUNT=16
CONFIG_BLK_DEV_RAM_SIZE=16384
CONFIG_CDROM_PKTCDVD=m
CONFIG_CDROM_PKTCDVD_BUFFERS=8
# CONFIG_CDROM_PKTCDVD_WCACHE is not set
CONFIG_ATA_OVER_ETH=m
CONFIG_XEN_BLKDEV_FRONTEND=m
CONFIG_VIRTIO_BLK=y
CONFIG_BLK_DEV_RBD=m
# CONFIG_BLK_DEV_RSXX is not set

#
# NVME Support
#
CONFIG_NVME_CORE=m
CONFIG_BLK_DEV_NVME=m
CONFIG_NVME_MULTIPATH=y
# CONFIG_NVME_HWMON is not set
CONFIG_NVME_FABRICS=m
# CONFIG_NVME_RDMA is not set
CONFIG_NVME_FC=m
# CONFIG_NVME_TCP is not set
CONFIG_NVME_TARGET=m
CONFIG_NVME_TARGET_LOOP=m
# CONFIG_NVME_TARGET_RDMA is not set
CONFIG_NVME_TARGET_FC=m
CONFIG_NVME_TARGET_FCLOOP=m
# CONFIG_NVME_TARGET_TCP is not set
# end of NVME Support

#
# Misc devices
#
CONFIG_SENSORS_LIS3LV02D=m
# CONFIG_AD525X_DPOT is not set
# CONFIG_DUMMY_IRQ is not set
# CONFIG_IBM_ASM is not set
# CONFIG_PHANTOM is not set
CONFIG_TIFM_CORE=m
CONFIG_TIFM_7XX1=m
# CONFIG_ICS932S401 is not set
CONFIG_ENCLOSURE_SERVICES=m
CONFIG_SGI_XP=m
CONFIG_HP_ILO=m
CONFIG_SGI_GRU=m
# CONFIG_SGI_GRU_DEBUG is not set
CONFIG_APDS9802ALS=m
CONFIG_ISL29003=m
CONFIG_ISL29020=m
CONFIG_SENSORS_TSL2550=m
CONFIG_SENSORS_BH1770=m
CONFIG_SENSORS_APDS990X=m
# CONFIG_HMC6352 is not set
# CONFIG_DS1682 is not set
CONFIG_VMWARE_BALLOON=m
# CONFIG_LATTICE_ECP3_CONFIG is not set
# CONFIG_SRAM is not set
# CONFIG_PCI_ENDPOINT_TEST is not set
# CONFIG_XILINX_SDFEC is not set
CONFIG_PVPANIC=y
# CONFIG_C2PORT is not set

#
# EEPROM support
#
CONFIG_EEPROM_AT24=m
# CONFIG_EEPROM_AT25 is not set
CONFIG_EEPROM_LEGACY=m
CONFIG_EEPROM_MAX6875=m
CONFIG_EEPROM_93CX6=m
# CONFIG_EEPROM_93XX46 is not set
# CONFIG_EEPROM_IDT_89HPESX is not set
# CONFIG_EEPROM_EE1004 is not set
# end of EEPROM support

CONFIG_CB710_CORE=m
# CONFIG_CB710_DEBUG is not set
CONFIG_CB710_DEBUG_ASSUMPTIONS=y

#
# Texas Instruments shared transport line discipline
#
# CONFIG_TI_ST is not set
# end of Texas Instruments shared transport line discipline

CONFIG_SENSORS_LIS3_I2C=m
CONFIG_ALTERA_STAPL=m
CONFIG_INTEL_MEI=m
CONFIG_INTEL_MEI_ME=m
# CONFIG_INTEL_MEI_TXE is not set
# CONFIG_INTEL_MEI_HDCP is not set
CONFIG_VMWARE_VMCI=m

#
# Intel MIC & related support
#
# CONFIG_INTEL_MIC_BUS is not set
# CONFIG_SCIF_BUS is not set
# CONFIG_VOP_BUS is not set
# end of Intel MIC & related support

# CONFIG_GENWQE is not set
# CONFIG_ECHO is not set
# CONFIG_MISC_ALCOR_PCI is not set
# CONFIG_MISC_RTSX_PCI is not set
# CONFIG_MISC_RTSX_USB is not set
# CONFIG_HABANA_AI is not set
# end of Misc devices

CONFIG_HAVE_IDE=y
# CONFIG_IDE is not set

#
# SCSI device support
#
CONFIG_SCSI_MOD=y
CONFIG_RAID_ATTRS=m
CONFIG_SCSI=y
CONFIG_SCSI_DMA=y
CONFIG_SCSI_NETLINK=y
CONFIG_SCSI_PROC_FS=y

#
# SCSI support type (disk, tape, CD-ROM)
#
CONFIG_BLK_DEV_SD=m
CONFIG_CHR_DEV_ST=m
CONFIG_BLK_DEV_SR=m
CONFIG_BLK_DEV_SR_VENDOR=y
CONFIG_CHR_DEV_SG=m
CONFIG_CHR_DEV_SCH=m
CONFIG_SCSI_ENCLOSURE=m
CONFIG_SCSI_CONSTANTS=y
CONFIG_SCSI_LOGGING=y
CONFIG_SCSI_SCAN_ASYNC=y

#
# SCSI Transports
#
CONFIG_SCSI_SPI_ATTRS=m
CONFIG_SCSI_FC_ATTRS=m
CONFIG_SCSI_ISCSI_ATTRS=m
CONFIG_SCSI_SAS_ATTRS=m
CONFIG_SCSI_SAS_LIBSAS=m
CONFIG_SCSI_SAS_ATA=y
CONFIG_SCSI_SAS_HOST_SMP=y
CONFIG_SCSI_SRP_ATTRS=m
# end of SCSI Transports

CONFIG_SCSI_LOWLEVEL=y
CONFIG_ISCSI_TCP=m
CONFIG_ISCSI_BOOT_SYSFS=m
CONFIG_SCSI_CXGB3_ISCSI=m
CONFIG_SCSI_CXGB4_ISCSI=m
CONFIG_SCSI_BNX2_ISCSI=m
CONFIG_SCSI_BNX2X_FCOE=m
CONFIG_BE2ISCSI=m
# CONFIG_BLK_DEV_3W_XXXX_RAID is not set
CONFIG_SCSI_HPSA=m
CONFIG_SCSI_3W_9XXX=m
CONFIG_SCSI_3W_SAS=m
# CONFIG_SCSI_ACARD is not set
CONFIG_SCSI_AACRAID=m
# CONFIG_SCSI_AIC7XXX is not set
CONFIG_SCSI_AIC79XX=m
CONFIG_AIC79XX_CMDS_PER_DEVICE=4
CONFIG_AIC79XX_RESET_DELAY_MS=15000
# CONFIG_AIC79XX_DEBUG_ENABLE is not set
CONFIG_AIC79XX_DEBUG_MASK=0
# CONFIG_AIC79XX_REG_PRETTY_PRINT is not set
# CONFIG_SCSI_AIC94XX is not set
CONFIG_SCSI_MVSAS=m
# CONFIG_SCSI_MVSAS_DEBUG is not set
CONFIG_SCSI_MVSAS_TASKLET=y
CONFIG_SCSI_MVUMI=m
# CONFIG_SCSI_DPT_I2O is not set
# CONFIG_SCSI_ADVANSYS is not set
CONFIG_SCSI_ARCMSR=m
# CONFIG_SCSI_ESAS2R is not set
# CONFIG_MEGARAID_NEWGEN is not set
# CONFIG_MEGARAID_LEGACY is not set
CONFIG_MEGARAID_SAS=m
CONFIG_SCSI_MPT3SAS=m
CONFIG_SCSI_MPT2SAS_MAX_SGE=128
CONFIG_SCSI_MPT3SAS_MAX_SGE=128
CONFIG_SCSI_MPT2SAS=m
# CONFIG_SCSI_SMARTPQI is not set
CONFIG_SCSI_UFSHCD=m
CONFIG_SCSI_UFSHCD_PCI=m
# CONFIG_SCSI_UFS_DWC_TC_PCI is not set
# CONFIG_SCSI_UFSHCD_PLATFORM is not set
# CONFIG_SCSI_UFS_BSG is not set
CONFIG_SCSI_HPTIOP=m
# CONFIG_SCSI_BUSLOGIC is not set
# CONFIG_SCSI_MYRB is not set
# CONFIG_SCSI_MYRS is not set
CONFIG_VMWARE_PVSCSI=m
# CONFIG_XEN_SCSI_FRONTEND is not set
CONFIG_HYPERV_STORAGE=m
CONFIG_LIBFC=m
CONFIG_LIBFCOE=m
CONFIG_FCOE=m
CONFIG_FCOE_FNIC=m
# CONFIG_SCSI_SNIC is not set
# CONFIG_SCSI_DMX3191D is not set
# CONFIG_SCSI_FDOMAIN_PCI is not set
# CONFIG_SCSI_GDTH is not set
CONFIG_SCSI_ISCI=m
# CONFIG_SCSI_IPS is not set
CONFIG_SCSI_INITIO=m
# CONFIG_SCSI_INIA100 is not set
# CONFIG_SCSI_PPA is not set
# CONFIG_SCSI_IMM is not set
CONFIG_SCSI_STEX=m
# CONFIG_SCSI_SYM53C8XX_2 is not set
# CONFIG_SCSI_IPR is not set
# CONFIG_SCSI_QLOGIC_1280 is not set
CONFIG_SCSI_QLA_FC=m
CONFIG_TCM_QLA2XXX=m
# CONFIG_TCM_QLA2XXX_DEBUG is not set
CONFIG_SCSI_QLA_ISCSI=m
# CONFIG_QEDI is not set
# CONFIG_QEDF is not set
# CONFIG_SCSI_LPFC is not set
# CONFIG_SCSI_DC395x is not set
# CONFIG_SCSI_AM53C974 is not set
# CONFIG_SCSI_WD719X is not set
CONFIG_SCSI_DEBUG=m
CONFIG_SCSI_PMCRAID=m
CONFIG_SCSI_PM8001=m
# CONFIG_SCSI_BFA_FC is not set
CONFIG_SCSI_VIRTIO=m
# CONFIG_SCSI_CHELSIO_FCOE is not set
CONFIG_SCSI_DH=y
CONFIG_SCSI_DH_RDAC=y
CONFIG_SCSI_DH_HP_SW=y
CONFIG_SCSI_DH_EMC=y
CONFIG_SCSI_DH_ALUA=y
# end of SCSI device support

CONFIG_ATA=m
CONFIG_ATA_VERBOSE_ERROR=y
CONFIG_ATA_ACPI=y
# CONFIG_SATA_ZPODD is not set
CONFIG_SATA_PMP=y

#
# Controllers with non-SFF native interface
#
CONFIG_SATA_AHCI=m
CONFIG_SATA_MOBILE_LPM_POLICY=0
CONFIG_SATA_AHCI_PLATFORM=m
# CONFIG_SATA_INIC162X is not set
CONFIG_SATA_ACARD_AHCI=m
CONFIG_SATA_SIL24=m
CONFIG_ATA_SFF=y

#
# SFF controllers with custom DMA interface
#
CONFIG_PDC_ADMA=m
CONFIG_SATA_QSTOR=m
CONFIG_SATA_SX4=m
CONFIG_ATA_BMDMA=y

#
# SATA SFF controllers with BMDMA
#
CONFIG_ATA_PIIX=m
# CONFIG_SATA_DWC is not set
CONFIG_SATA_MV=m
CONFIG_SATA_NV=m
CONFIG_SATA_PROMISE=m
CONFIG_SATA_SIL=m
CONFIG_SATA_SIS=m
CONFIG_SATA_SVW=m
CONFIG_SATA_ULI=m
CONFIG_SATA_VIA=m
CONFIG_SATA_VITESSE=m

#
# PATA SFF controllers with BMDMA
#
CONFIG_PATA_ALI=m
CONFIG_PATA_AMD=m
CONFIG_PATA_ARTOP=m
CONFIG_PATA_ATIIXP=m
CONFIG_PATA_ATP867X=m
CONFIG_PATA_CMD64X=m
# CONFIG_PATA_CYPRESS is not set
# CONFIG_PATA_EFAR is not set
CONFIG_PATA_HPT366=m
CONFIG_PATA_HPT37X=m
CONFIG_PATA_HPT3X2N=m
CONFIG_PATA_HPT3X3=m
# CONFIG_PATA_HPT3X3_DMA is not set
CONFIG_PATA_IT8213=m
CONFIG_PATA_IT821X=m
CONFIG_PATA_JMICRON=m
CONFIG_PATA_MARVELL=m
CONFIG_PATA_NETCELL=m
CONFIG_PATA_NINJA32=m
# CONFIG_PATA_NS87415 is not set
CONFIG_PATA_OLDPIIX=m
# CONFIG_PATA_OPTIDMA is not set
CONFIG_PATA_PDC2027X=m
CONFIG_PATA_PDC_OLD=m
# CONFIG_PATA_RADISYS is not set
CONFIG_PATA_RDC=m
CONFIG_PATA_SCH=m
CONFIG_PATA_SERVERWORKS=m
CONFIG_PATA_SIL680=m
CONFIG_PATA_SIS=m
CONFIG_PATA_TOSHIBA=m
# CONFIG_PATA_TRIFLEX is not set
CONFIG_PATA_VIA=m
# CONFIG_PATA_WINBOND is not set

#
# PIO-only SFF controllers
#
# CONFIG_PATA_CMD640_PCI is not set
# CONFIG_PATA_MPIIX is not set
# CONFIG_PATA_NS87410 is not set
# CONFIG_PATA_OPTI is not set
# CONFIG_PATA_PLATFORM is not set
# CONFIG_PATA_RZ1000 is not set

#
# Generic fallback / legacy drivers
#
CONFIG_PATA_ACPI=m
CONFIG_ATA_GENERIC=m
# CONFIG_PATA_LEGACY is not set
CONFIG_MD=y
CONFIG_BLK_DEV_MD=y
CONFIG_MD_AUTODETECT=y
CONFIG_MD_LINEAR=m
CONFIG_MD_RAID0=m
CONFIG_MD_RAID1=m
CONFIG_MD_RAID10=m
CONFIG_MD_RAID456=m
CONFIG_MD_MULTIPATH=m
CONFIG_MD_FAULTY=m
# CONFIG_MD_CLUSTER is not set
# CONFIG_BCACHE is not set
CONFIG_BLK_DEV_DM_BUILTIN=y
CONFIG_BLK_DEV_DM=m
CONFIG_DM_DEBUG=y
CONFIG_DM_BUFIO=m
# CONFIG_DM_DEBUG_BLOCK_MANAGER_LOCKING is not set
CONFIG_DM_BIO_PRISON=m
CONFIG_DM_PERSISTENT_DATA=m
# CONFIG_DM_UNSTRIPED is not set
CONFIG_DM_CRYPT=m
CONFIG_DM_SNAPSHOT=m
CONFIG_DM_THIN_PROVISIONING=m
CONFIG_DM_CACHE=m
CONFIG_DM_CACHE_SMQ=m
# CONFIG_DM_WRITECACHE is not set
CONFIG_DM_ERA=m
# CONFIG_DM_CLONE is not set
CONFIG_DM_MIRROR=m
CONFIG_DM_LOG_USERSPACE=m
CONFIG_DM_RAID=m
CONFIG_DM_ZERO=m
CONFIG_DM_MULTIPATH=m
CONFIG_DM_MULTIPATH_QL=m
CONFIG_DM_MULTIPATH_ST=m
CONFIG_DM_DELAY=m
# CONFIG_DM_DUST is not set
CONFIG_DM_UEVENT=y
CONFIG_DM_FLAKEY=m
CONFIG_DM_VERITY=m
# CONFIG_DM_VERITY_VERIFY_ROOTHASH_SIG is not set
# CONFIG_DM_VERITY_FEC is not set
CONFIG_DM_SWITCH=m
CONFIG_DM_LOG_WRITES=m
# CONFIG_DM_INTEGRITY is not set
# CONFIG_DM_ZONED is not set
CONFIG_TARGET_CORE=m
CONFIG_TCM_IBLOCK=m
CONFIG_TCM_FILEIO=m
CONFIG_TCM_PSCSI=m
CONFIG_TCM_USER2=m
CONFIG_LOOPBACK_TARGET=m
CONFIG_TCM_FC=m
CONFIG_ISCSI_TARGET=m
CONFIG_ISCSI_TARGET_CXGB4=m
# CONFIG_SBP_TARGET is not set
CONFIG_FUSION=y
CONFIG_FUSION_SPI=m
# CONFIG_FUSION_FC is not set
CONFIG_FUSION_SAS=m
CONFIG_FUSION_MAX_SGE=128
CONFIG_FUSION_CTL=m
CONFIG_FUSION_LOGGING=y

#
# IEEE 1394 (FireWire) support
#
CONFIG_FIREWIRE=m
CONFIG_FIREWIRE_OHCI=m
CONFIG_FIREWIRE_SBP2=m
CONFIG_FIREWIRE_NET=m
# CONFIG_FIREWIRE_NOSY is not set
# end of IEEE 1394 (FireWire) support

CONFIG_MACINTOSH_DRIVERS=y
CONFIG_MAC_EMUMOUSEBTN=y
CONFIG_NETDEVICES=y
CONFIG_MII=y
CONFIG_NET_CORE=y
CONFIG_BONDING=m
CONFIG_DUMMY=y
# CONFIG_WIREGUARD is not set
# CONFIG_EQUALIZER is not set
CONFIG_NET_FC=y
CONFIG_IFB=y
CONFIG_NET_TEAM=m
CONFIG_NET_TEAM_MODE_BROADCAST=m
CONFIG_NET_TEAM_MODE_ROUNDROBIN=m
CONFIG_NET_TEAM_MODE_RANDOM=m
CONFIG_NET_TEAM_MODE_ACTIVEBACKUP=m
CONFIG_NET_TEAM_MODE_LOADBALANCE=m
CONFIG_MACVLAN=m
CONFIG_MACVTAP=m
# CONFIG_IPVLAN is not set
CONFIG_VXLAN=y
CONFIG_GENEVE=y
# CONFIG_GTP is not set
CONFIG_MACSEC=y
CONFIG_NETCONSOLE=m
CONFIG_NETCONSOLE_DYNAMIC=y
CONFIG_NETPOLL=y
CONFIG_NET_POLL_CONTROLLER=y
CONFIG_NTB_NETDEV=m
CONFIG_TUN=m
CONFIG_TAP=m
# CONFIG_TUN_VNET_CROSS_LE is not set
CONFIG_VETH=y
CONFIG_VIRTIO_NET=m
CONFIG_NLMON=m
CONFIG_NET_VRF=y
CONFIG_VSOCKMON=m
# CONFIG_ARCNET is not set
# CONFIG_ATM_DRIVERS is not set

#
# Distributed Switch Architecture drivers
#
# end of Distributed Switch Architecture drivers

CONFIG_ETHERNET=y
CONFIG_MDIO=y
# CONFIG_NET_VENDOR_3COM is not set
# CONFIG_NET_VENDOR_ADAPTEC is not set
CONFIG_NET_VENDOR_AGERE=y
# CONFIG_ET131X is not set
CONFIG_NET_VENDOR_ALACRITECH=y
# CONFIG_SLICOSS is not set
# CONFIG_NET_VENDOR_ALTEON is not set
# CONFIG_ALTERA_TSE is not set
CONFIG_NET_VENDOR_AMAZON=y
CONFIG_ENA_ETHERNET=m
CONFIG_NET_VENDOR_AMD=y
CONFIG_AMD8111_ETH=m
CONFIG_PCNET32=m
CONFIG_AMD_XGBE=m
# CONFIG_AMD_XGBE_DCB is not set
CONFIG_AMD_XGBE_HAVE_ECC=y
CONFIG_NET_VENDOR_AQUANTIA=y
CONFIG_AQTION=m
CONFIG_NET_VENDOR_ARC=y
CONFIG_NET_VENDOR_ATHEROS=y
CONFIG_ATL2=m
CONFIG_ATL1=m
CONFIG_ATL1E=m
CONFIG_ATL1C=m
CONFIG_ALX=m
CONFIG_NET_VENDOR_AURORA=y
# CONFIG_AURORA_NB8800 is not set
CONFIG_NET_VENDOR_BROADCOM=y
CONFIG_B44=m
CONFIG_B44_PCI_AUTOSELECT=y
CONFIG_B44_PCICORE_AUTOSELECT=y
CONFIG_B44_PCI=y
# CONFIG_BCMGENET is not set
CONFIG_BNX2=m
CONFIG_CNIC=m
CONFIG_TIGON3=y
CONFIG_TIGON3_HWMON=y
CONFIG_BNX2X=m
CONFIG_BNX2X_SRIOV=y
# CONFIG_SYSTEMPORT is not set
CONFIG_BNXT=m
CONFIG_BNXT_SRIOV=y
CONFIG_BNXT_FLOWER_OFFLOAD=y
CONFIG_BNXT_DCB=y
CONFIG_BNXT_HWMON=y
CONFIG_NET_VENDOR_BROCADE=y
CONFIG_BNA=m
CONFIG_NET_VENDOR_CADENCE=y
CONFIG_MACB=m
CONFIG_MACB_USE_HWSTAMP=y
# CONFIG_MACB_PCI is not set
CONFIG_NET_VENDOR_CAVIUM=y
# CONFIG_THUNDER_NIC_PF is not set
# CONFIG_THUNDER_NIC_VF is not set
# CONFIG_THUNDER_NIC_BGX is not set
# CONFIG_THUNDER_NIC_RGX is not set
CONFIG_CAVIUM_PTP=y
CONFIG_LIQUIDIO=m
CONFIG_LIQUIDIO_VF=m
CONFIG_NET_VENDOR_CHELSIO=y
# CONFIG_CHELSIO_T1 is not set
CONFIG_CHELSIO_T3=m
CONFIG_CHELSIO_T4=m
# CONFIG_CHELSIO_T4_DCB is not set
CONFIG_CHELSIO_T4VF=m
CONFIG_CHELSIO_LIB=m
CONFIG_NET_VENDOR_CISCO=y
CONFIG_ENIC=m
CONFIG_NET_VENDOR_CORTINA=y
# CONFIG_CX_ECAT is not set
CONFIG_DNET=m
CONFIG_NET_VENDOR_DEC=y
CONFIG_NET_TULIP=y
CONFIG_DE2104X=m
CONFIG_DE2104X_DSL=0
CONFIG_TULIP=y
# CONFIG_TULIP_MWI is not set
CONFIG_TULIP_MMIO=y
# CONFIG_TULIP_NAPI is not set
CONFIG_DE4X5=m
CONFIG_WINBOND_840=m
CONFIG_DM9102=m
CONFIG_ULI526X=m
CONFIG_PCMCIA_XIRCOM=m
# CONFIG_NET_VENDOR_DLINK is not set
CONFIG_NET_VENDOR_EMULEX=y
CONFIG_BE2NET=m
CONFIG_BE2NET_HWMON=y
CONFIG_BE2NET_BE2=y
CONFIG_BE2NET_BE3=y
CONFIG_BE2NET_LANCER=y
CONFIG_BE2NET_SKYHAWK=y
CONFIG_NET_VENDOR_EZCHIP=y
CONFIG_NET_VENDOR_GOOGLE=y
# CONFIG_GVE is not set
CONFIG_NET_VENDOR_HUAWEI=y
# CONFIG_HINIC is not set
# CONFIG_NET_VENDOR_I825XX is not set
CONFIG_NET_VENDOR_INTEL=y
# CONFIG_E100 is not set
CONFIG_E1000=y
CONFIG_E1000E=y
CONFIG_E1000E_HWTS=y
CONFIG_IGB=y
CONFIG_IGB_HWMON=y
CONFIG_IGBVF=m
# CONFIG_IXGB is not set
CONFIG_IXGBE=y
CONFIG_IXGBE_HWMON=y
CONFIG_IXGBE_DCB=y
CONFIG_IXGBEVF=m
CONFIG_I40E=y
CONFIG_I40E_DCB=y
CONFIG_IAVF=m
CONFIG_I40EVF=m
# CONFIG_ICE is not set
CONFIG_FM10K=m
# CONFIG_IGC is not set
CONFIG_JME=m
CONFIG_NET_VENDOR_MARVELL=y
CONFIG_MVMDIO=m
CONFIG_SKGE=y
# CONFIG_SKGE_DEBUG is not set
CONFIG_SKGE_GENESIS=y
CONFIG_SKY2=m
# CONFIG_SKY2_DEBUG is not set
CONFIG_NET_VENDOR_MELLANOX=y
CONFIG_MLX4_EN=m
CONFIG_MLX4_EN_DCB=y
CONFIG_MLX4_CORE=m
CONFIG_MLX4_DEBUG=y
CONFIG_MLX4_CORE_GEN2=y
# CONFIG_MLX5_CORE is not set
# CONFIG_MLXSW_CORE is not set
# CONFIG_MLXFW is not set
# CONFIG_NET_VENDOR_MICREL is not set
# CONFIG_NET_VENDOR_MICROCHIP is not set
CONFIG_NET_VENDOR_MICROSEMI=y
# CONFIG_MSCC_OCELOT_SWITCH is not set
CONFIG_NET_VENDOR_MYRI=y
CONFIG_MYRI10GE=m
CONFIG_MYRI10GE_DCA=y
# CONFIG_FEALNX is not set
# CONFIG_NET_VENDOR_NATSEMI is not set
CONFIG_NET_VENDOR_NETERION=y
# CONFIG_S2IO is not set
# CONFIG_VXGE is not set
CONFIG_NET_VENDOR_NETRONOME=y
CONFIG_NFP=m
CONFIG_NFP_APP_FLOWER=y
CONFIG_NFP_APP_ABM_NIC=y
# CONFIG_NFP_DEBUG is not set
CONFIG_NET_VENDOR_NI=y
# CONFIG_NI_XGE_MANAGEMENT_ENET is not set
# CONFIG_NET_VENDOR_NVIDIA is not set
CONFIG_NET_VENDOR_OKI=y
CONFIG_ETHOC=m
CONFIG_NET_VENDOR_PACKET_ENGINES=y
# CONFIG_HAMACHI is not set
CONFIG_YELLOWFIN=m
CONFIG_NET_VENDOR_PENSANDO=y
# CONFIG_IONIC is not set
CONFIG_NET_VENDOR_QLOGIC=y
CONFIG_QLA3XXX=m
CONFIG_QLCNIC=m
CONFIG_QLCNIC_SRIOV=y
CONFIG_QLCNIC_DCB=y
CONFIG_QLCNIC_HWMON=y
CONFIG_NETXEN_NIC=m
CONFIG_QED=m
CONFIG_QED_SRIOV=y
CONFIG_QEDE=m
CONFIG_NET_VENDOR_QUALCOMM=y
# CONFIG_QCOM_EMAC is not set
# CONFIG_RMNET is not set
# CONFIG_NET_VENDOR_RDC is not set
CONFIG_NET_VENDOR_REALTEK=y
# CONFIG_ATP is not set
CONFIG_8139CP=y
CONFIG_8139TOO=y
# CONFIG_8139TOO_PIO is not set
# CONFIG_8139TOO_TUNE_TWISTER is not set
CONFIG_8139TOO_8129=y
# CONFIG_8139_OLD_RX_RESET is not set
CONFIG_R8169=y
CONFIG_NET_VENDOR_RENESAS=y
CONFIG_NET_VENDOR_ROCKER=y
CONFIG_ROCKER=m
CONFIG_NET_VENDOR_SAMSUNG=y
# CONFIG_SXGBE_ETH is not set
# CONFIG_NET_VENDOR_SEEQ is not set
CONFIG_NET_VENDOR_SOLARFLARE=y
CONFIG_SFC=m
CONFIG_SFC_MTD=y
CONFIG_SFC_MCDI_MON=y
CONFIG_SFC_SRIOV=y
CONFIG_SFC_MCDI_LOGGING=y
CONFIG_SFC_FALCON=m
CONFIG_SFC_FALCON_MTD=y
# CONFIG_NET_VENDOR_SILAN is not set
# CONFIG_NET_VENDOR_SIS is not set
CONFIG_NET_VENDOR_SMSC=y
CONFIG_EPIC100=m
# CONFIG_SMSC911X is not set
CONFIG_SMSC9420=m
CONFIG_NET_VENDOR_SOCIONEXT=y
# CONFIG_NET_VENDOR_STMICRO is not set
# CONFIG_NET_VENDOR_SUN is not set
CONFIG_NET_VENDOR_SYNOPSYS=y
# CONFIG_DWC_XLGMAC is not set
# CONFIG_NET_VENDOR_TEHUTI is not set
CONFIG_NET_VENDOR_TI=y
# CONFIG_TI_CPSW_PHY_SEL is not set
CONFIG_TLAN=m
# CONFIG_NET_VENDOR_VIA is not set
# CONFIG_NET_VENDOR_WIZNET is not set
CONFIG_NET_VENDOR_XILINX=y
# CONFIG_XILINX_AXI_EMAC is not set
# CONFIG_XILINX_LL_TEMAC is not set
# CONFIG_FDDI is not set
# CONFIG_HIPPI is not set
# CONFIG_NET_SB1000 is not set
CONFIG_MDIO_DEVICE=y
CONFIG_MDIO_BUS=y
# CONFIG_MDIO_BCM_UNIMAC is not set
CONFIG_MDIO_BITBANG=m
# CONFIG_MDIO_GPIO is not set
# CONFIG_MDIO_MSCC_MIIM is not set
# CONFIG_MDIO_THUNDER is not set
CONFIG_PHYLINK=m
CONFIG_PHYLIB=y
CONFIG_SWPHY=y
# CONFIG_LED_TRIGGER_PHY is not set

#
# MII PHY device drivers
#
# CONFIG_SFP is not set
# CONFIG_ADIN_PHY is not set
CONFIG_AMD_PHY=m
# CONFIG_AQUANTIA_PHY is not set
# CONFIG_AX88796B_PHY is not set
# CONFIG_BCM7XXX_PHY is not set
CONFIG_BCM87XX_PHY=m
CONFIG_BCM_NET_PHYLIB=m
CONFIG_BROADCOM_PHY=m
# CONFIG_BCM84881_PHY is not set
CONFIG_CICADA_PHY=m
# CONFIG_CORTINA_PHY is not set
CONFIG_DAVICOM_PHY=m
# CONFIG_DP83822_PHY is not set
# CONFIG_DP83TC811_PHY is not set
# CONFIG_DP83848_PHY is not set
# CONFIG_DP83867_PHY is not set
# CONFIG_DP83869_PHY is not set
CONFIG_FIXED_PHY=y
CONFIG_ICPLUS_PHY=m
# CONFIG_INTEL_XWAY_PHY is not set
CONFIG_LSI_ET1011C_PHY=m
CONFIG_LXT_PHY=m
CONFIG_MARVELL_PHY=m
# CONFIG_MARVELL_10G_PHY is not set
CONFIG_MICREL_PHY=m
# CONFIG_MICROCHIP_PHY is not set
# CONFIG_MICROCHIP_T1_PHY is not set
# CONFIG_MICROSEMI_PHY is not set
CONFIG_NATIONAL_PHY=m
# CONFIG_NXP_TJA11XX_PHY is not set
CONFIG_QSEMI_PHY=m
CONFIG_REALTEK_PHY=y
# CONFIG_RENESAS_PHY is not set
# CONFIG_ROCKCHIP_PHY is not set
CONFIG_SMSC_PHY=m
CONFIG_STE10XP=m
# CONFIG_TERANETICS_PHY is not set
CONFIG_VITESSE_PHY=m
# CONFIG_XILINX_GMII2RGMII is not set
# CONFIG_MICREL_KS8995MA is not set
# CONFIG_PLIP is not set
CONFIG_PPP=m
CONFIG_PPP_BSDCOMP=m
CONFIG_PPP_DEFLATE=m
CONFIG_PPP_FILTER=y
CONFIG_PPP_MPPE=m
CONFIG_PPP_MULTILINK=y
CONFIG_PPPOATM=m
CONFIG_PPPOE=m
CONFIG_PPTP=m
CONFIG_PPPOL2TP=m
CONFIG_PPP_ASYNC=m
CONFIG_PPP_SYNC_TTY=m
CONFIG_SLIP=m
CONFIG_SLHC=m
CONFIG_SLIP_COMPRESSED=y
CONFIG_SLIP_SMART=y
# CONFIG_SLIP_MODE_SLIP6 is not set
CONFIG_USB_NET_DRIVERS=y
CONFIG_USB_CATC=y
CONFIG_USB_KAWETH=y
CONFIG_USB_PEGASUS=y
CONFIG_USB_RTL8150=y
CONFIG_USB_RTL8152=m
# CONFIG_USB_LAN78XX is not set
CONFIG_USB_USBNET=y
CONFIG_USB_NET_AX8817X=y
CONFIG_USB_NET_AX88179_178A=m
CONFIG_USB_NET_CDCETHER=y
CONFIG_USB_NET_CDC_EEM=y
CONFIG_USB_NET_CDC_NCM=m
CONFIG_USB_NET_HUAWEI_CDC_NCM=m
CONFIG_USB_NET_CDC_MBIM=m
CONFIG_USB_NET_DM9601=y
# CONFIG_USB_NET_SR9700 is not set
# CONFIG_USB_NET_SR9800 is not set
CONFIG_USB_NET_SMSC75XX=y
CONFIG_USB_NET_SMSC95XX=y
CONFIG_USB_NET_GL620A=y
CONFIG_USB_NET_NET1080=y
CONFIG_USB_NET_PLUSB=y
CONFIG_USB_NET_MCS7830=y
CONFIG_USB_NET_RNDIS_HOST=y
CONFIG_USB_NET_CDC_SUBSET_ENABLE=y
CONFIG_USB_NET_CDC_SUBSET=y
CONFIG_USB_ALI_M5632=y
CONFIG_USB_AN2720=y
CONFIG_USB_BELKIN=y
CONFIG_USB_ARMLINUX=y
CONFIG_USB_EPSON2888=y
CONFIG_USB_KC2190=y
CONFIG_USB_NET_ZAURUS=y
CONFIG_USB_NET_CX82310_ETH=m
CONFIG_USB_NET_KALMIA=m
CONFIG_USB_NET_QMI_WWAN=m
CONFIG_USB_HSO=m
CONFIG_USB_NET_INT51X1=y
CONFIG_USB_IPHETH=y
CONFIG_USB_SIERRA_NET=y
CONFIG_USB_VL600=m
# CONFIG_USB_NET_CH9200 is not set
# CONFIG_USB_NET_AQC111 is not set
CONFIG_WLAN=y
# CONFIG_WIRELESS_WDS is not set
CONFIG_WLAN_VENDOR_ADMTEK=y
# CONFIG_ADM8211 is not set
CONFIG_ATH_COMMON=m
CONFIG_WLAN_VENDOR_ATH=y
# CONFIG_ATH_DEBUG is not set
# CONFIG_ATH5K is not set
# CONFIG_ATH5K_PCI is not set
CONFIG_ATH9K_HW=m
CONFIG_ATH9K_COMMON=m
CONFIG_ATH9K_BTCOEX_SUPPORT=y
# CONFIG_ATH9K is not set
CONFIG_ATH9K_HTC=m
# CONFIG_ATH9K_HTC_DEBUGFS is not set
# CONFIG_CARL9170 is not set
# CONFIG_ATH6KL is not set
# CONFIG_AR5523 is not set
# CONFIG_WIL6210 is not set
# CONFIG_ATH10K is not set
# CONFIG_WCN36XX is not set
CONFIG_WLAN_VENDOR_ATMEL=y
# CONFIG_ATMEL is not set
# CONFIG_AT76C50X_USB is not set
CONFIG_WLAN_VENDOR_BROADCOM=y
# CONFIG_B43 is not set
# CONFIG_B43LEGACY is not set
# CONFIG_BRCMSMAC is not set
# CONFIG_BRCMFMAC is not set
CONFIG_WLAN_VENDOR_CISCO=y
# CONFIG_AIRO is not set
CONFIG_WLAN_VENDOR_INTEL=y
# CONFIG_IPW2100 is not set
# CONFIG_IPW2200 is not set
CONFIG_IWLEGACY=m
CONFIG_IWL4965=m
CONFIG_IWL3945=m

#
# iwl3945 / iwl4965 Debugging Options
#
CONFIG_IWLEGACY_DEBUG=y
CONFIG_IWLEGACY_DEBUGFS=y
# end of iwl3945 / iwl4965 Debugging Options

CONFIG_IWLWIFI=m
CONFIG_IWLWIFI_LEDS=y
CONFIG_IWLDVM=m
CONFIG_IWLMVM=m
CONFIG_IWLWIFI_OPMODE_MODULAR=y
# CONFIG_IWLWIFI_BCAST_FILTERING is not set

#
# Debugging Options
#
# CONFIG_IWLWIFI_DEBUG is not set
CONFIG_IWLWIFI_DEBUGFS=y
# CONFIG_IWLWIFI_DEVICE_TRACING is not set
# end of Debugging Options

CONFIG_WLAN_VENDOR_INTERSIL=y
# CONFIG_HOSTAP is not set
# CONFIG_HERMES is not set
# CONFIG_P54_COMMON is not set
# CONFIG_PRISM54 is not set
CONFIG_WLAN_VENDOR_MARVELL=y
# CONFIG_LIBERTAS is not set
# CONFIG_LIBERTAS_THINFIRM is not set
# CONFIG_MWIFIEX is not set
# CONFIG_MWL8K is not set
CONFIG_WLAN_VENDOR_MEDIATEK=y
# CONFIG_MT7601U is not set
# CONFIG_MT76x0U is not set
# CONFIG_MT76x0E is not set
# CONFIG_MT76x2E is not set
# CONFIG_MT76x2U is not set
# CONFIG_MT7603E is not set
# CONFIG_MT7615E is not set
CONFIG_WLAN_VENDOR_RALINK=y
# CONFIG_RT2X00 is not set
CONFIG_WLAN_VENDOR_REALTEK=y
# CONFIG_RTL8180 is not set
# CONFIG_RTL8187 is not set
# CONFIG_RTL_CARDS is not set
# CONFIG_RTL8XXXU is not set
# CONFIG_RTW88 is not set
CONFIG_WLAN_VENDOR_RSI=y
# CONFIG_RSI_91X is not set
CONFIG_WLAN_VENDOR_ST=y
# CONFIG_CW1200 is not set
CONFIG_WLAN_VENDOR_TI=y
# CONFIG_WL1251 is not set
# CONFIG_WL12XX is not set
# CONFIG_WL18XX is not set
# CONFIG_WLCORE is not set
CONFIG_WLAN_VENDOR_ZYDAS=y
# CONFIG_USB_ZD1201 is not set
# CONFIG_ZD1211RW is not set
CONFIG_WLAN_VENDOR_QUANTENNA=y
# CONFIG_QTNFMAC_PCIE is not set
CONFIG_MAC80211_HWSIM=m
# CONFIG_USB_NET_RNDIS_WLAN is not set
# CONFIG_VIRT_WIFI is not set

#
# Enable WiMAX (Networking options) to see the WiMAX drivers
#
CONFIG_WAN=y
# CONFIG_LANMEDIA is not set
CONFIG_HDLC=m
CONFIG_HDLC_RAW=m
# CONFIG_HDLC_RAW_ETH is not set
CONFIG_HDLC_CISCO=m
CONFIG_HDLC_FR=m
CONFIG_HDLC_PPP=m

#
# X.25/LAPB support is disabled
#
# CONFIG_PCI200SYN is not set
# CONFIG_WANXL is not set
# CONFIG_PC300TOO is not set
# CONFIG_FARSYNC is not set
CONFIG_DLCI=m
CONFIG_DLCI_MAX=8
# CONFIG_SBNI is not set
CONFIG_IEEE802154_DRIVERS=m
CONFIG_IEEE802154_FAKELB=m
# CONFIG_IEEE802154_AT86RF230 is not set
# CONFIG_IEEE802154_MRF24J40 is not set
# CONFIG_IEEE802154_CC2520 is not set
# CONFIG_IEEE802154_ATUSB is not set
# CONFIG_IEEE802154_ADF7242 is not set
# CONFIG_IEEE802154_CA8210 is not set
# CONFIG_IEEE802154_MCR20A is not set
# CONFIG_IEEE802154_HWSIM is not set
CONFIG_XEN_NETDEV_FRONTEND=m
CONFIG_VMXNET3=m
CONFIG_FUJITSU_ES=m
CONFIG_HYPERV_NET=m
CONFIG_NETDEVSIM=m
CONFIG_NET_FAILOVER=m
CONFIG_ISDN=y
CONFIG_ISDN_CAPI=y
CONFIG_CAPI_TRACE=y
CONFIG_ISDN_CAPI_MIDDLEWARE=y
CONFIG_MISDN=m
CONFIG_MISDN_DSP=m
CONFIG_MISDN_L1OIP=m

#
# mISDN hardware drivers
#
CONFIG_MISDN_HFCPCI=m
CONFIG_MISDN_HFCMULTI=m
CONFIG_MISDN_HFCUSB=m
CONFIG_MISDN_AVMFRITZ=m
CONFIG_MISDN_SPEEDFAX=m
CONFIG_MISDN_INFINEON=m
CONFIG_MISDN_W6692=m
CONFIG_MISDN_NETJET=m
CONFIG_MISDN_HDLC=m
CONFIG_MISDN_IPAC=m
CONFIG_MISDN_ISAR=m
CONFIG_NVM=y
# CONFIG_NVM_PBLK is not set

#
# Input device support
#
CONFIG_INPUT=y
CONFIG_INPUT_LEDS=y
CONFIG_INPUT_FF_MEMLESS=y
CONFIG_INPUT_POLLDEV=m
CONFIG_INPUT_SPARSEKMAP=m
# CONFIG_INPUT_MATRIXKMAP is not set

#
# Userland interfaces
#
CONFIG_INPUT_MOUSEDEV=y
# CONFIG_INPUT_MOUSEDEV_PSAUX is not set
CONFIG_INPUT_MOUSEDEV_SCREEN_X=1024
CONFIG_INPUT_MOUSEDEV_SCREEN_Y=768
CONFIG_INPUT_JOYDEV=m
CONFIG_INPUT_EVDEV=y
# CONFIG_INPUT_EVBUG is not set

#
# Input Device Drivers
#
CONFIG_INPUT_KEYBOARD=y
# CONFIG_KEYBOARD_ADC is not set
# CONFIG_KEYBOARD_ADP5588 is not set
# CONFIG_KEYBOARD_ADP5589 is not set
# CONFIG_KEYBOARD_APPLESPI is not set
CONFIG_KEYBOARD_ATKBD=y
# CONFIG_KEYBOARD_QT1050 is not set
# CONFIG_KEYBOARD_QT1070 is not set
# CONFIG_KEYBOARD_QT2160 is not set
# CONFIG_KEYBOARD_DLINK_DIR685 is not set
# CONFIG_KEYBOARD_LKKBD is not set
# CONFIG_KEYBOARD_GPIO is not set
# CONFIG_KEYBOARD_GPIO_POLLED is not set
# CONFIG_KEYBOARD_TCA6416 is not set
# CONFIG_KEYBOARD_TCA8418 is not set
# CONFIG_KEYBOARD_MATRIX is not set
# CONFIG_KEYBOARD_LM8323 is not set
# CONFIG_KEYBOARD_LM8333 is not set
# CONFIG_KEYBOARD_MAX7359 is not set
# CONFIG_KEYBOARD_MCS is not set
# CONFIG_KEYBOARD_MPR121 is not set
# CONFIG_KEYBOARD_NEWTON is not set
# CONFIG_KEYBOARD_OPENCORES is not set
# CONFIG_KEYBOARD_SAMSUNG is not set
# CONFIG_KEYBOARD_STOWAWAY is not set
# CONFIG_KEYBOARD_SUNKBD is not set
# CONFIG_KEYBOARD_TM2_TOUCHKEY is not set
# CONFIG_KEYBOARD_XTKBD is not set
CONFIG_INPUT_MOUSE=y
CONFIG_MOUSE_PS2=y
CONFIG_MOUSE_PS2_ALPS=y
CONFIG_MOUSE_PS2_BYD=y
CONFIG_MOUSE_PS2_LOGIPS2PP=y
CONFIG_MOUSE_PS2_SYNAPTICS=y
CONFIG_MOUSE_PS2_SYNAPTICS_SMBUS=y
CONFIG_MOUSE_PS2_CYPRESS=y
CONFIG_MOUSE_PS2_LIFEBOOK=y
CONFIG_MOUSE_PS2_TRACKPOINT=y
CONFIG_MOUSE_PS2_ELANTECH=y
CONFIG_MOUSE_PS2_ELANTECH_SMBUS=y
CONFIG_MOUSE_PS2_SENTELIC=y
# CONFIG_MOUSE_PS2_TOUCHKIT is not set
CONFIG_MOUSE_PS2_FOCALTECH=y
CONFIG_MOUSE_PS2_VMMOUSE=y
CONFIG_MOUSE_PS2_SMBUS=y
CONFIG_MOUSE_SERIAL=m
CONFIG_MOUSE_APPLETOUCH=m
CONFIG_MOUSE_BCM5974=m
CONFIG_MOUSE_CYAPA=m
# CONFIG_MOUSE_ELAN_I2C is not set
CONFIG_MOUSE_VSXXXAA=m
# CONFIG_MOUSE_GPIO is not set
CONFIG_MOUSE_SYNAPTICS_I2C=m
CONFIG_MOUSE_SYNAPTICS_USB=m
# CONFIG_INPUT_JOYSTICK is not set
CONFIG_INPUT_TABLET=y
CONFIG_TABLET_USB_ACECAD=m
CONFIG_TABLET_USB_AIPTEK=m
CONFIG_TABLET_USB_GTCO=m
# CONFIG_TABLET_USB_HANWANG is not set
CONFIG_TABLET_USB_KBTAB=m
# CONFIG_TABLET_USB_PEGASUS is not set
# CONFIG_TABLET_SERIAL_WACOM4 is not set
CONFIG_INPUT_TOUCHSCREEN=y
CONFIG_TOUCHSCREEN_PROPERTIES=y
# CONFIG_TOUCHSCREEN_ADS7846 is not set
# CONFIG_TOUCHSCREEN_AD7877 is not set
# CONFIG_TOUCHSCREEN_AD7879 is not set
# CONFIG_TOUCHSCREEN_ADC is not set
# CONFIG_TOUCHSCREEN_ATMEL_MXT is not set
# CONFIG_TOUCHSCREEN_AUO_PIXCIR is not set
# CONFIG_TOUCHSCREEN_BU21013 is not set
# CONFIG_TOUCHSCREEN_BU21029 is not set
# CONFIG_TOUCHSCREEN_CHIPONE_ICN8505 is not set
# CONFIG_TOUCHSCREEN_CY8CTMG110 is not set
# CONFIG_TOUCHSCREEN_CYTTSP_CORE is not set
# CONFIG_TOUCHSCREEN_CYTTSP4_CORE is not set
# CONFIG_TOUCHSCREEN_DYNAPRO is not set
# CONFIG_TOUCHSCREEN_HAMPSHIRE is not set
# CONFIG_TOUCHSCREEN_EETI is not set
# CONFIG_TOUCHSCREEN_EGALAX_SERIAL is not set
# CONFIG_TOUCHSCREEN_EXC3000 is not set
# CONFIG_TOUCHSCREEN_FUJITSU is not set
# CONFIG_TOUCHSCREEN_GOODIX is not set
# CONFIG_TOUCHSCREEN_HIDEEP is not set
# CONFIG_TOUCHSCREEN_ILI210X is not set
# CONFIG_TOUCHSCREEN_S6SY761 is not set
# CONFIG_TOUCHSCREEN_GUNZE is not set
# CONFIG_TOUCHSCREEN_EKTF2127 is not set
# CONFIG_TOUCHSCREEN_ELAN is not set
CONFIG_TOUCHSCREEN_ELO=m
CONFIG_TOUCHSCREEN_WACOM_W8001=m
CONFIG_TOUCHSCREEN_WACOM_I2C=m
# CONFIG_TOUCHSCREEN_MAX11801 is not set
# CONFIG_TOUCHSCREEN_MCS5000 is not set
# CONFIG_TOUCHSCREEN_MMS114 is not set
# CONFIG_TOUCHSCREEN_MELFAS_MIP4 is not set
# CONFIG_TOUCHSCREEN_MTOUCH is not set
# CONFIG_TOUCHSCREEN_INEXIO is not set
# CONFIG_TOUCHSCREEN_MK712 is not set
# CONFIG_TOUCHSCREEN_PENMOUNT is not set
# CONFIG_TOUCHSCREEN_EDT_FT5X06 is not set
# CONFIG_TOUCHSCREEN_TOUCHRIGHT is not set
# CONFIG_TOUCHSCREEN_TOUCHWIN is not set
# CONFIG_TOUCHSCREEN_PIXCIR is not set
# CONFIG_TOUCHSCREEN_WDT87XX_I2C is not set
# CONFIG_TOUCHSCREEN_WM97XX is not set
# CONFIG_TOUCHSCREEN_USB_COMPOSITE is not set
# CONFIG_TOUCHSCREEN_TOUCHIT213 is not set
# CONFIG_TOUCHSCREEN_TSC_SERIO is not set
# CONFIG_TOUCHSCREEN_TSC2004 is not set
# CONFIG_TOUCHSCREEN_TSC2005 is not set
# CONFIG_TOUCHSCREEN_TSC2007 is not set
# CONFIG_TOUCHSCREEN_RM_TS is not set
# CONFIG_TOUCHSCREEN_SILEAD is not set
# CONFIG_TOUCHSCREEN_SIS_I2C is not set
# CONFIG_TOUCHSCREEN_ST1232 is not set
# CONFIG_TOUCHSCREEN_STMFTS is not set
# CONFIG_TOUCHSCREEN_SUR40 is not set
# CONFIG_TOUCHSCREEN_SURFACE3_SPI is not set
# CONFIG_TOUCHSCREEN_SX8654 is not set
# CONFIG_TOUCHSCREEN_TPS6507X is not set
# CONFIG_TOUCHSCREEN_ZET6223 is not set
# CONFIG_TOUCHSCREEN_ZFORCE is not set
# CONFIG_TOUCHSCREEN_ROHM_BU21023 is not set
# CONFIG_TOUCHSCREEN_IQS5XX is not set
CONFIG_INPUT_MISC=y
# CONFIG_INPUT_AD714X is not set
# CONFIG_INPUT_BMA150 is not set
# CONFIG_INPUT_E3X0_BUTTON is not set
# CONFIG_INPUT_MSM_VIBRATOR is not set
CONFIG_INPUT_PCSPKR=m
# CONFIG_INPUT_MMA8450 is not set
CONFIG_INPUT_APANEL=m
CONFIG_INPUT_GP2A=m
# CONFIG_INPUT_GPIO_BEEPER is not set
# CONFIG_INPUT_GPIO_DECODER is not set
# CONFIG_INPUT_GPIO_VIBRA is not set
CONFIG_INPUT_ATLAS_BTNS=m
CONFIG_INPUT_ATI_REMOTE2=m
CONFIG_INPUT_KEYSPAN_REMOTE=m
# CONFIG_INPUT_KXTJ9 is not set
CONFIG_INPUT_POWERMATE=m
CONFIG_INPUT_YEALINK=m
CONFIG_INPUT_CM109=m
CONFIG_INPUT_UINPUT=m
# CONFIG_INPUT_PCF8574 is not set
# CONFIG_INPUT_PWM_BEEPER is not set
# CONFIG_INPUT_PWM_VIBRA is not set
CONFIG_INPUT_GPIO_ROTARY_ENCODER=m
# CONFIG_INPUT_ADXL34X is not set
# CONFIG_INPUT_IMS_PCU is not set
# CONFIG_INPUT_CMA3000 is not set
CONFIG_INPUT_XEN_KBDDEV_FRONTEND=m
# CONFIG_INPUT_IDEAPAD_SLIDEBAR is not set
# CONFIG_INPUT_DRV260X_HAPTICS is not set
# CONFIG_INPUT_DRV2665_HAPTICS is not set
# CONFIG_INPUT_DRV2667_HAPTICS is not set
CONFIG_RMI4_CORE=m
# CONFIG_RMI4_I2C is not set
# CONFIG_RMI4_SPI is not set
CONFIG_RMI4_SMB=m
CONFIG_RMI4_F03=y
CONFIG_RMI4_F03_SERIO=m
CONFIG_RMI4_2D_SENSOR=y
CONFIG_RMI4_F11=y
CONFIG_RMI4_F12=y
CONFIG_RMI4_F30=y
# CONFIG_RMI4_F34 is not set
# CONFIG_RMI4_F54 is not set
# CONFIG_RMI4_F55 is not set

#
# Hardware I/O ports
#
CONFIG_SERIO=y
CONFIG_ARCH_MIGHT_HAVE_PC_SERIO=y
CONFIG_SERIO_I8042=y
CONFIG_SERIO_SERPORT=y
# CONFIG_SERIO_CT82C710 is not set
# CONFIG_SERIO_PARKBD is not set
# CONFIG_SERIO_PCIPS2 is not set
CONFIG_SERIO_LIBPS2=y
CONFIG_SERIO_RAW=m
CONFIG_SERIO_ALTERA_PS2=m
# CONFIG_SERIO_PS2MULT is not set
CONFIG_SERIO_ARC_PS2=m
CONFIG_HYPERV_KEYBOARD=m
# CONFIG_SERIO_GPIO_PS2 is not set
# CONFIG_USERIO is not set
# CONFIG_GAMEPORT is not set
# end of Hardware I/O ports
# end of Input device support

#
# Character devices
#
CONFIG_TTY=y
CONFIG_VT=y
CONFIG_CONSOLE_TRANSLATIONS=y
CONFIG_VT_CONSOLE=y
CONFIG_VT_CONSOLE_SLEEP=y
CONFIG_HW_CONSOLE=y
CONFIG_VT_HW_CONSOLE_BINDING=y
CONFIG_UNIX98_PTYS=y
# CONFIG_LEGACY_PTYS is not set
CONFIG_SERIAL_NONSTANDARD=y
# CONFIG_ROCKETPORT is not set
CONFIG_CYCLADES=m
# CONFIG_CYZ_INTR is not set
# CONFIG_MOXA_INTELLIO is not set
# CONFIG_MOXA_SMARTIO is not set
CONFIG_SYNCLINK=m
CONFIG_SYNCLINKMP=m
CONFIG_SYNCLINK_GT=m
CONFIG_NOZOMI=m
# CONFIG_ISI is not set
CONFIG_N_HDLC=m
CONFIG_N_GSM=m
# CONFIG_TRACE_SINK is not set
# CONFIG_NULL_TTY is not set
CONFIG_LDISC_AUTOLOAD=y
CONFIG_DEVMEM=y
# CONFIG_DEVKMEM is not set

#
# Serial drivers
#
CONFIG_SERIAL_EARLYCON=y
CONFIG_SERIAL_8250=y
# CONFIG_SERIAL_8250_DEPRECATED_OPTIONS is not set
CONFIG_SERIAL_8250_PNP=y
# CONFIG_SERIAL_8250_16550A_VARIANTS is not set
# CONFIG_SERIAL_8250_FINTEK is not set
CONFIG_SERIAL_8250_CONSOLE=y
CONFIG_SERIAL_8250_DMA=y
CONFIG_SERIAL_8250_PCI=y
CONFIG_SERIAL_8250_EXAR=y
CONFIG_SERIAL_8250_NR_UARTS=32
CONFIG_SERIAL_8250_RUNTIME_UARTS=4
CONFIG_SERIAL_8250_EXTENDED=y
CONFIG_SERIAL_8250_MANY_PORTS=y
CONFIG_SERIAL_8250_SHARE_IRQ=y
# CONFIG_SERIAL_8250_DETECT_IRQ is not set
CONFIG_SERIAL_8250_RSA=y
CONFIG_SERIAL_8250_DWLIB=y
CONFIG_SERIAL_8250_DW=y
# CONFIG_SERIAL_8250_RT288X is not set
CONFIG_SERIAL_8250_LPSS=y
CONFIG_SERIAL_8250_MID=y

#
# Non-8250 serial port support
#
# CONFIG_SERIAL_MAX3100 is not set
# CONFIG_SERIAL_MAX310X is not set
# CONFIG_SERIAL_UARTLITE is not set
CONFIG_SERIAL_CORE=y
CONFIG_SERIAL_CORE_CONSOLE=y
CONFIG_SERIAL_JSM=m
# CONFIG_SERIAL_SCCNXP is not set
# CONFIG_SERIAL_SC16IS7XX is not set
# CONFIG_SERIAL_ALTERA_JTAGUART is not set
# CONFIG_SERIAL_ALTERA_UART is not set
# CONFIG_SERIAL_IFX6X60 is not set
CONFIG_SERIAL_ARC=m
CONFIG_SERIAL_ARC_NR_PORTS=1
# CONFIG_SERIAL_RP2 is not set
# CONFIG_SERIAL_FSL_LPUART is not set
# CONFIG_SERIAL_FSL_LINFLEXUART is not set
# end of Serial drivers

CONFIG_SERIAL_MCTRL_GPIO=y
# CONFIG_SERIAL_DEV_BUS is not set
# CONFIG_TTY_PRINTK is not set
CONFIG_PRINTER=m
# CONFIG_LP_CONSOLE is not set
CONFIG_PPDEV=m
CONFIG_HVC_DRIVER=y
CONFIG_HVC_IRQ=y
CONFIG_HVC_XEN=y
CONFIG_HVC_XEN_FRONTEND=y
CONFIG_VIRTIO_CONSOLE=y
CONFIG_IPMI_HANDLER=m
CONFIG_IPMI_DMI_DECODE=y
CONFIG_IPMI_PLAT_DATA=y
# CONFIG_IPMI_PANIC_EVENT is not set
CONFIG_IPMI_DEVICE_INTERFACE=m
CONFIG_IPMI_SI=m
CONFIG_IPMI_SSIF=m
CONFIG_IPMI_WATCHDOG=m
CONFIG_IPMI_POWEROFF=m
CONFIG_HW_RANDOM=y
CONFIG_HW_RANDOM_TIMERIOMEM=m
CONFIG_HW_RANDOM_INTEL=m
CONFIG_HW_RANDOM_AMD=m
CONFIG_HW_RANDOM_VIA=m
CONFIG_HW_RANDOM_VIRTIO=y
CONFIG_NVRAM=y
# CONFIG_APPLICOM is not set
# CONFIG_MWAVE is not set
CONFIG_RAW_DRIVER=y
CONFIG_MAX_RAW_DEVS=8192
CONFIG_HPET=y
CONFIG_HPET_MMAP=y
# CONFIG_HPET_MMAP_DEFAULT is not set
CONFIG_HANGCHECK_TIMER=m
CONFIG_UV_MMTIMER=m
CONFIG_TCG_TPM=y
CONFIG_HW_RANDOM_TPM=y
CONFIG_TCG_TIS_CORE=y
CONFIG_TCG_TIS=y
# CONFIG_TCG_TIS_SPI is not set
CONFIG_TCG_TIS_I2C_ATMEL=m
CONFIG_TCG_TIS_I2C_INFINEON=m
CONFIG_TCG_TIS_I2C_NUVOTON=m
CONFIG_TCG_NSC=m
CONFIG_TCG_ATMEL=m
CONFIG_TCG_INFINEON=m
# CONFIG_TCG_XEN is not set
CONFIG_TCG_CRB=y
# CONFIG_TCG_VTPM_PROXY is not set
CONFIG_TCG_TIS_ST33ZP24=m
CONFIG_TCG_TIS_ST33ZP24_I2C=m
# CONFIG_TCG_TIS_ST33ZP24_SPI is not set
CONFIG_TELCLOCK=m
CONFIG_DEVPORT=y
# CONFIG_XILLYBUS is not set
# end of Character devices

# CONFIG_RANDOM_TRUST_CPU is not set
# CONFIG_RANDOM_TRUST_BOOTLOADER is not set

#
# I2C support
#
CONFIG_I2C=y
CONFIG_ACPI_I2C_OPREGION=y
CONFIG_I2C_BOARDINFO=y
CONFIG_I2C_COMPAT=y
CONFIG_I2C_CHARDEV=m
CONFIG_I2C_MUX=m

#
# Multiplexer I2C Chip support
#
# CONFIG_I2C_MUX_GPIO is not set
# CONFIG_I2C_MUX_LTC4306 is not set
# CONFIG_I2C_MUX_PCA9541 is not set
# CONFIG_I2C_MUX_PCA954x is not set
# CONFIG_I2C_MUX_REG is not set
# CONFIG_I2C_MUX_MLXCPLD is not set
# end of Multiplexer I2C Chip support

CONFIG_I2C_HELPER_AUTO=y
CONFIG_I2C_SMBUS=m
CONFIG_I2C_ALGOBIT=y
CONFIG_I2C_ALGOPCA=m

#
# I2C Hardware Bus support
#

#
# PC SMBus host controller drivers
#
# CONFIG_I2C_ALI1535 is not set
# CONFIG_I2C_ALI1563 is not set
# CONFIG_I2C_ALI15X3 is not set
CONFIG_I2C_AMD756=m
CONFIG_I2C_AMD756_S4882=m
CONFIG_I2C_AMD8111=m
# CONFIG_I2C_AMD_MP2 is not set
CONFIG_I2C_I801=m
CONFIG_I2C_ISCH=m
CONFIG_I2C_ISMT=m
CONFIG_I2C_PIIX4=m
CONFIG_I2C_NFORCE2=m
CONFIG_I2C_NFORCE2_S4985=m
# CONFIG_I2C_NVIDIA_GPU is not set
# CONFIG_I2C_SIS5595 is not set
# CONFIG_I2C_SIS630 is not set
CONFIG_I2C_SIS96X=m
CONFIG_I2C_VIA=m
CONFIG_I2C_VIAPRO=m

#
# ACPI drivers
#
CONFIG_I2C_SCMI=m

#
# I2C system bus drivers (mostly embedded / system-on-chip)
#
# CONFIG_I2C_CBUS_GPIO is not set
CONFIG_I2C_DESIGNWARE_CORE=m
CONFIG_I2C_DESIGNWARE_PLATFORM=m
# CONFIG_I2C_DESIGNWARE_SLAVE is not set
# CONFIG_I2C_DESIGNWARE_PCI is not set
# CONFIG_I2C_DESIGNWARE_BAYTRAIL is not set
# CONFIG_I2C_EMEV2 is not set
# CONFIG_I2C_GPIO is not set
# CONFIG_I2C_OCORES is not set
CONFIG_I2C_PCA_PLATFORM=m
CONFIG_I2C_SIMTEC=m
# CONFIG_I2C_XILINX is not set

#
# External I2C/SMBus adapter drivers
#
CONFIG_I2C_DIOLAN_U2C=m
CONFIG_I2C_PARPORT=m
# CONFIG_I2C_ROBOTFUZZ_OSIF is not set
# CONFIG_I2C_TAOS_EVM is not set
CONFIG_I2C_TINY_USB=m
CONFIG_I2C_VIPERBOARD=m

#
# Other I2C/SMBus bus drivers
#
# CONFIG_I2C_MLXCPLD is not set
# end of I2C Hardware Bus support

CONFIG_I2C_STUB=m
# CONFIG_I2C_SLAVE is not set
# CONFIG_I2C_DEBUG_CORE is not set
# CONFIG_I2C_DEBUG_ALGO is not set
# CONFIG_I2C_DEBUG_BUS is not set
# end of I2C support

# CONFIG_I3C is not set
CONFIG_SPI=y
# CONFIG_SPI_DEBUG is not set
CONFIG_SPI_MASTER=y
# CONFIG_SPI_MEM is not set

#
# SPI Master Controller Drivers
#
# CONFIG_SPI_ALTERA is not set
# CONFIG_SPI_AXI_SPI_ENGINE is not set
# CONFIG_SPI_BITBANG is not set
# CONFIG_SPI_BUTTERFLY is not set
# CONFIG_SPI_CADENCE is not set
# CONFIG_SPI_DESIGNWARE is not set
# CONFIG_SPI_NXP_FLEXSPI is not set
# CONFIG_SPI_GPIO is not set
# CONFIG_SPI_LM70_LLP is not set
# CONFIG_SPI_OC_TINY is not set
CONFIG_SPI_PXA2XX=m
CONFIG_SPI_PXA2XX_PCI=m
# CONFIG_SPI_ROCKCHIP is not set
# CONFIG_SPI_SC18IS602 is not set
# CONFIG_SPI_SIFIVE is not set
# CONFIG_SPI_MXIC is not set
# CONFIG_SPI_XCOMM is not set
# CONFIG_SPI_XILINX is not set
# CONFIG_SPI_ZYNQMP_GQSPI is not set

#
# SPI Protocol Masters
#
# CONFIG_SPI_SPIDEV is not set
# CONFIG_SPI_LOOPBACK_TEST is not set
# CONFIG_SPI_TLE62X0 is not set
# CONFIG_SPI_SLAVE is not set
# CONFIG_SPMI is not set
# CONFIG_HSI is not set
CONFIG_PPS=y
# CONFIG_PPS_DEBUG is not set

#
# PPS clients support
#
# CONFIG_PPS_CLIENT_KTIMER is not set
CONFIG_PPS_CLIENT_LDISC=m
CONFIG_PPS_CLIENT_PARPORT=m
CONFIG_PPS_CLIENT_GPIO=m

#
# PPS generators support
#

#
# PTP clock support
#
CONFIG_PTP_1588_CLOCK=y
CONFIG_DP83640_PHY=m
# CONFIG_PTP_1588_CLOCK_INES is not set
CONFIG_PTP_1588_CLOCK_KVM=m
# CONFIG_PTP_1588_CLOCK_IDTCM is not set
# end of PTP clock support

CONFIG_PINCTRL=y
CONFIG_PINMUX=y
CONFIG_PINCONF=y
CONFIG_GENERIC_PINCONF=y
# CONFIG_DEBUG_PINCTRL is not set
CONFIG_PINCTRL_AMD=m
# CONFIG_PINCTRL_MCP23S08 is not set
# CONFIG_PINCTRL_SX150X is not set
CONFIG_PINCTRL_BAYTRAIL=y
# CONFIG_PINCTRL_CHERRYVIEW is not set
# CONFIG_PINCTRL_LYNXPOINT is not set
CONFIG_PINCTRL_INTEL=m
# CONFIG_PINCTRL_BROXTON is not set
CONFIG_PINCTRL_CANNONLAKE=m
# CONFIG_PINCTRL_CEDARFORK is not set
CONFIG_PINCTRL_DENVERTON=m
CONFIG_PINCTRL_GEMINILAKE=m
# CONFIG_PINCTRL_ICELAKE is not set
CONFIG_PINCTRL_LEWISBURG=m
CONFIG_PINCTRL_SUNRISEPOINT=m
# CONFIG_PINCTRL_TIGERLAKE is not set
CONFIG_GPIOLIB=y
CONFIG_GPIOLIB_FASTPATH_LIMIT=512
CONFIG_GPIO_ACPI=y
CONFIG_GPIOLIB_IRQCHIP=y
# CONFIG_DEBUG_GPIO is not set
CONFIG_GPIO_SYSFS=y
CONFIG_GPIO_GENERIC=m

#
# Memory mapped GPIO drivers
#
CONFIG_GPIO_AMDPT=m
# CONFIG_GPIO_DWAPB is not set
# CONFIG_GPIO_EXAR is not set
# CONFIG_GPIO_GENERIC_PLATFORM is not set
CONFIG_GPIO_ICH=m
# CONFIG_GPIO_MB86S7X is not set
# CONFIG_GPIO_VX855 is not set
# CONFIG_GPIO_XILINX is not set
# CONFIG_GPIO_AMD_FCH is not set
# end of Memory mapped GPIO drivers

#
# Port-mapped I/O GPIO drivers
#
# CONFIG_GPIO_F7188X is not set
# CONFIG_GPIO_IT87 is not set
# CONFIG_GPIO_SCH is not set
# CONFIG_GPIO_SCH311X is not set
# CONFIG_GPIO_WINBOND is not set
# CONFIG_GPIO_WS16C48 is not set
# end of Port-mapped I/O GPIO drivers

#
# I2C GPIO expanders
#
# CONFIG_GPIO_ADP5588 is not set
# CONFIG_GPIO_MAX7300 is not set
# CONFIG_GPIO_MAX732X is not set
# CONFIG_GPIO_PCA953X is not set
# CONFIG_GPIO_PCF857X is not set
# CONFIG_GPIO_TPIC2810 is not set
# end of I2C GPIO expanders

#
# MFD GPIO expanders
#
# end of MFD GPIO expanders

#
# PCI GPIO expanders
#
# CONFIG_GPIO_AMD8111 is not set
# CONFIG_GPIO_ML_IOH is not set
# CONFIG_GPIO_PCI_IDIO_16 is not set
# CONFIG_GPIO_PCIE_IDIO_24 is not set
# CONFIG_GPIO_RDC321X is not set
# end of PCI GPIO expanders

#
# SPI GPIO expanders
#
# CONFIG_GPIO_MAX3191X is not set
# CONFIG_GPIO_MAX7301 is not set
# CONFIG_GPIO_MC33880 is not set
# CONFIG_GPIO_PISOSR is not set
# CONFIG_GPIO_XRA1403 is not set
# end of SPI GPIO expanders

#
# USB GPIO expanders
#
CONFIG_GPIO_VIPERBOARD=m
# end of USB GPIO expanders

CONFIG_GPIO_MOCKUP=m
# CONFIG_W1 is not set
# CONFIG_POWER_AVS is not set
CONFIG_POWER_RESET=y
# CONFIG_POWER_RESET_RESTART is not set
CONFIG_POWER_SUPPLY=y
# CONFIG_POWER_SUPPLY_DEBUG is not set
CONFIG_POWER_SUPPLY_HWMON=y
# CONFIG_PDA_POWER is not set
# CONFIG_GENERIC_ADC_BATTERY is not set
# CONFIG_TEST_POWER is not set
# CONFIG_CHARGER_ADP5061 is not set
# CONFIG_BATTERY_DS2780 is not set
# CONFIG_BATTERY_DS2781 is not set
# CONFIG_BATTERY_DS2782 is not set
# CONFIG_BATTERY_SBS is not set
# CONFIG_CHARGER_SBS is not set
# CONFIG_MANAGER_SBS is not set
# CONFIG_BATTERY_BQ27XXX is not set
# CONFIG_BATTERY_MAX17040 is not set
# CONFIG_BATTERY_MAX17042 is not set
# CONFIG_CHARGER_MAX8903 is not set
# CONFIG_CHARGER_LP8727 is not set
# CONFIG_CHARGER_GPIO is not set
# CONFIG_CHARGER_LT3651 is not set
# CONFIG_CHARGER_BQ2415X is not set
# CONFIG_CHARGER_BQ24257 is not set
# CONFIG_CHARGER_BQ24735 is not set
# CONFIG_CHARGER_BQ25890 is not set
CONFIG_CHARGER_SMB347=m
# CONFIG_BATTERY_GAUGE_LTC2941 is not set
# CONFIG_CHARGER_RT9455 is not set
CONFIG_HWMON=y
CONFIG_HWMON_VID=m
# CONFIG_HWMON_DEBUG_CHIP is not set

#
# Native drivers
#
CONFIG_SENSORS_ABITUGURU=m
CONFIG_SENSORS_ABITUGURU3=m
# CONFIG_SENSORS_AD7314 is not set
CONFIG_SENSORS_AD7414=m
CONFIG_SENSORS_AD7418=m
CONFIG_SENSORS_ADM1021=m
CONFIG_SENSORS_ADM1025=m
CONFIG_SENSORS_ADM1026=m
CONFIG_SENSORS_ADM1029=m
CONFIG_SENSORS_ADM1031=m
# CONFIG_SENSORS_ADM1177 is not set
CONFIG_SENSORS_ADM9240=m
CONFIG_SENSORS_ADT7X10=m
# CONFIG_SENSORS_ADT7310 is not set
CONFIG_SENSORS_ADT7410=m
CONFIG_SENSORS_ADT7411=m
CONFIG_SENSORS_ADT7462=m
CONFIG_SENSORS_ADT7470=m
CONFIG_SENSORS_ADT7475=m
# CONFIG_SENSORS_AS370 is not set
CONFIG_SENSORS_ASC7621=m
CONFIG_SENSORS_K8TEMP=m
CONFIG_SENSORS_K10TEMP=m
CONFIG_SENSORS_FAM15H_POWER=m
CONFIG_SENSORS_APPLESMC=m
CONFIG_SENSORS_ASB100=m
# CONFIG_SENSORS_ASPEED is not set
CONFIG_SENSORS_ATXP1=m
# CONFIG_SENSORS_DRIVETEMP is not set
CONFIG_SENSORS_DS620=m
CONFIG_SENSORS_DS1621=m
CONFIG_SENSORS_DELL_SMM=m
CONFIG_SENSORS_I5K_AMB=m
CONFIG_SENSORS_F71805F=m
CONFIG_SENSORS_F71882FG=m
CONFIG_SENSORS_F75375S=m
CONFIG_SENSORS_FSCHMD=m
# CONFIG_SENSORS_FTSTEUTATES is not set
CONFIG_SENSORS_GL518SM=m
CONFIG_SENSORS_GL520SM=m
CONFIG_SENSORS_G760A=m
# CONFIG_SENSORS_G762 is not set
# CONFIG_SENSORS_HIH6130 is not set
CONFIG_SENSORS_IBMAEM=m
CONFIG_SENSORS_IBMPEX=m
# CONFIG_SENSORS_IIO_HWMON is not set
# CONFIG_SENSORS_I5500 is not set
CONFIG_SENSORS_CORETEMP=m
CONFIG_SENSORS_IT87=m
CONFIG_SENSORS_JC42=m
# CONFIG_SENSORS_POWR1220 is not set
CONFIG_SENSORS_LINEAGE=m
# CONFIG_SENSORS_LTC2945 is not set
# CONFIG_SENSORS_LTC2947_I2C is not set
# CONFIG_SENSORS_LTC2947_SPI is not set
# CONFIG_SENSORS_LTC2990 is not set
CONFIG_SENSORS_LTC4151=m
CONFIG_SENSORS_LTC4215=m
# CONFIG_SENSORS_LTC4222 is not set
CONFIG_SENSORS_LTC4245=m
# CONFIG_SENSORS_LTC4260 is not set
CONFIG_SENSORS_LTC4261=m
# CONFIG_SENSORS_MAX1111 is not set
CONFIG_SENSORS_MAX16065=m
CONFIG_SENSORS_MAX1619=m
CONFIG_SENSORS_MAX1668=m
CONFIG_SENSORS_MAX197=m
# CONFIG_SENSORS_MAX31722 is not set
# CONFIG_SENSORS_MAX31730 is not set
# CONFIG_SENSORS_MAX6621 is not set
CONFIG_SENSORS_MAX6639=m
CONFIG_SENSORS_MAX6642=m
CONFIG_SENSORS_MAX6650=m
CONFIG_SENSORS_MAX6697=m
# CONFIG_SENSORS_MAX31790 is not set
CONFIG_SENSORS_MCP3021=m
# CONFIG_SENSORS_TC654 is not set
# CONFIG_SENSORS_ADCXX is not set
CONFIG_SENSORS_LM63=m
# CONFIG_SENSORS_LM70 is not set
CONFIG_SENSORS_LM73=m
CONFIG_SENSORS_LM75=m
CONFIG_SENSORS_LM77=m
CONFIG_SENSORS_LM78=m
CONFIG_SENSORS_LM80=m
CONFIG_SENSORS_LM83=m
CONFIG_SENSORS_LM85=m
CONFIG_SENSORS_LM87=m
CONFIG_SENSORS_LM90=m
CONFIG_SENSORS_LM92=m
CONFIG_SENSORS_LM93=m
CONFIG_SENSORS_LM95234=m
CONFIG_SENSORS_LM95241=m
CONFIG_SENSORS_LM95245=m
CONFIG_SENSORS_PC87360=m
CONFIG_SENSORS_PC87427=m
CONFIG_SENSORS_NTC_THERMISTOR=m
# CONFIG_SENSORS_NCT6683 is not set
CONFIG_SENSORS_NCT6775=m
# CONFIG_SENSORS_NCT7802 is not set
# CONFIG_SENSORS_NCT7904 is not set
# CONFIG_SENSORS_NPCM7XX is not set
CONFIG_SENSORS_PCF8591=m
CONFIG_PMBUS=m
CONFIG_SENSORS_PMBUS=m
CONFIG_SENSORS_ADM1275=m
# CONFIG_SENSORS_BEL_PFE is not set
# CONFIG_SENSORS_IBM_CFFPS is not set
# CONFIG_SENSORS_INSPUR_IPSPS is not set
# CONFIG_SENSORS_IR35221 is not set
# CONFIG_SENSORS_IR38064 is not set
# CONFIG_SENSORS_IRPS5401 is not set
# CONFIG_SENSORS_ISL68137 is not set
CONFIG_SENSORS_LM25066=m
CONFIG_SENSORS_LTC2978=m
# CONFIG_SENSORS_LTC3815 is not set
CONFIG_SENSORS_MAX16064=m
# CONFIG_SENSORS_MAX20730 is not set
# CONFIG_SENSORS_MAX20751 is not set
# CONFIG_SENSORS_MAX31785 is not set
CONFIG_SENSORS_MAX34440=m
CONFIG_SENSORS_MAX8688=m
# CONFIG_SENSORS_PXE1610 is not set
# CONFIG_SENSORS_TPS40422 is not set
# CONFIG_SENSORS_TPS53679 is not set
CONFIG_SENSORS_UCD9000=m
CONFIG_SENSORS_UCD9200=m
# CONFIG_SENSORS_XDPE122 is not set
CONFIG_SENSORS_ZL6100=m
CONFIG_SENSORS_SHT15=m
CONFIG_SENSORS_SHT21=m
# CONFIG_SENSORS_SHT3x is not set
# CONFIG_SENSORS_SHTC1 is not set
CONFIG_SENSORS_SIS5595=m
CONFIG_SENSORS_DME1737=m
CONFIG_SENSORS_EMC1403=m
# CONFIG_SENSORS_EMC2103 is not set
CONFIG_SENSORS_EMC6W201=m
CONFIG_SENSORS_SMSC47M1=m
CONFIG_SENSORS_SMSC47M192=m
CONFIG_SENSORS_SMSC47B397=m
CONFIG_SENSORS_SCH56XX_COMMON=m
CONFIG_SENSORS_SCH5627=m
CONFIG_SENSORS_SCH5636=m
# CONFIG_SENSORS_STTS751 is not set
# CONFIG_SENSORS_SMM665 is not set
# CONFIG_SENSORS_ADC128D818 is not set
CONFIG_SENSORS_ADS7828=m
# CONFIG_SENSORS_ADS7871 is not set
CONFIG_SENSORS_AMC6821=m
CONFIG_SENSORS_INA209=m
CONFIG_SENSORS_INA2XX=m
# CONFIG_SENSORS_INA3221 is not set
# CONFIG_SENSORS_TC74 is not set
CONFIG_SENSORS_THMC50=m
CONFIG_SENSORS_TMP102=m
# CONFIG_SENSORS_TMP103 is not set
# CONFIG_SENSORS_TMP108 is not set
CONFIG_SENSORS_TMP401=m
CONFIG_SENSORS_TMP421=m
# CONFIG_SENSORS_TMP513 is not set
CONFIG_SENSORS_VIA_CPUTEMP=m
CONFIG_SENSORS_VIA686A=m
CONFIG_SENSORS_VT1211=m
CONFIG_SENSORS_VT8231=m
# CONFIG_SENSORS_W83773G is not set
CONFIG_SENSORS_W83781D=m
CONFIG_SENSORS_W83791D=m
CONFIG_SENSORS_W83792D=m
CONFIG_SENSORS_W83793=m
CONFIG_SENSORS_W83795=m
# CONFIG_SENSORS_W83795_FANCTRL is not set
CONFIG_SENSORS_W83L785TS=m
CONFIG_SENSORS_W83L786NG=m
CONFIG_SENSORS_W83627HF=m
CONFIG_SENSORS_W83627EHF=m
# CONFIG_SENSORS_XGENE is not set

#
# ACPI drivers
#
CONFIG_SENSORS_ACPI_POWER=m
CONFIG_SENSORS_ATK0110=m
CONFIG_THERMAL=y
# CONFIG_THERMAL_STATISTICS is not set
CONFIG_THERMAL_EMERGENCY_POWEROFF_DELAY_MS=0
CONFIG_THERMAL_HWMON=y
CONFIG_THERMAL_WRITABLE_TRIPS=y
CONFIG_THERMAL_DEFAULT_GOV_STEP_WISE=y
# CONFIG_THERMAL_DEFAULT_GOV_FAIR_SHARE is not set
# CONFIG_THERMAL_DEFAULT_GOV_USER_SPACE is not set
CONFIG_THERMAL_GOV_FAIR_SHARE=y
CONFIG_THERMAL_GOV_STEP_WISE=y
CONFIG_THERMAL_GOV_BANG_BANG=y
CONFIG_THERMAL_GOV_USER_SPACE=y
# CONFIG_CLOCK_THERMAL is not set
# CONFIG_DEVFREQ_THERMAL is not set
# CONFIG_THERMAL_EMULATION is not set

#
# Intel thermal drivers
#
CONFIG_INTEL_POWERCLAMP=m
CONFIG_X86_PKG_TEMP_THERMAL=m
CONFIG_INTEL_SOC_DTS_IOSF_CORE=m
# CONFIG_INTEL_SOC_DTS_THERMAL is not set

#
# ACPI INT340X thermal drivers
#
CONFIG_INT340X_THERMAL=m
CONFIG_ACPI_THERMAL_REL=m
# CONFIG_INT3406_THERMAL is not set
CONFIG_PROC_THERMAL_MMIO_RAPL=y
# end of ACPI INT340X thermal drivers

# CONFIG_INTEL_PCH_THERMAL is not set
# end of Intel thermal drivers

# CONFIG_GENERIC_ADC_THERMAL is not set
CONFIG_WATCHDOG=y
CONFIG_WATCHDOG_CORE=y
# CONFIG_WATCHDOG_NOWAYOUT is not set
CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED=y
CONFIG_WATCHDOG_OPEN_TIMEOUT=0
CONFIG_WATCHDOG_SYSFS=y

#
# Watchdog Pretimeout Governors
#
# CONFIG_WATCHDOG_PRETIMEOUT_GOV is not set

#
# Watchdog Device Drivers
#
CONFIG_SOFT_WATCHDOG=m
CONFIG_WDAT_WDT=m
# CONFIG_XILINX_WATCHDOG is not set
# CONFIG_ZIIRAVE_WATCHDOG is not set
# CONFIG_CADENCE_WATCHDOG is not set
# CONFIG_DW_WATCHDOG is not set
# CONFIG_MAX63XX_WATCHDOG is not set
# CONFIG_ACQUIRE_WDT is not set
# CONFIG_ADVANTECH_WDT is not set
CONFIG_ALIM1535_WDT=m
CONFIG_ALIM7101_WDT=m
# CONFIG_EBC_C384_WDT is not set
CONFIG_F71808E_WDT=m
CONFIG_SP5100_TCO=m
CONFIG_SBC_FITPC2_WATCHDOG=m
# CONFIG_EUROTECH_WDT is not set
CONFIG_IB700_WDT=m
CONFIG_IBMASR=m
# CONFIG_WAFER_WDT is not set
CONFIG_I6300ESB_WDT=y
CONFIG_IE6XX_WDT=m
CONFIG_ITCO_WDT=y
CONFIG_ITCO_VENDOR_SUPPORT=y
CONFIG_IT8712F_WDT=m
CONFIG_IT87_WDT=m
CONFIG_HP_WATCHDOG=m
CONFIG_HPWDT_NMI_DECODING=y
# CONFIG_SC1200_WDT is not set
# CONFIG_PC87413_WDT is not set
CONFIG_NV_TCO=m
# CONFIG_60XX_WDT is not set
# CONFIG_CPU5_WDT is not set
CONFIG_SMSC_SCH311X_WDT=m
# CONFIG_SMSC37B787_WDT is not set
# CONFIG_TQMX86_WDT is not set
CONFIG_VIA_WDT=m
CONFIG_W83627HF_WDT=m
CONFIG_W83877F_WDT=m
CONFIG_W83977F_WDT=m
CONFIG_MACHZ_WDT=m
# CONFIG_SBC_EPX_C3_WATCHDOG is not set
CONFIG_INTEL_MEI_WDT=m
# CONFIG_NI903X_WDT is not set
# CONFIG_NIC7018_WDT is not set
# CONFIG_MEN_A21_WDT is not set
CONFIG_XEN_WDT=m

#
# PCI-based Watchdog Cards
#
CONFIG_PCIPCWATCHDOG=m
CONFIG_WDTPCI=m

#
# USB-based Watchdog Cards
#
CONFIG_USBPCWATCHDOG=m
CONFIG_SSB_POSSIBLE=y
CONFIG_SSB=m
CONFIG_SSB_SPROM=y
CONFIG_SSB_PCIHOST_POSSIBLE=y
CONFIG_SSB_PCIHOST=y
CONFIG_SSB_SDIOHOST_POSSIBLE=y
CONFIG_SSB_SDIOHOST=y
CONFIG_SSB_DRIVER_PCICORE_POSSIBLE=y
CONFIG_SSB_DRIVER_PCICORE=y
CONFIG_SSB_DRIVER_GPIO=y
CONFIG_BCMA_POSSIBLE=y
CONFIG_BCMA=m
CONFIG_BCMA_HOST_PCI_POSSIBLE=y
CONFIG_BCMA_HOST_PCI=y
# CONFIG_BCMA_HOST_SOC is not set
CONFIG_BCMA_DRIVER_PCI=y
CONFIG_BCMA_DRIVER_GMAC_CMN=y
CONFIG_BCMA_DRIVER_GPIO=y
# CONFIG_BCMA_DEBUG is not set

#
# Multifunction device drivers
#
CONFIG_MFD_CORE=y
# CONFIG_MFD_AS3711 is not set
# CONFIG_PMIC_ADP5520 is not set
# CONFIG_MFD_AAT2870_CORE is not set
# CONFIG_MFD_BCM590XX is not set
# CONFIG_MFD_BD9571MWV is not set
# CONFIG_MFD_AXP20X_I2C is not set
# CONFIG_MFD_MADERA is not set
# CONFIG_PMIC_DA903X is not set
# CONFIG_MFD_DA9052_SPI is not set
# CONFIG_MFD_DA9052_I2C is not set
# CONFIG_MFD_DA9055 is not set
# CONFIG_MFD_DA9062 is not set
# CONFIG_MFD_DA9063 is not set
# CONFIG_MFD_DA9150 is not set
# CONFIG_MFD_DLN2 is not set
# CONFIG_MFD_MC13XXX_SPI is not set
# CONFIG_MFD_MC13XXX_I2C is not set
# CONFIG_HTC_PASIC3 is not set
# CONFIG_HTC_I2CPLD is not set
# CONFIG_MFD_INTEL_QUARK_I2C_GPIO is not set
CONFIG_LPC_ICH=m
CONFIG_LPC_SCH=m
# CONFIG_INTEL_SOC_PMIC_CHTDC_TI is not set
CONFIG_MFD_INTEL_LPSS=y
CONFIG_MFD_INTEL_LPSS_ACPI=y
CONFIG_MFD_INTEL_LPSS_PCI=y
# CONFIG_MFD_JANZ_CMODIO is not set
# CONFIG_MFD_KEMPLD is not set
# CONFIG_MFD_88PM800 is not set
# CONFIG_MFD_88PM805 is not set
# CONFIG_MFD_88PM860X is not set
# CONFIG_MFD_MAX14577 is not set
# CONFIG_MFD_MAX77693 is not set
# CONFIG_MFD_MAX77843 is not set
# CONFIG_MFD_MAX8907 is not set
# CONFIG_MFD_MAX8925 is not set
# CONFIG_MFD_MAX8997 is not set
# CONFIG_MFD_MAX8998 is not set
# CONFIG_MFD_MT6397 is not set
# CONFIG_MFD_MENF21BMC is not set
# CONFIG_EZX_PCAP is not set
CONFIG_MFD_VIPERBOARD=m
# CONFIG_MFD_RETU is not set
# CONFIG_MFD_PCF50633 is not set
# CONFIG_UCB1400_CORE is not set
# CONFIG_MFD_RDC321X is not set
# CONFIG_MFD_RT5033 is not set
# CONFIG_MFD_RC5T583 is not set
# CONFIG_MFD_SEC_CORE is not set
# CONFIG_MFD_SI476X_CORE is not set
CONFIG_MFD_SM501=m
CONFIG_MFD_SM501_GPIO=y
# CONFIG_MFD_SKY81452 is not set
# CONFIG_MFD_SMSC is not set
# CONFIG_ABX500_CORE is not set
# CONFIG_MFD_SYSCON is not set
# CONFIG_MFD_TI_AM335X_TSCADC is not set
# CONFIG_MFD_LP3943 is not set
# CONFIG_MFD_LP8788 is not set
# CONFIG_MFD_TI_LMU is not set
# CONFIG_MFD_PALMAS is not set
# CONFIG_TPS6105X is not set
# CONFIG_TPS65010 is not set
# CONFIG_TPS6507X is not set
# CONFIG_MFD_TPS65086 is not set
# CONFIG_MFD_TPS65090 is not set
# CONFIG_MFD_TI_LP873X is not set
# CONFIG_MFD_TPS6586X is not set
# CONFIG_MFD_TPS65910 is not set
# CONFIG_MFD_TPS65912_I2C is not set
# CONFIG_MFD_TPS65912_SPI is not set
# CONFIG_MFD_TPS80031 is not set
# CONFIG_TWL4030_CORE is not set
# CONFIG_TWL6040_CORE is not set
# CONFIG_MFD_WL1273_CORE is not set
# CONFIG_MFD_LM3533 is not set
# CONFIG_MFD_TQMX86 is not set
CONFIG_MFD_VX855=m
# CONFIG_MFD_ARIZONA_I2C is not set
# CONFIG_MFD_ARIZONA_SPI is not set
# CONFIG_MFD_WM8400 is not set
# CONFIG_MFD_WM831X_I2C is not set
# CONFIG_MFD_WM831X_SPI is not set
# CONFIG_MFD_WM8350_I2C is not set
# CONFIG_MFD_WM8994 is not set
# end of Multifunction device drivers

# CONFIG_REGULATOR is not set
CONFIG_RC_CORE=m
CONFIG_RC_MAP=m
CONFIG_LIRC=y
CONFIG_RC_DECODERS=y
CONFIG_IR_NEC_DECODER=m
CONFIG_IR_RC5_DECODER=m
CONFIG_IR_RC6_DECODER=m
CONFIG_IR_JVC_DECODER=m
CONFIG_IR_SONY_DECODER=m
CONFIG_IR_SANYO_DECODER=m
CONFIG_IR_SHARP_DECODER=m
CONFIG_IR_MCE_KBD_DECODER=m
# CONFIG_IR_XMP_DECODER is not set
CONFIG_IR_IMON_DECODER=m
# CONFIG_IR_RCMM_DECODER is not set
CONFIG_RC_DEVICES=y
CONFIG_RC_ATI_REMOTE=m
CONFIG_IR_ENE=m
CONFIG_IR_IMON=m
# CONFIG_IR_IMON_RAW is not set
CONFIG_IR_MCEUSB=m
CONFIG_IR_ITE_CIR=m
CONFIG_IR_FINTEK=m
CONFIG_IR_NUVOTON=m
CONFIG_IR_REDRAT3=m
CONFIG_IR_STREAMZAP=m
CONFIG_IR_WINBOND_CIR=m
# CONFIG_IR_IGORPLUGUSB is not set
CONFIG_IR_IGUANA=m
CONFIG_IR_TTUSBIR=m
CONFIG_RC_LOOPBACK=m
# CONFIG_IR_SERIAL is not set
# CONFIG_IR_SIR is not set
# CONFIG_RC_XBOX_DVD is not set
CONFIG_MEDIA_SUPPORT=m

#
# Multimedia core support
#
CONFIG_MEDIA_CAMERA_SUPPORT=y
CONFIG_MEDIA_ANALOG_TV_SUPPORT=y
CONFIG_MEDIA_DIGITAL_TV_SUPPORT=y
CONFIG_MEDIA_RADIO_SUPPORT=y
# CONFIG_MEDIA_SDR_SUPPORT is not set
# CONFIG_MEDIA_CEC_SUPPORT is not set
CONFIG_MEDIA_CONTROLLER=y
CONFIG_MEDIA_CONTROLLER_DVB=y
CONFIG_VIDEO_DEV=m
# CONFIG_VIDEO_V4L2_SUBDEV_API is not set
CONFIG_VIDEO_V4L2=m
CONFIG_VIDEO_V4L2_I2C=y
# CONFIG_VIDEO_ADV_DEBUG is not set
# CONFIG_VIDEO_FIXED_MINOR_RANGES is not set
CONFIG_VIDEO_TUNER=m
CONFIG_VIDEOBUF_GEN=m
CONFIG_VIDEOBUF_DMA_SG=m
CONFIG_VIDEOBUF_VMALLOC=m
CONFIG_DVB_CORE=m
# CONFIG_DVB_MMAP is not set
CONFIG_DVB_NET=y
CONFIG_TTPCI_EEPROM=m
CONFIG_DVB_MAX_ADAPTERS=8
CONFIG_DVB_DYNAMIC_MINORS=y
# CONFIG_DVB_DEMUX_SECTION_LOSS_LOG is not set
# CONFIG_DVB_ULE_DEBUG is not set

#
# Media drivers
#
CONFIG_MEDIA_USB_SUPPORT=y

#
# Webcam devices
#
CONFIG_USB_VIDEO_CLASS=m
CONFIG_USB_VIDEO_CLASS_INPUT_EVDEV=y
CONFIG_USB_GSPCA=m
CONFIG_USB_M5602=m
CONFIG_USB_STV06XX=m
CONFIG_USB_GL860=m
CONFIG_USB_GSPCA_BENQ=m
CONFIG_USB_GSPCA_CONEX=m
CONFIG_USB_GSPCA_CPIA1=m
# CONFIG_USB_GSPCA_DTCS033 is not set
CONFIG_USB_GSPCA_ETOMS=m
CONFIG_USB_GSPCA_FINEPIX=m
CONFIG_USB_GSPCA_JEILINJ=m
CONFIG_USB_GSPCA_JL2005BCD=m
# CONFIG_USB_GSPCA_KINECT is not set
CONFIG_USB_GSPCA_KONICA=m
CONFIG_USB_GSPCA_MARS=m
CONFIG_USB_GSPCA_MR97310A=m
CONFIG_USB_GSPCA_NW80X=m
CONFIG_USB_GSPCA_OV519=m
CONFIG_USB_GSPCA_OV534=m
CONFIG_USB_GSPCA_OV534_9=m
CONFIG_USB_GSPCA_PAC207=m
CONFIG_USB_GSPCA_PAC7302=m
CONFIG_USB_GSPCA_PAC7311=m
CONFIG_USB_GSPCA_SE401=m
CONFIG_USB_GSPCA_SN9C2028=m
CONFIG_USB_GSPCA_SN9C20X=m
CONFIG_USB_GSPCA_SONIXB=m
CONFIG_USB_GSPCA_SONIXJ=m
CONFIG_USB_GSPCA_SPCA500=m
CONFIG_USB_GSPCA_SPCA501=m
CONFIG_USB_GSPCA_SPCA505=m
CONFIG_USB_GSPCA_SPCA506=m
CONFIG_USB_GSPCA_SPCA508=m
CONFIG_USB_GSPCA_SPCA561=m
CONFIG_USB_GSPCA_SPCA1528=m
CONFIG_USB_GSPCA_SQ905=m
CONFIG_USB_GSPCA_SQ905C=m
CONFIG_USB_GSPCA_SQ930X=m
CONFIG_USB_GSPCA_STK014=m
# CONFIG_USB_GSPCA_STK1135 is not set
CONFIG_USB_GSPCA_STV0680=m
CONFIG_USB_GSPCA_SUNPLUS=m
CONFIG_USB_GSPCA_T613=m
CONFIG_USB_GSPCA_TOPRO=m
# CONFIG_USB_GSPCA_TOUPTEK is not set
CONFIG_USB_GSPCA_TV8532=m
CONFIG_USB_GSPCA_VC032X=m
CONFIG_USB_GSPCA_VICAM=m
CONFIG_USB_GSPCA_XIRLINK_CIT=m
CONFIG_USB_GSPCA_ZC3XX=m
CONFIG_USB_PWC=m
# CONFIG_USB_PWC_DEBUG is not set
CONFIG_USB_PWC_INPUT_EVDEV=y
# CONFIG_VIDEO_CPIA2 is not set
CONFIG_USB_ZR364XX=m
CONFIG_USB_STKWEBCAM=m
CONFIG_USB_S2255=m
# CONFIG_VIDEO_USBTV is not set

#
# Analog TV USB devices
#
CONFIG_VIDEO_PVRUSB2=m
CONFIG_VIDEO_PVRUSB2_SYSFS=y
CONFIG_VIDEO_PVRUSB2_DVB=y
# CONFIG_VIDEO_PVRUSB2_DEBUGIFC is not set
CONFIG_VIDEO_HDPVR=m
CONFIG_VIDEO_USBVISION=m
# CONFIG_VIDEO_STK1160_COMMON is not set
# CONFIG_VIDEO_GO7007 is not set

#
# Analog/digital TV USB devices
#
CONFIG_VIDEO_AU0828=m
CONFIG_VIDEO_AU0828_V4L2=y
# CONFIG_VIDEO_AU0828_RC is not set
CONFIG_VIDEO_CX231XX=m
CONFIG_VIDEO_CX231XX_RC=y
CONFIG_VIDEO_CX231XX_ALSA=m
CONFIG_VIDEO_CX231XX_DVB=m
CONFIG_VIDEO_TM6000=m
CONFIG_VIDEO_TM6000_ALSA=m
CONFIG_VIDEO_TM6000_DVB=m

#
# Digital TV USB devices
#
CONFIG_DVB_USB=m
# CONFIG_DVB_USB_DEBUG is not set
CONFIG_DVB_USB_DIB3000MC=m
CONFIG_DVB_USB_A800=m
CONFIG_DVB_USB_DIBUSB_MB=m
# CONFIG_DVB_USB_DIBUSB_MB_FAULTY is not set
CONFIG_DVB_USB_DIBUSB_MC=m
CONFIG_DVB_USB_DIB0700=m
CONFIG_DVB_USB_UMT_010=m
CONFIG_DVB_USB_CXUSB=m
# CONFIG_DVB_USB_CXUSB_ANALOG is not set
CONFIG_DVB_USB_M920X=m
CONFIG_DVB_USB_DIGITV=m
CONFIG_DVB_USB_VP7045=m
CONFIG_DVB_USB_VP702X=m
CONFIG_DVB_USB_GP8PSK=m
CONFIG_DVB_USB_NOVA_T_USB2=m
CONFIG_DVB_USB_TTUSB2=m
CONFIG_DVB_USB_DTT200U=m
CONFIG_DVB_USB_OPERA1=m
CONFIG_DVB_USB_AF9005=m
CONFIG_DVB_USB_AF9005_REMOTE=m
CONFIG_DVB_USB_PCTV452E=m
CONFIG_DVB_USB_DW2102=m
CONFIG_DVB_USB_CINERGY_T2=m
CONFIG_DVB_USB_DTV5100=m
CONFIG_DVB_USB_AZ6027=m
CONFIG_DVB_USB_TECHNISAT_USB2=m
CONFIG_DVB_USB_V2=m
CONFIG_DVB_USB_AF9015=m
CONFIG_DVB_USB_AF9035=m
CONFIG_DVB_USB_ANYSEE=m
CONFIG_DVB_USB_AU6610=m
CONFIG_DVB_USB_AZ6007=m
CONFIG_DVB_USB_CE6230=m
CONFIG_DVB_USB_EC168=m
CONFIG_DVB_USB_GL861=m
CONFIG_DVB_USB_LME2510=m
CONFIG_DVB_USB_MXL111SF=m
CONFIG_DVB_USB_RTL28XXU=m
# CONFIG_DVB_USB_DVBSKY is not set
# CONFIG_DVB_USB_ZD1301 is not set
CONFIG_DVB_TTUSB_BUDGET=m
CONFIG_DVB_TTUSB_DEC=m
CONFIG_SMS_USB_DRV=m
CONFIG_DVB_B2C2_FLEXCOP_USB=m
# CONFIG_DVB_B2C2_FLEXCOP_USB_DEBUG is not set
# CONFIG_DVB_AS102 is not set

#
# Webcam, TV (analog/digital) USB devices
#
CONFIG_VIDEO_EM28XX=m
# CONFIG_VIDEO_EM28XX_V4L2 is not set
CONFIG_VIDEO_EM28XX_ALSA=m
CONFIG_VIDEO_EM28XX_DVB=m
CONFIG_VIDEO_EM28XX_RC=m
CONFIG_MEDIA_PCI_SUPPORT=y

#
# Media capture support
#
# CONFIG_VIDEO_MEYE is not set
# CONFIG_VIDEO_SOLO6X10 is not set
# CONFIG_VIDEO_TW5864 is not set
# CONFIG_VIDEO_TW68 is not set
# CONFIG_VIDEO_TW686X is not set

#
# Media capture/analog TV support
#
CONFIG_VIDEO_IVTV=m
# CONFIG_VIDEO_IVTV_DEPRECATED_IOCTLS is not set
# CONFIG_VIDEO_IVTV_ALSA is not set
CONFIG_VIDEO_FB_IVTV=m
# CONFIG_VIDEO_FB_IVTV_FORCE_PAT is not set
# CONFIG_VIDEO_HEXIUM_GEMINI is not set
# CONFIG_VIDEO_HEXIUM_ORION is not set
# CONFIG_VIDEO_MXB is not set
# CONFIG_VIDEO_DT3155 is not set

#
# Media capture/analog/hybrid TV support
#
CONFIG_VIDEO_CX18=m
CONFIG_VIDEO_CX18_ALSA=m
CONFIG_VIDEO_CX23885=m
CONFIG_MEDIA_ALTERA_CI=m
# CONFIG_VIDEO_CX25821 is not set
CONFIG_VIDEO_CX88=m
CONFIG_VIDEO_CX88_ALSA=m
CONFIG_VIDEO_CX88_BLACKBIRD=m
CONFIG_VIDEO_CX88_DVB=m
CONFIG_VIDEO_CX88_ENABLE_VP3054=y
CONFIG_VIDEO_CX88_VP3054=m
CONFIG_VIDEO_CX88_MPEG=m
CONFIG_VIDEO_BT848=m
CONFIG_DVB_BT8XX=m
CONFIG_VIDEO_SAA7134=m
CONFIG_VIDEO_SAA7134_ALSA=m
CONFIG_VIDEO_SAA7134_RC=y
CONFIG_VIDEO_SAA7134_DVB=m
CONFIG_VIDEO_SAA7164=m

#
# Media digital TV PCI Adapters
#
CONFIG_DVB_AV7110_IR=y
CONFIG_DVB_AV7110=m
CONFIG_DVB_AV7110_OSD=y
CONFIG_DVB_BUDGET_CORE=m
CONFIG_DVB_BUDGET=m
CONFIG_DVB_BUDGET_CI=m
CONFIG_DVB_BUDGET_AV=m
CONFIG_DVB_BUDGET_PATCH=m
CONFIG_DVB_B2C2_FLEXCOP_PCI=m
# CONFIG_DVB_B2C2_FLEXCOP_PCI_DEBUG is not set
CONFIG_DVB_PLUTO2=m
CONFIG_DVB_DM1105=m
CONFIG_DVB_PT1=m
# CONFIG_DVB_PT3 is not set
CONFIG_MANTIS_CORE=m
CONFIG_DVB_MANTIS=m
CONFIG_DVB_HOPPER=m
CONFIG_DVB_NGENE=m
CONFIG_DVB_DDBRIDGE=m
# CONFIG_DVB_DDBRIDGE_MSIENABLE is not set
# CONFIG_DVB_SMIPCIE is not set
# CONFIG_DVB_NETUP_UNIDVB is not set
# CONFIG_V4L_PLATFORM_DRIVERS is not set
# CONFIG_V4L_MEM2MEM_DRIVERS is not set
# CONFIG_V4L_TEST_DRIVERS is not set
# CONFIG_DVB_PLATFORM_DRIVERS is not set

#
# Supported MMC/SDIO adapters
#
CONFIG_SMS_SDIO_DRV=m
CONFIG_RADIO_ADAPTERS=y
CONFIG_RADIO_TEA575X=m
# CONFIG_RADIO_SI470X is not set
# CONFIG_RADIO_SI4713 is not set
# CONFIG_USB_MR800 is not set
# CONFIG_USB_DSBR is not set
# CONFIG_RADIO_MAXIRADIO is not set
# CONFIG_RADIO_SHARK is not set
# CONFIG_RADIO_SHARK2 is not set
# CONFIG_USB_KEENE is not set
# CONFIG_USB_RAREMONO is not set
# CONFIG_USB_MA901 is not set
# CONFIG_RADIO_TEA5764 is not set
# CONFIG_RADIO_SAA7706H is not set
# CONFIG_RADIO_TEF6862 is not set
# CONFIG_RADIO_WL1273 is not set

#
# Texas Instruments WL128x FM driver (ST based)
#
# end of Texas Instruments WL128x FM driver (ST based)

#
# Supported FireWire (IEEE 1394) Adapters
#
CONFIG_DVB_FIREDTV=m
CONFIG_DVB_FIREDTV_INPUT=y
CONFIG_MEDIA_COMMON_OPTIONS=y

#
# common driver options
#
CONFIG_VIDEO_CX2341X=m
CONFIG_VIDEO_TVEEPROM=m
CONFIG_CYPRESS_FIRMWARE=m
CONFIG_VIDEOBUF2_CORE=m
CONFIG_VIDEOBUF2_V4L2=m
CONFIG_VIDEOBUF2_MEMOPS=m
CONFIG_VIDEOBUF2_VMALLOC=m
CONFIG_VIDEOBUF2_DMA_SG=m
CONFIG_VIDEOBUF2_DVB=m
CONFIG_DVB_B2C2_FLEXCOP=m
CONFIG_VIDEO_SAA7146=m
CONFIG_VIDEO_SAA7146_VV=m
CONFIG_SMS_SIANO_MDTV=m
CONFIG_SMS_SIANO_RC=y
# CONFIG_SMS_SIANO_DEBUGFS is not set

#
# Media ancillary drivers (tuners, sensors, i2c, spi, frontends)
#
CONFIG_MEDIA_SUBDRV_AUTOSELECT=y
CONFIG_MEDIA_ATTACH=y
CONFIG_VIDEO_IR_I2C=m

#
# I2C Encoders, decoders, sensors and other helper chips
#

#
# Audio decoders, processors and mixers
#
CONFIG_VIDEO_TVAUDIO=m
CONFIG_VIDEO_TDA7432=m
# CONFIG_VIDEO_TDA9840 is not set
# CONFIG_VIDEO_TEA6415C is not set
# CONFIG_VIDEO_TEA6420 is not set
CONFIG_VIDEO_MSP3400=m
CONFIG_VIDEO_CS3308=m
CONFIG_VIDEO_CS5345=m
CONFIG_VIDEO_CS53L32A=m
# CONFIG_VIDEO_TLV320AIC23B is not set
# CONFIG_VIDEO_UDA1342 is not set
CONFIG_VIDEO_WM8775=m
CONFIG_VIDEO_WM8739=m
CONFIG_VIDEO_VP27SMPX=m
# CONFIG_VIDEO_SONY_BTF_MPX is not set

#
# RDS decoders
#
CONFIG_VIDEO_SAA6588=m

#
# Video decoders
#
# CONFIG_VIDEO_ADV7183 is not set
# CONFIG_VIDEO_BT819 is not set
# CONFIG_VIDEO_BT856 is not set
# CONFIG_VIDEO_BT866 is not set
# CONFIG_VIDEO_KS0127 is not set
# CONFIG_VIDEO_ML86V7667 is not set
# CONFIG_VIDEO_SAA7110 is not set
CONFIG_VIDEO_SAA711X=m
# CONFIG_VIDEO_TVP514X is not set
# CONFIG_VIDEO_TVP5150 is not set
# CONFIG_VIDEO_TVP7002 is not set
# CONFIG_VIDEO_TW2804 is not set
# CONFIG_VIDEO_TW9903 is not set
# CONFIG_VIDEO_TW9906 is not set
# CONFIG_VIDEO_TW9910 is not set
# CONFIG_VIDEO_VPX3220 is not set

#
# Video and audio decoders
#
CONFIG_VIDEO_SAA717X=m
CONFIG_VIDEO_CX25840=m

#
# Video encoders
#
CONFIG_VIDEO_SAA7127=m
# CONFIG_VIDEO_SAA7185 is not set
# CONFIG_VIDEO_ADV7170 is not set
# CONFIG_VIDEO_ADV7175 is not set
# CONFIG_VIDEO_ADV7343 is not set
# CONFIG_VIDEO_ADV7393 is not set
# CONFIG_VIDEO_AK881X is not set
# CONFIG_VIDEO_THS8200 is not set

#
# Camera sensor devices
#
# CONFIG_VIDEO_OV2640 is not set
# CONFIG_VIDEO_OV2659 is not set
# CONFIG_VIDEO_OV2680 is not set
# CONFIG_VIDEO_OV2685 is not set
# CONFIG_VIDEO_OV6650 is not set
# CONFIG_VIDEO_OV5695 is not set
# CONFIG_VIDEO_OV772X is not set
# CONFIG_VIDEO_OV7640 is not set
# CONFIG_VIDEO_OV7670 is not set
# CONFIG_VIDEO_OV7740 is not set
# CONFIG_VIDEO_OV9640 is not set
# CONFIG_VIDEO_VS6624 is not set
# CONFIG_VIDEO_MT9M111 is not set
# CONFIG_VIDEO_MT9T112 is not set
# CONFIG_VIDEO_MT9V011 is not set
# CONFIG_VIDEO_MT9V111 is not set
# CONFIG_VIDEO_SR030PC30 is not set
# CONFIG_VIDEO_RJ54N1 is not set

#
# Lens drivers
#
# CONFIG_VIDEO_AD5820 is not set

#
# Flash devices
#
# CONFIG_VIDEO_ADP1653 is not set
# CONFIG_VIDEO_LM3560 is not set
# CONFIG_VIDEO_LM3646 is not set

#
# Video improvement chips
#
CONFIG_VIDEO_UPD64031A=m
CONFIG_VIDEO_UPD64083=m

#
# Audio/Video compression chips
#
CONFIG_VIDEO_SAA6752HS=m

#
# SDR tuner chips
#

#
# Miscellaneous helper chips
#
# CONFIG_VIDEO_THS7303 is not set
CONFIG_VIDEO_M52790=m
# CONFIG_VIDEO_I2C is not set
# end of I2C Encoders, decoders, sensors and other helper chips

#
# SPI helper chips
#
# end of SPI helper chips

#
# Media SPI Adapters
#
# CONFIG_CXD2880_SPI_DRV is not set
# end of Media SPI Adapters

CONFIG_MEDIA_TUNER=m

#
# Customize TV tuners
#
CONFIG_MEDIA_TUNER_SIMPLE=m
CONFIG_MEDIA_TUNER_TDA18250=m
CONFIG_MEDIA_TUNER_TDA8290=m
CONFIG_MEDIA_TUNER_TDA827X=m
CONFIG_MEDIA_TUNER_TDA18271=m
CONFIG_MEDIA_TUNER_TDA9887=m
CONFIG_MEDIA_TUNER_TEA5761=m
CONFIG_MEDIA_TUNER_TEA5767=m
# CONFIG_MEDIA_TUNER_MSI001 is not set
CONFIG_MEDIA_TUNER_MT20XX=m
CONFIG_MEDIA_TUNER_MT2060=m
CONFIG_MEDIA_TUNER_MT2063=m
CONFIG_MEDIA_TUNER_MT2266=m
CONFIG_MEDIA_TUNER_MT2131=m
CONFIG_MEDIA_TUNER_QT1010=m
CONFIG_MEDIA_TUNER_XC2028=m
CONFIG_MEDIA_TUNER_XC5000=m
CONFIG_MEDIA_TUNER_XC4000=m
CONFIG_MEDIA_TUNER_MXL5005S=m
CONFIG_MEDIA_TUNER_MXL5007T=m
CONFIG_MEDIA_TUNER_MC44S803=m
CONFIG_MEDIA_TUNER_MAX2165=m
CONFIG_MEDIA_TUNER_TDA18218=m
CONFIG_MEDIA_TUNER_FC0011=m
CONFIG_MEDIA_TUNER_FC0012=m
CONFIG_MEDIA_TUNER_FC0013=m
CONFIG_MEDIA_TUNER_TDA18212=m
CONFIG_MEDIA_TUNER_E4000=m
CONFIG_MEDIA_TUNER_FC2580=m
CONFIG_MEDIA_TUNER_M88RS6000T=m
CONFIG_MEDIA_TUNER_TUA9001=m
CONFIG_MEDIA_TUNER_SI2157=m
CONFIG_MEDIA_TUNER_IT913X=m
CONFIG_MEDIA_TUNER_R820T=m
# CONFIG_MEDIA_TUNER_MXL301RF is not set
CONFIG_MEDIA_TUNER_QM1D1C0042=m
CONFIG_MEDIA_TUNER_QM1D1B0004=m
# end of Customize TV tuners

#
# Customise DVB Frontends
#

#
# Multistandard (satellite) frontends
#
CONFIG_DVB_STB0899=m
CONFIG_DVB_STB6100=m
CONFIG_DVB_STV090x=m
CONFIG_DVB_STV0910=m
CONFIG_DVB_STV6110x=m
CONFIG_DVB_STV6111=m
CONFIG_DVB_MXL5XX=m
CONFIG_DVB_M88DS3103=m

#
# Multistandard (cable + terrestrial) frontends
#
CONFIG_DVB_DRXK=m
CONFIG_DVB_TDA18271C2DD=m
CONFIG_DVB_SI2165=m
CONFIG_DVB_MN88472=m
CONFIG_DVB_MN88473=m

#
# DVB-S (satellite) frontends
#
CONFIG_DVB_CX24110=m
CONFIG_DVB_CX24123=m
CONFIG_DVB_MT312=m
CONFIG_DVB_ZL10036=m
CONFIG_DVB_ZL10039=m
CONFIG_DVB_S5H1420=m
CONFIG_DVB_STV0288=m
CONFIG_DVB_STB6000=m
CONFIG_DVB_STV0299=m
CONFIG_DVB_STV6110=m
CONFIG_DVB_STV0900=m
CONFIG_DVB_TDA8083=m
CONFIG_DVB_TDA10086=m
CONFIG_DVB_TDA8261=m
CONFIG_DVB_VES1X93=m
CONFIG_DVB_TUNER_ITD1000=m
CONFIG_DVB_TUNER_CX24113=m
CONFIG_DVB_TDA826X=m
CONFIG_DVB_TUA6100=m
CONFIG_DVB_CX24116=m
CONFIG_DVB_CX24117=m
CONFIG_DVB_CX24120=m
CONFIG_DVB_SI21XX=m
CONFIG_DVB_TS2020=m
CONFIG_DVB_DS3000=m
CONFIG_DVB_MB86A16=m
CONFIG_DVB_TDA10071=m

#
# DVB-T (terrestrial) frontends
#
CONFIG_DVB_SP8870=m
CONFIG_DVB_SP887X=m
CONFIG_DVB_CX22700=m
CONFIG_DVB_CX22702=m
# CONFIG_DVB_S5H1432 is not set
CONFIG_DVB_DRXD=m
CONFIG_DVB_L64781=m
CONFIG_DVB_TDA1004X=m
CONFIG_DVB_NXT6000=m
CONFIG_DVB_MT352=m
CONFIG_DVB_ZL10353=m
CONFIG_DVB_DIB3000MB=m
CONFIG_DVB_DIB3000MC=m
CONFIG_DVB_DIB7000M=m
CONFIG_DVB_DIB7000P=m
# CONFIG_DVB_DIB9000 is not set
CONFIG_DVB_TDA10048=m
CONFIG_DVB_AF9013=m
CONFIG_DVB_EC100=m
CONFIG_DVB_STV0367=m
CONFIG_DVB_CXD2820R=m
CONFIG_DVB_CXD2841ER=m
CONFIG_DVB_RTL2830=m
CONFIG_DVB_RTL2832=m
CONFIG_DVB_SI2168=m
# CONFIG_DVB_ZD1301_DEMOD is not set
CONFIG_DVB_GP8PSK_FE=m
# CONFIG_DVB_CXD2880 is not set

#
# DVB-C (cable) frontends
#
CONFIG_DVB_VES1820=m
CONFIG_DVB_TDA10021=m
CONFIG_DVB_TDA10023=m
CONFIG_DVB_STV0297=m

#
# ATSC (North American/Korean Terrestrial/Cable DTV) frontends
#
CONFIG_DVB_NXT200X=m
CONFIG_DVB_OR51211=m
CONFIG_DVB_OR51132=m
CONFIG_DVB_BCM3510=m
CONFIG_DVB_LGDT330X=m
CONFIG_DVB_LGDT3305=m
CONFIG_DVB_LGDT3306A=m
CONFIG_DVB_LG2160=m
CONFIG_DVB_S5H1409=m
CONFIG_DVB_AU8522=m
CONFIG_DVB_AU8522_DTV=m
CONFIG_DVB_AU8522_V4L=m
CONFIG_DVB_S5H1411=m

#
# ISDB-T (terrestrial) frontends
#
CONFIG_DVB_S921=m
CONFIG_DVB_DIB8000=m
CONFIG_DVB_MB86A20S=m

#
# ISDB-S (satellite) & ISDB-T (terrestrial) frontends
#
CONFIG_DVB_TC90522=m
# CONFIG_DVB_MN88443X is not set

#
# Digital terrestrial only tuners/PLL
#
CONFIG_DVB_PLL=m
CONFIG_DVB_TUNER_DIB0070=m
CONFIG_DVB_TUNER_DIB0090=m

#
# SEC control devices for DVB-S
#
CONFIG_DVB_DRX39XYJ=m
CONFIG_DVB_LNBH25=m
# CONFIG_DVB_LNBH29 is not set
CONFIG_DVB_LNBP21=m
CONFIG_DVB_LNBP22=m
CONFIG_DVB_ISL6405=m
CONFIG_DVB_ISL6421=m
CONFIG_DVB_ISL6423=m
CONFIG_DVB_A8293=m
# CONFIG_DVB_LGS8GL5 is not set
CONFIG_DVB_LGS8GXX=m
CONFIG_DVB_ATBM8830=m
CONFIG_DVB_TDA665x=m
CONFIG_DVB_IX2505V=m
CONFIG_DVB_M88RS2000=m
CONFIG_DVB_AF9033=m
# CONFIG_DVB_HORUS3A is not set
# CONFIG_DVB_ASCOT2E is not set
# CONFIG_DVB_HELENE is not set

#
# Common Interface (EN50221) controller drivers
#
CONFIG_DVB_CXD2099=m
# CONFIG_DVB_SP2 is not set

#
# Tools to develop new frontends
#
CONFIG_DVB_DUMMY_FE=m
# end of Customise DVB Frontends

#
# Graphics support
#
CONFIG_AGP=y
CONFIG_AGP_AMD64=y
CONFIG_AGP_INTEL=y
CONFIG_AGP_SIS=y
CONFIG_AGP_VIA=y
CONFIG_INTEL_GTT=y
CONFIG_VGA_ARB=y
CONFIG_VGA_ARB_MAX_GPUS=64
CONFIG_VGA_SWITCHEROO=y
CONFIG_DRM=m
CONFIG_DRM_MIPI_DSI=y
CONFIG_DRM_DP_AUX_CHARDEV=y
CONFIG_DRM_EXPORT_FOR_TESTS=y
CONFIG_DRM_DEBUG_SELFTEST=m
CONFIG_DRM_KMS_HELPER=m
CONFIG_DRM_KMS_FB_HELPER=y
# CONFIG_DRM_DEBUG_DP_MST_TOPOLOGY_REFS is not set
CONFIG_DRM_FBDEV_EMULATION=y
CONFIG_DRM_FBDEV_OVERALLOC=100
# CONFIG_DRM_FBDEV_LEAK_PHYS_SMEM is not set
CONFIG_DRM_LOAD_EDID_FIRMWARE=y
# CONFIG_DRM_DP_CEC is not set
CONFIG_DRM_TTM=m
CONFIG_DRM_TTM_DMA_PAGE_POOL=y
CONFIG_DRM_VRAM_HELPER=m
CONFIG_DRM_TTM_HELPER=m
CONFIG_DRM_GEM_SHMEM_HELPER=y

#
# I2C encoder or helper chips
#
CONFIG_DRM_I2C_CH7006=m
CONFIG_DRM_I2C_SIL164=m
# CONFIG_DRM_I2C_NXP_TDA998X is not set
# CONFIG_DRM_I2C_NXP_TDA9950 is not set
# end of I2C encoder or helper chips

#
# ARM devices
#
# end of ARM devices

# CONFIG_DRM_RADEON is not set
# CONFIG_DRM_AMDGPU is not set

#
# ACP (Audio CoProcessor) Configuration
#
# end of ACP (Audio CoProcessor) Configuration

# CONFIG_DRM_NOUVEAU is not set
CONFIG_DRM_I915=m
# CONFIG_DRM_I915_ALPHA_SUPPORT is not set
CONFIG_DRM_I915_FORCE_PROBE=""
CONFIG_DRM_I915_CAPTURE_ERROR=y
CONFIG_DRM_I915_COMPRESS_ERROR=y
CONFIG_DRM_I915_USERPTR=y
CONFIG_DRM_I915_GVT=y
CONFIG_DRM_I915_GVT_KVMGT=m

#
# drm/i915 Debugging
#
# CONFIG_DRM_I915_WERROR is not set
# CONFIG_DRM_I915_DEBUG is not set
# CONFIG_DRM_I915_DEBUG_MMIO is not set
# CONFIG_DRM_I915_SW_FENCE_DEBUG_OBJECTS is not set
# CONFIG_DRM_I915_SW_FENCE_CHECK_DAG is not set
# CONFIG_DRM_I915_DEBUG_GUC is not set
# CONFIG_DRM_I915_SELFTEST is not set
# CONFIG_DRM_I915_LOW_LEVEL_TRACEPOINTS is not set
# CONFIG_DRM_I915_DEBUG_VBLANK_EVADE is not set
# CONFIG_DRM_I915_DEBUG_RUNTIME_PM is not set
# end of drm/i915 Debugging

#
# drm/i915 Profile Guided Optimisation
#
CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND=250
CONFIG_DRM_I915_HEARTBEAT_INTERVAL=2500
CONFIG_DRM_I915_PREEMPT_TIMEOUT=640
CONFIG_DRM_I915_SPIN_REQUEST=5
CONFIG_DRM_I915_STOP_TIMEOUT=100
CONFIG_DRM_I915_TIMESLICE_DURATION=1
# end of drm/i915 Profile Guided Optimisation

CONFIG_DRM_VGEM=m
# CONFIG_DRM_VKMS is not set
CONFIG_DRM_VMWGFX=m
CONFIG_DRM_VMWGFX_FBCON=y
CONFIG_DRM_GMA500=m
CONFIG_DRM_GMA600=y
CONFIG_DRM_GMA3600=y
CONFIG_DRM_UDL=m
CONFIG_DRM_AST=m
CONFIG_DRM_MGAG200=m
CONFIG_DRM_CIRRUS_QEMU=m
CONFIG_DRM_QXL=m
CONFIG_DRM_BOCHS=m
CONFIG_DRM_VIRTIO_GPU=m
CONFIG_DRM_PANEL=y

#
# Display Panels
#
# CONFIG_DRM_PANEL_RASPBERRYPI_TOUCHSCREEN is not set
# end of Display Panels

CONFIG_DRM_BRIDGE=y
CONFIG_DRM_PANEL_BRIDGE=y

#
# Display Interface Bridges
#
# CONFIG_DRM_ANALOGIX_ANX78XX is not set
# end of Display Interface Bridges

# CONFIG_DRM_ETNAVIV is not set
# CONFIG_DRM_GM12U320 is not set
# CONFIG_TINYDRM_HX8357D is not set
# CONFIG_TINYDRM_ILI9225 is not set
# CONFIG_TINYDRM_ILI9341 is not set
# CONFIG_TINYDRM_MI0283QT is not set
# CONFIG_TINYDRM_REPAPER is not set
# CONFIG_TINYDRM_ST7586 is not set
# CONFIG_TINYDRM_ST7735R is not set
# CONFIG_DRM_XEN is not set
# CONFIG_DRM_VBOXVIDEO is not set
# CONFIG_DRM_LEGACY is not set
CONFIG_DRM_PANEL_ORIENTATION_QUIRKS=y
CONFIG_DRM_LIB_RANDOM=y

#
# Frame buffer Devices
#
CONFIG_FB_CMDLINE=y
CONFIG_FB_NOTIFY=y
CONFIG_FB=y
# CONFIG_FIRMWARE_EDID is not set
CONFIG_FB_BOOT_VESA_SUPPORT=y
CONFIG_FB_CFB_FILLRECT=y
CONFIG_FB_CFB_COPYAREA=y
CONFIG_FB_CFB_IMAGEBLIT=y
CONFIG_FB_SYS_FILLRECT=m
CONFIG_FB_SYS_COPYAREA=m
CONFIG_FB_SYS_IMAGEBLIT=m
# CONFIG_FB_FOREIGN_ENDIAN is not set
CONFIG_FB_SYS_FOPS=m
CONFIG_FB_DEFERRED_IO=y
# CONFIG_FB_MODE_HELPERS is not set
CONFIG_FB_TILEBLITTING=y

#
# Frame buffer hardware drivers
#
# CONFIG_FB_CIRRUS is not set
# CONFIG_FB_PM2 is not set
# CONFIG_FB_CYBER2000 is not set
# CONFIG_FB_ARC is not set
# CONFIG_FB_ASILIANT is not set
# CONFIG_FB_IMSTT is not set
# CONFIG_FB_VGA16 is not set
# CONFIG_FB_UVESA is not set
CONFIG_FB_VESA=y
CONFIG_FB_EFI=y
# CONFIG_FB_N411 is not set
# CONFIG_FB_HGA is not set
# CONFIG_FB_OPENCORES is not set
# CONFIG_FB_S1D13XXX is not set
# CONFIG_FB_NVIDIA is not set
# CONFIG_FB_RIVA is not set
# CONFIG_FB_I740 is not set
# CONFIG_FB_LE80578 is not set
# CONFIG_FB_INTEL is not set
# CONFIG_FB_MATROX is not set
# CONFIG_FB_RADEON is not set
# CONFIG_FB_ATY128 is not set
# CONFIG_FB_ATY is not set
# CONFIG_FB_S3 is not set
# CONFIG_FB_SAVAGE is not set
# CONFIG_FB_SIS is not set
# CONFIG_FB_VIA is not set
# CONFIG_FB_NEOMAGIC is not set
# CONFIG_FB_KYRO is not set
# CONFIG_FB_3DFX is not set
# CONFIG_FB_VOODOO1 is not set
# CONFIG_FB_VT8623 is not set
# CONFIG_FB_TRIDENT is not set
# CONFIG_FB_ARK is not set
# CONFIG_FB_PM3 is not set
# CONFIG_FB_CARMINE is not set
# CONFIG_FB_SM501 is not set
# CONFIG_FB_SMSCUFX is not set
# CONFIG_FB_UDL is not set
# CONFIG_FB_IBM_GXT4500 is not set
# CONFIG_FB_VIRTUAL is not set
# CONFIG_XEN_FBDEV_FRONTEND is not set
# CONFIG_FB_METRONOME is not set
# CONFIG_FB_MB862XX is not set
CONFIG_FB_HYPERV=m
# CONFIG_FB_SIMPLE is not set
# CONFIG_FB_SM712 is not set
# end of Frame buffer Devices

#
# Backlight & LCD device support
#
CONFIG_LCD_CLASS_DEVICE=m
# CONFIG_LCD_L4F00242T03 is not set
# CONFIG_LCD_LMS283GF05 is not set
# CONFIG_LCD_LTV350QV is not set
# CONFIG_LCD_ILI922X is not set
# CONFIG_LCD_ILI9320 is not set
# CONFIG_LCD_TDO24M is not set
# CONFIG_LCD_VGG2432A4 is not set
CONFIG_LCD_PLATFORM=m
# CONFIG_LCD_AMS369FG06 is not set
# CONFIG_LCD_LMS501KF03 is not set
# CONFIG_LCD_HX8357 is not set
# CONFIG_LCD_OTM3225A is not set
CONFIG_BACKLIGHT_CLASS_DEVICE=y
# CONFIG_BACKLIGHT_GENERIC is not set
# CONFIG_BACKLIGHT_PWM is not set
CONFIG_BACKLIGHT_APPLE=m
# CONFIG_BACKLIGHT_QCOM_WLED is not set
# CONFIG_BACKLIGHT_SAHARA is not set
# CONFIG_BACKLIGHT_ADP8860 is not set
# CONFIG_BACKLIGHT_ADP8870 is not set
# CONFIG_BACKLIGHT_LM3630A is not set
# CONFIG_BACKLIGHT_LM3639 is not set
CONFIG_BACKLIGHT_LP855X=m
# CONFIG_BACKLIGHT_GPIO is not set
# CONFIG_BACKLIGHT_LV5207LP is not set
# CONFIG_BACKLIGHT_BD6107 is not set
# CONFIG_BACKLIGHT_ARCXCNN is not set
# end of Backlight & LCD device support

CONFIG_HDMI=y

#
# Console display driver support
#
CONFIG_VGA_CONSOLE=y
CONFIG_VGACON_SOFT_SCROLLBACK=y
CONFIG_VGACON_SOFT_SCROLLBACK_SIZE=64
# CONFIG_VGACON_SOFT_SCROLLBACK_PERSISTENT_ENABLE_BY_DEFAULT is not set
CONFIG_DUMMY_CONSOLE=y
CONFIG_DUMMY_CONSOLE_COLUMNS=80
CONFIG_DUMMY_CONSOLE_ROWS=25
CONFIG_FRAMEBUFFER_CONSOLE=y
CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY=y
CONFIG_FRAMEBUFFER_CONSOLE_ROTATION=y
# CONFIG_FRAMEBUFFER_CONSOLE_DEFERRED_TAKEOVER is not set
# end of Console display driver support

CONFIG_LOGO=y
# CONFIG_LOGO_LINUX_MONO is not set
# CONFIG_LOGO_LINUX_VGA16 is not set
CONFIG_LOGO_LINUX_CLUT224=y
# end of Graphics support

CONFIG_SOUND=m
CONFIG_SOUND_OSS_CORE=y
CONFIG_SOUND_OSS_CORE_PRECLAIM=y
CONFIG_SND=m
CONFIG_SND_TIMER=m
CONFIG_SND_PCM=m
CONFIG_SND_PCM_ELD=y
CONFIG_SND_HWDEP=m
CONFIG_SND_SEQ_DEVICE=m
CONFIG_SND_RAWMIDI=m
CONFIG_SND_COMPRESS_OFFLOAD=m
CONFIG_SND_JACK=y
CONFIG_SND_JACK_INPUT_DEV=y
CONFIG_SND_OSSEMUL=y
# CONFIG_SND_MIXER_OSS is not set
# CONFIG_SND_PCM_OSS is not set
CONFIG_SND_PCM_TIMER=y
CONFIG_SND_HRTIMER=m
CONFIG_SND_DYNAMIC_MINORS=y
CONFIG_SND_MAX_CARDS=32
# CONFIG_SND_SUPPORT_OLD_API is not set
CONFIG_SND_PROC_FS=y
CONFIG_SND_VERBOSE_PROCFS=y
# CONFIG_SND_VERBOSE_PRINTK is not set
# CONFIG_SND_DEBUG is not set
CONFIG_SND_VMASTER=y
CONFIG_SND_DMA_SGBUF=y
CONFIG_SND_SEQUENCER=m
CONFIG_SND_SEQ_DUMMY=m
CONFIG_SND_SEQUENCER_OSS=m
CONFIG_SND_SEQ_HRTIMER_DEFAULT=y
CONFIG_SND_SEQ_MIDI_EVENT=m
CONFIG_SND_SEQ_MIDI=m
CONFIG_SND_SEQ_MIDI_EMUL=m
CONFIG_SND_SEQ_VIRMIDI=m
CONFIG_SND_MPU401_UART=m
CONFIG_SND_OPL3_LIB=m
CONFIG_SND_OPL3_LIB_SEQ=m
CONFIG_SND_VX_LIB=m
CONFIG_SND_AC97_CODEC=m
CONFIG_SND_DRIVERS=y
CONFIG_SND_PCSP=m
CONFIG_SND_DUMMY=m
CONFIG_SND_ALOOP=m
CONFIG_SND_VIRMIDI=m
CONFIG_SND_MTPAV=m
# CONFIG_SND_MTS64 is not set
# CONFIG_SND_SERIAL_U16550 is not set
CONFIG_SND_MPU401=m
# CONFIG_SND_PORTMAN2X4 is not set
CONFIG_SND_AC97_POWER_SAVE=y
CONFIG_SND_AC97_POWER_SAVE_DEFAULT=5
CONFIG_SND_PCI=y
CONFIG_SND_AD1889=m
# CONFIG_SND_ALS300 is not set
# CONFIG_SND_ALS4000 is not set
CONFIG_SND_ALI5451=m
CONFIG_SND_ASIHPI=m
CONFIG_SND_ATIIXP=m
CONFIG_SND_ATIIXP_MODEM=m
CONFIG_SND_AU8810=m
CONFIG_SND_AU8820=m
CONFIG_SND_AU8830=m
# CONFIG_SND_AW2 is not set
# CONFIG_SND_AZT3328 is not set
CONFIG_SND_BT87X=m
# CONFIG_SND_BT87X_OVERCLOCK is not set
CONFIG_SND_CA0106=m
CONFIG_SND_CMIPCI=m
CONFIG_SND_OXYGEN_LIB=m
CONFIG_SND_OXYGEN=m
# CONFIG_SND_CS4281 is not set
CONFIG_SND_CS46XX=m
CONFIG_SND_CS46XX_NEW_DSP=y
CONFIG_SND_CTXFI=m
CONFIG_SND_DARLA20=m
CONFIG_SND_GINA20=m
CONFIG_SND_LAYLA20=m
CONFIG_SND_DARLA24=m
CONFIG_SND_GINA24=m
CONFIG_SND_LAYLA24=m
CONFIG_SND_MONA=m
CONFIG_SND_MIA=m
CONFIG_SND_ECHO3G=m
CONFIG_SND_INDIGO=m
CONFIG_SND_INDIGOIO=m
CONFIG_SND_INDIGODJ=m
CONFIG_SND_INDIGOIOX=m
CONFIG_SND_INDIGODJX=m
CONFIG_SND_EMU10K1=m
CONFIG_SND_EMU10K1_SEQ=m
CONFIG_SND_EMU10K1X=m
CONFIG_SND_ENS1370=m
CONFIG_SND_ENS1371=m
# CONFIG_SND_ES1938 is not set
CONFIG_SND_ES1968=m
CONFIG_SND_ES1968_INPUT=y
CONFIG_SND_ES1968_RADIO=y
# CONFIG_SND_FM801 is not set
CONFIG_SND_HDSP=m
CONFIG_SND_HDSPM=m
CONFIG_SND_ICE1712=m
CONFIG_SND_ICE1724=m
CONFIG_SND_INTEL8X0=m
CONFIG_SND_INTEL8X0M=m
CONFIG_SND_KORG1212=m
CONFIG_SND_LOLA=m
CONFIG_SND_LX6464ES=m
CONFIG_SND_MAESTRO3=m
CONFIG_SND_MAESTRO3_INPUT=y
CONFIG_SND_MIXART=m
# CONFIG_SND_NM256 is not set
CONFIG_SND_PCXHR=m
# CONFIG_SND_RIPTIDE is not set
CONFIG_SND_RME32=m
CONFIG_SND_RME96=m
CONFIG_SND_RME9652=m
# CONFIG_SND_SONICVIBES is not set
CONFIG_SND_TRIDENT=m
CONFIG_SND_VIA82XX=m
CONFIG_SND_VIA82XX_MODEM=m
CONFIG_SND_VIRTUOSO=m
CONFIG_SND_VX222=m
# CONFIG_SND_YMFPCI is not set

#
# HD-Audio
#
CONFIG_SND_HDA=m
CONFIG_SND_HDA_INTEL=m
CONFIG_SND_HDA_HWDEP=y
CONFIG_SND_HDA_RECONFIG=y
CONFIG_SND_HDA_INPUT_BEEP=y
CONFIG_SND_HDA_INPUT_BEEP_MODE=0
CONFIG_SND_HDA_PATCH_LOADER=y
CONFIG_SND_HDA_CODEC_REALTEK=m
CONFIG_SND_HDA_CODEC_ANALOG=m
CONFIG_SND_HDA_CODEC_SIGMATEL=m
CONFIG_SND_HDA_CODEC_VIA=m
CONFIG_SND_HDA_CODEC_HDMI=m
CONFIG_SND_HDA_CODEC_CIRRUS=m
CONFIG_SND_HDA_CODEC_CONEXANT=m
CONFIG_SND_HDA_CODEC_CA0110=m
CONFIG_SND_HDA_CODEC_CA0132=m
CONFIG_SND_HDA_CODEC_CA0132_DSP=y
CONFIG_SND_HDA_CODEC_CMEDIA=m
CONFIG_SND_HDA_CODEC_SI3054=m
CONFIG_SND_HDA_GENERIC=m
CONFIG_SND_HDA_POWER_SAVE_DEFAULT=0
# end of HD-Audio

CONFIG_SND_HDA_CORE=m
CONFIG_SND_HDA_DSP_LOADER=y
CONFIG_SND_HDA_COMPONENT=y
CONFIG_SND_HDA_I915=y
CONFIG_SND_HDA_EXT_CORE=m
CONFIG_SND_HDA_PREALLOC_SIZE=0
CONFIG_SND_INTEL_NHLT=y
CONFIG_SND_INTEL_DSP_CONFIG=m
# CONFIG_SND_SPI is not set
CONFIG_SND_USB=y
CONFIG_SND_USB_AUDIO=m
CONFIG_SND_USB_AUDIO_USE_MEDIA_CONTROLLER=y
CONFIG_SND_USB_UA101=m
CONFIG_SND_USB_USX2Y=m
CONFIG_SND_USB_CAIAQ=m
CONFIG_SND_USB_CAIAQ_INPUT=y
CONFIG_SND_USB_US122L=m
CONFIG_SND_USB_6FIRE=m
CONFIG_SND_USB_HIFACE=m
CONFIG_SND_BCD2000=m
CONFIG_SND_USB_LINE6=m
CONFIG_SND_USB_POD=m
CONFIG_SND_USB_PODHD=m
CONFIG_SND_USB_TONEPORT=m
CONFIG_SND_USB_VARIAX=m
CONFIG_SND_FIREWIRE=y
CONFIG_SND_FIREWIRE_LIB=m
# CONFIG_SND_DICE is not set
# CONFIG_SND_OXFW is not set
CONFIG_SND_ISIGHT=m
# CONFIG_SND_FIREWORKS is not set
# CONFIG_SND_BEBOB is not set
# CONFIG_SND_FIREWIRE_DIGI00X is not set
# CONFIG_SND_FIREWIRE_TASCAM is not set
# CONFIG_SND_FIREWIRE_MOTU is not set
# CONFIG_SND_FIREFACE is not set
CONFIG_SND_SOC=m
CONFIG_SND_SOC_COMPRESS=y
CONFIG_SND_SOC_TOPOLOGY=y
CONFIG_SND_SOC_ACPI=m
# CONFIG_SND_SOC_AMD_ACP is not set
# CONFIG_SND_SOC_AMD_ACP3x is not set
# CONFIG_SND_ATMEL_SOC is not set
# CONFIG_SND_DESIGNWARE_I2S is not set

#
# SoC Audio for Freescale CPUs
#

#
# Common SoC Audio options for Freescale CPUs:
#
# CONFIG_SND_SOC_FSL_ASRC is not set
# CONFIG_SND_SOC_FSL_SAI is not set
# CONFIG_SND_SOC_FSL_AUDMIX is not set
# CONFIG_SND_SOC_FSL_SSI is not set
# CONFIG_SND_SOC_FSL_SPDIF is not set
# CONFIG_SND_SOC_FSL_ESAI is not set
# CONFIG_SND_SOC_FSL_MICFIL is not set
# CONFIG_SND_SOC_IMX_AUDMUX is not set
# end of SoC Audio for Freescale CPUs

# CONFIG_SND_I2S_HI6210_I2S is not set
# CONFIG_SND_SOC_IMG is not set
CONFIG_SND_SOC_INTEL_SST_TOPLEVEL=y
CONFIG_SND_SST_IPC=m
CONFIG_SND_SST_IPC_ACPI=m
CONFIG_SND_SOC_INTEL_SST_ACPI=m
CONFIG_SND_SOC_INTEL_SST=m
CONFIG_SND_SOC_INTEL_SST_FIRMWARE=m
CONFIG_SND_SOC_INTEL_HASWELL=m
CONFIG_SND_SST_ATOM_HIFI2_PLATFORM=m
# CONFIG_SND_SST_ATOM_HIFI2_PLATFORM_PCI is not set
CONFIG_SND_SST_ATOM_HIFI2_PLATFORM_ACPI=m
CONFIG_SND_SOC_INTEL_SKYLAKE=m
CONFIG_SND_SOC_INTEL_SKL=m
CONFIG_SND_SOC_INTEL_APL=m
CONFIG_SND_SOC_INTEL_KBL=m
CONFIG_SND_SOC_INTEL_GLK=m
CONFIG_SND_SOC_INTEL_CNL=m
CONFIG_SND_SOC_INTEL_CFL=m
# CONFIG_SND_SOC_INTEL_CML_H is not set
# CONFIG_SND_SOC_INTEL_CML_LP is not set
CONFIG_SND_SOC_INTEL_SKYLAKE_FAMILY=m
CONFIG_SND_SOC_INTEL_SKYLAKE_SSP_CLK=m
# CONFIG_SND_SOC_INTEL_SKYLAKE_HDAUDIO_CODEC is not set
CONFIG_SND_SOC_INTEL_SKYLAKE_COMMON=m
CONFIG_SND_SOC_ACPI_INTEL_MATCH=m
CONFIG_SND_SOC_INTEL_MACH=y
# CONFIG_SND_SOC_INTEL_USER_FRIENDLY_LONG_NAMES is not set
CONFIG_SND_SOC_INTEL_HASWELL_MACH=m
# CONFIG_SND_SOC_INTEL_BDW_RT5650_MACH is not set
CONFIG_SND_SOC_INTEL_BDW_RT5677_MACH=m
CONFIG_SND_SOC_INTEL_BROADWELL_MACH=m
CONFIG_SND_SOC_INTEL_BYTCR_RT5640_MACH=m
CONFIG_SND_SOC_INTEL_BYTCR_RT5651_MACH=m
CONFIG_SND_SOC_INTEL_CHT_BSW_RT5672_MACH=m
CONFIG_SND_SOC_INTEL_CHT_BSW_RT5645_MACH=m
CONFIG_SND_SOC_INTEL_CHT_BSW_MAX98090_TI_MACH=m
# CONFIG_SND_SOC_INTEL_CHT_BSW_NAU8824_MACH is not set
# CONFIG_SND_SOC_INTEL_BYT_CHT_CX2072X_MACH is not set
CONFIG_SND_SOC_INTEL_BYT_CHT_DA7213_MACH=m
CONFIG_SND_SOC_INTEL_BYT_CHT_ES8316_MACH=m
CONFIG_SND_SOC_INTEL_BYT_CHT_NOCODEC_MACH=m
CONFIG_SND_SOC_INTEL_SKL_RT286_MACH=m
CONFIG_SND_SOC_INTEL_SKL_NAU88L25_SSM4567_MACH=m
CONFIG_SND_SOC_INTEL_SKL_NAU88L25_MAX98357A_MACH=m
CONFIG_SND_SOC_INTEL_DA7219_MAX98357A_GENERIC=m
CONFIG_SND_SOC_INTEL_BXT_DA7219_MAX98357A_COMMON=m
CONFIG_SND_SOC_INTEL_BXT_DA7219_MAX98357A_MACH=m
CONFIG_SND_SOC_INTEL_BXT_RT298_MACH=m
CONFIG_SND_SOC_INTEL_KBL_RT5663_MAX98927_MACH=m
CONFIG_SND_SOC_INTEL_KBL_RT5663_RT5514_MAX98927_MACH=m
# CONFIG_SND_SOC_INTEL_KBL_DA7219_MAX98357A_MACH is not set
# CONFIG_SND_SOC_INTEL_KBL_DA7219_MAX98927_MACH is not set
# CONFIG_SND_SOC_INTEL_KBL_RT5660_MACH is not set
# CONFIG_SND_SOC_MTK_BTCVSD is not set
# CONFIG_SND_SOC_SOF_TOPLEVEL is not set

#
# STMicroelectronics STM32 SOC audio support
#
# end of STMicroelectronics STM32 SOC audio support

# CONFIG_SND_SOC_XILINX_I2S is not set
# CONFIG_SND_SOC_XILINX_AUDIO_FORMATTER is not set
# CONFIG_SND_SOC_XILINX_SPDIF is not set
# CONFIG_SND_SOC_XTFPGA_I2S is not set
# CONFIG_ZX_TDM is not set
CONFIG_SND_SOC_I2C_AND_SPI=m

#
# CODEC drivers
#
# CONFIG_SND_SOC_AC97_CODEC is not set
# CONFIG_SND_SOC_ADAU1701 is not set
# CONFIG_SND_SOC_ADAU1761_I2C is not set
# CONFIG_SND_SOC_ADAU1761_SPI is not set
# CONFIG_SND_SOC_ADAU7002 is not set
# CONFIG_SND_SOC_ADAU7118_HW is not set
# CONFIG_SND_SOC_ADAU7118_I2C is not set
# CONFIG_SND_SOC_AK4104 is not set
# CONFIG_SND_SOC_AK4118 is not set
# CONFIG_SND_SOC_AK4458 is not set
# CONFIG_SND_SOC_AK4554 is not set
# CONFIG_SND_SOC_AK4613 is not set
# CONFIG_SND_SOC_AK4642 is not set
# CONFIG_SND_SOC_AK5386 is not set
# CONFIG_SND_SOC_AK5558 is not set
# CONFIG_SND_SOC_ALC5623 is not set
# CONFIG_SND_SOC_BD28623 is not set
# CONFIG_SND_SOC_BT_SCO is not set
# CONFIG_SND_SOC_CS35L32 is not set
# CONFIG_SND_SOC_CS35L33 is not set
# CONFIG_SND_SOC_CS35L34 is not set
# CONFIG_SND_SOC_CS35L35 is not set
# CONFIG_SND_SOC_CS35L36 is not set
# CONFIG_SND_SOC_CS42L42 is not set
# CONFIG_SND_SOC_CS42L51_I2C is not set
# CONFIG_SND_SOC_CS42L52 is not set
# CONFIG_SND_SOC_CS42L56 is not set
# CONFIG_SND_SOC_CS42L73 is not set
# CONFIG_SND_SOC_CS4265 is not set
# CONFIG_SND_SOC_CS4270 is not set
# CONFIG_SND_SOC_CS4271_I2C is not set
# CONFIG_SND_SOC_CS4271_SPI is not set
# CONFIG_SND_SOC_CS42XX8_I2C is not set
# CONFIG_SND_SOC_CS43130 is not set
# CONFIG_SND_SOC_CS4341 is not set
# CONFIG_SND_SOC_CS4349 is not set
# CONFIG_SND_SOC_CS53L30 is not set
# CONFIG_SND_SOC_CX2072X is not set
CONFIG_SND_SOC_DA7213=m
CONFIG_SND_SOC_DA7219=m
CONFIG_SND_SOC_DMIC=m
# CONFIG_SND_SOC_ES7134 is not set
# CONFIG_SND_SOC_ES7241 is not set
CONFIG_SND_SOC_ES8316=m
# CONFIG_SND_SOC_ES8328_I2C is not set
# CONFIG_SND_SOC_ES8328_SPI is not set
# CONFIG_SND_SOC_GTM601 is not set
CONFIG_SND_SOC_HDAC_HDMI=m
# CONFIG_SND_SOC_INNO_RK3036 is not set
# CONFIG_SND_SOC_MAX98088 is not set
CONFIG_SND_SOC_MAX98090=m
CONFIG_SND_SOC_MAX98357A=m
# CONFIG_SND_SOC_MAX98504 is not set
# CONFIG_SND_SOC_MAX9867 is not set
CONFIG_SND_SOC_MAX98927=m
# CONFIG_SND_SOC_MAX98373 is not set
# CONFIG_SND_SOC_MAX9860 is not set
# CONFIG_SND_SOC_MSM8916_WCD_DIGITAL is not set
# CONFIG_SND_SOC_PCM1681 is not set
# CONFIG_SND_SOC_PCM1789_I2C is not set
# CONFIG_SND_SOC_PCM179X_I2C is not set
# CONFIG_SND_SOC_PCM179X_SPI is not set
# CONFIG_SND_SOC_PCM186X_I2C is not set
# CONFIG_SND_SOC_PCM186X_SPI is not set
# CONFIG_SND_SOC_PCM3060_I2C is not set
# CONFIG_SND_SOC_PCM3060_SPI is not set
# CONFIG_SND_SOC_PCM3168A_I2C is not set
# CONFIG_SND_SOC_PCM3168A_SPI is not set
# CONFIG_SND_SOC_PCM512x_I2C is not set
# CONFIG_SND_SOC_PCM512x_SPI is not set
# CONFIG_SND_SOC_RK3328 is not set
CONFIG_SND_SOC_RL6231=m
CONFIG_SND_SOC_RL6347A=m
CONFIG_SND_SOC_RT286=m
CONFIG_SND_SOC_RT298=m
CONFIG_SND_SOC_RT5514=m
CONFIG_SND_SOC_RT5514_SPI=m
# CONFIG_SND_SOC_RT5616 is not set
# CONFIG_SND_SOC_RT5631 is not set
CONFIG_SND_SOC_RT5640=m
CONFIG_SND_SOC_RT5645=m
CONFIG_SND_SOC_RT5651=m
CONFIG_SND_SOC_RT5663=m
CONFIG_SND_SOC_RT5670=m
CONFIG_SND_SOC_RT5677=m
CONFIG_SND_SOC_RT5677_SPI=m
# CONFIG_SND_SOC_SGTL5000 is not set
# CONFIG_SND_SOC_SIMPLE_AMPLIFIER is not set
# CONFIG_SND_SOC_SIRF_AUDIO_CODEC is not set
# CONFIG_SND_SOC_SPDIF is not set
# CONFIG_SND_SOC_SSM2305 is not set
# CONFIG_SND_SOC_SSM2602_SPI is not set
# CONFIG_SND_SOC_SSM2602_I2C is not set
CONFIG_SND_SOC_SSM4567=m
# CONFIG_SND_SOC_STA32X is not set
# CONFIG_SND_SOC_STA350 is not set
# CONFIG_SND_SOC_STI_SAS is not set
# CONFIG_SND_SOC_TAS2552 is not set
# CONFIG_SND_SOC_TAS2562 is not set
# CONFIG_SND_SOC_TAS2770 is not set
# CONFIG_SND_SOC_TAS5086 is not set
# CONFIG_SND_SOC_TAS571X is not set
# CONFIG_SND_SOC_TAS5720 is not set
# CONFIG_SND_SOC_TAS6424 is not set
# CONFIG_SND_SOC_TDA7419 is not set
# CONFIG_SND_SOC_TFA9879 is not set
# CONFIG_SND_SOC_TLV320AIC23_I2C is not set
# CONFIG_SND_SOC_TLV320AIC23_SPI is not set
# CONFIG_SND_SOC_TLV320AIC31XX is not set
# CONFIG_SND_SOC_TLV320AIC32X4_I2C is not set
# CONFIG_SND_SOC_TLV320AIC32X4_SPI is not set
# CONFIG_SND_SOC_TLV320AIC3X is not set
CONFIG_SND_SOC_TS3A227E=m
# CONFIG_SND_SOC_TSCS42XX is not set
# CONFIG_SND_SOC_TSCS454 is not set
# CONFIG_SND_SOC_UDA1334 is not set
# CONFIG_SND_SOC_WM8510 is not set
# CONFIG_SND_SOC_WM8523 is not set
# CONFIG_SND_SOC_WM8524 is not set
# CONFIG_SND_SOC_WM8580 is not set
# CONFIG_SND_SOC_WM8711 is not set
# CONFIG_SND_SOC_WM8728 is not set
# CONFIG_SND_SOC_WM8731 is not set
# CONFIG_SND_SOC_WM8737 is not set
# CONFIG_SND_SOC_WM8741 is not set
# CONFIG_SND_SOC_WM8750 is not set
# CONFIG_SND_SOC_WM8753 is not set
# CONFIG_SND_SOC_WM8770 is not set
# CONFIG_SND_SOC_WM8776 is not set
# CONFIG_SND_SOC_WM8782 is not set
# CONFIG_SND_SOC_WM8804_I2C is not set
# CONFIG_SND_SOC_WM8804_SPI is not set
# CONFIG_SND_SOC_WM8903 is not set
# CONFIG_SND_SOC_WM8904 is not set
# CONFIG_SND_SOC_WM8960 is not set
# CONFIG_SND_SOC_WM8962 is not set
# CONFIG_SND_SOC_WM8974 is not set
# CONFIG_SND_SOC_WM8978 is not set
# CONFIG_SND_SOC_WM8985 is not set
# CONFIG_SND_SOC_ZX_AUD96P22 is not set
# CONFIG_SND_SOC_MAX9759 is not set
# CONFIG_SND_SOC_MT6351 is not set
# CONFIG_SND_SOC_MT6358 is not set
# CONFIG_SND_SOC_MT6660 is not set
# CONFIG_SND_SOC_NAU8540 is not set
# CONFIG_SND_SOC_NAU8810 is not set
# CONFIG_SND_SOC_NAU8822 is not set
CONFIG_SND_SOC_NAU8824=m
CONFIG_SND_SOC_NAU8825=m
# CONFIG_SND_SOC_TPA6130A2 is not set
# end of CODEC drivers

# CONFIG_SND_SIMPLE_CARD is not set
CONFIG_SND_X86=y
CONFIG_HDMI_LPE_AUDIO=m
CONFIG_SND_SYNTH_EMUX=m
# CONFIG_SND_XEN_FRONTEND is not set
CONFIG_AC97_BUS=m

#
# HID support
#
CONFIG_HID=y
CONFIG_HID_BATTERY_STRENGTH=y
CONFIG_HIDRAW=y
CONFIG_UHID=m
CONFIG_HID_GENERIC=y

#
# Special HID drivers
#
CONFIG_HID_A4TECH=y
# CONFIG_HID_ACCUTOUCH is not set
CONFIG_HID_ACRUX=m
# CONFIG_HID_ACRUX_FF is not set
CONFIG_HID_APPLE=y
CONFIG_HID_APPLEIR=m
# CONFIG_HID_ASUS is not set
CONFIG_HID_AUREAL=m
CONFIG_HID_BELKIN=y
# CONFIG_HID_BETOP_FF is not set
# CONFIG_HID_BIGBEN_FF is not set
CONFIG_HID_CHERRY=y
CONFIG_HID_CHICONY=y
# CONFIG_HID_CORSAIR is not set
# CONFIG_HID_COUGAR is not set
# CONFIG_HID_MACALLY is not set
CONFIG_HID_PRODIKEYS=m
# CONFIG_HID_CMEDIA is not set
# CONFIG_HID_CP2112 is not set
# CONFIG_HID_CREATIVE_SB0540 is not set
CONFIG_HID_CYPRESS=y
CONFIG_HID_DRAGONRISE=m
# CONFIG_DRAGONRISE_FF is not set
# CONFIG_HID_EMS_FF is not set
# CONFIG_HID_ELAN is not set
CONFIG_HID_ELECOM=m
# CONFIG_HID_ELO is not set
CONFIG_HID_EZKEY=y
# CONFIG_HID_GEMBIRD is not set
# CONFIG_HID_GFRM is not set
CONFIG_HID_HOLTEK=m
# CONFIG_HOLTEK_FF is not set
# CONFIG_HID_GT683R is not set
CONFIG_HID_KEYTOUCH=m
CONFIG_HID_KYE=m
CONFIG_HID_UCLOGIC=m
CONFIG_HID_WALTOP=m
# CONFIG_HID_VIEWSONIC is not set
CONFIG_HID_GYRATION=m
CONFIG_HID_ICADE=m
CONFIG_HID_ITE=y
# CONFIG_HID_JABRA is not set
CONFIG_HID_TWINHAN=m
CONFIG_HID_KENSINGTON=y
CONFIG_HID_LCPOWER=m
CONFIG_HID_LED=m
# CONFIG_HID_LENOVO is not set
CONFIG_HID_LOGITECH=y
CONFIG_HID_LOGITECH_DJ=m
CONFIG_HID_LOGITECH_HIDPP=m
# CONFIG_LOGITECH_FF is not set
# CONFIG_LOGIRUMBLEPAD2_FF is not set
# CONFIG_LOGIG940_FF is not set
# CONFIG_LOGIWHEELS_FF is not set
CONFIG_HID_MAGICMOUSE=y
# CONFIG_HID_MALTRON is not set
# CONFIG_HID_MAYFLASH is not set
CONFIG_HID_REDRAGON=y
CONFIG_HID_MICROSOFT=y
CONFIG_HID_MONTEREY=y
CONFIG_HID_MULTITOUCH=m
# CONFIG_HID_NTI is not set
CONFIG_HID_NTRIG=y
CONFIG_HID_ORTEK=m
CONFIG_HID_PANTHERLORD=m
# CONFIG_PANTHERLORD_FF is not set
# CONFIG_HID_PENMOUNT is not set
CONFIG_HID_PETALYNX=m
CONFIG_HID_PICOLCD=m
CONFIG_HID_PICOLCD_FB=y
CONFIG_HID_PICOLCD_BACKLIGHT=y
CONFIG_HID_PICOLCD_LCD=y
CONFIG_HID_PICOLCD_LEDS=y
CONFIG_HID_PICOLCD_CIR=y
CONFIG_HID_PLANTRONICS=y
CONFIG_HID_PRIMAX=m
# CONFIG_HID_RETRODE is not set
CONFIG_HID_ROCCAT=m
CONFIG_HID_SAITEK=m
CONFIG_HID_SAMSUNG=m
CONFIG_HID_SONY=m
# CONFIG_SONY_FF is not set
CONFIG_HID_SPEEDLINK=m
# CONFIG_HID_STEAM is not set
CONFIG_HID_STEELSERIES=m
CONFIG_HID_SUNPLUS=m
CONFIG_HID_RMI=m
CONFIG_HID_GREENASIA=m
# CONFIG_GREENASIA_FF is not set
CONFIG_HID_HYPERV_MOUSE=m
CONFIG_HID_SMARTJOYPLUS=m
# CONFIG_SMARTJOYPLUS_FF is not set
CONFIG_HID_TIVO=m
CONFIG_HID_TOPSEED=m
CONFIG_HID_THINGM=m
CONFIG_HID_THRUSTMASTER=m
# CONFIG_THRUSTMASTER_FF is not set
# CONFIG_HID_UDRAW_PS3 is not set
# CONFIG_HID_U2FZERO is not set
CONFIG_HID_WACOM=m
CONFIG_HID_WIIMOTE=m
# CONFIG_HID_XINMO is not set
CONFIG_HID_ZEROPLUS=m
# CONFIG_ZEROPLUS_FF is not set
CONFIG_HID_ZYDACRON=m
CONFIG_HID_SENSOR_HUB=m
CONFIG_HID_SENSOR_CUSTOM_SENSOR=m
CONFIG_HID_ALPS=m
# end of Special HID drivers

#
# USB HID support
#
CONFIG_USB_HID=y
CONFIG_HID_PID=y
CONFIG_USB_HIDDEV=y
# end of USB HID support

#
# I2C HID support
#
CONFIG_I2C_HID=m
# end of I2C HID support

#
# Intel ISH HID support
#
CONFIG_INTEL_ISH_HID=y
# CONFIG_INTEL_ISH_FIRMWARE_DOWNLOADER is not set
# end of Intel ISH HID support
# end of HID support

CONFIG_USB_OHCI_LITTLE_ENDIAN=y
CONFIG_USB_SUPPORT=y
CONFIG_USB_COMMON=y
# CONFIG_USB_LED_TRIG is not set
# CONFIG_USB_ULPI_BUS is not set
# CONFIG_USB_CONN_GPIO is not set
CONFIG_USB_ARCH_HAS_HCD=y
CONFIG_USB=y
CONFIG_USB_PCI=y
CONFIG_USB_ANNOUNCE_NEW_DEVICES=y

#
# Miscellaneous USB options
#
CONFIG_USB_DEFAULT_PERSIST=y
# CONFIG_USB_DYNAMIC_MINORS is not set
# CONFIG_USB_OTG is not set
# CONFIG_USB_OTG_WHITELIST is not set
# CONFIG_USB_OTG_BLACKLIST_HUB is not set
CONFIG_USB_LEDS_TRIGGER_USBPORT=m
CONFIG_USB_AUTOSUSPEND_DELAY=2
CONFIG_USB_MON=y

#
# USB Host Controller Drivers
#
# CONFIG_USB_C67X00_HCD is not set
CONFIG_USB_XHCI_HCD=y
# CONFIG_USB_XHCI_DBGCAP is not set
CONFIG_USB_XHCI_PCI=y
# CONFIG_USB_XHCI_PLATFORM is not set
CONFIG_USB_EHCI_HCD=y
CONFIG_USB_EHCI_ROOT_HUB_TT=y
CONFIG_USB_EHCI_TT_NEWSCHED=y
CONFIG_USB_EHCI_PCI=y
# CONFIG_USB_EHCI_FSL is not set
# CONFIG_USB_EHCI_HCD_PLATFORM is not set
# CONFIG_USB_OXU210HP_HCD is not set
# CONFIG_USB_ISP116X_HCD is not set
# CONFIG_USB_FOTG210_HCD is not set
# CONFIG_USB_MAX3421_HCD is not set
CONFIG_USB_OHCI_HCD=y
CONFIG_USB_OHCI_HCD_PCI=y
# CONFIG_USB_OHCI_HCD_PLATFORM is not set
CONFIG_USB_UHCI_HCD=y
# CONFIG_USB_U132_HCD is not set
# CONFIG_USB_SL811_HCD is not set
# CONFIG_USB_R8A66597_HCD is not set
# CONFIG_USB_HCD_BCMA is not set
# CONFIG_USB_HCD_SSB is not set
# CONFIG_USB_HCD_TEST_MODE is not set

#
# USB Device Class drivers
#
CONFIG_USB_ACM=m
CONFIG_USB_PRINTER=m
CONFIG_USB_WDM=m
CONFIG_USB_TMC=m

#
# NOTE: USB_STORAGE depends on SCSI but BLK_DEV_SD may
#

#
# also be needed; see USB_STORAGE Help for more info
#
CONFIG_USB_STORAGE=m
# CONFIG_USB_STORAGE_DEBUG is not set
CONFIG_USB_STORAGE_REALTEK=m
CONFIG_REALTEK_AUTOPM=y
CONFIG_USB_STORAGE_DATAFAB=m
CONFIG_USB_STORAGE_FREECOM=m
CONFIG_USB_STORAGE_ISD200=m
CONFIG_USB_STORAGE_USBAT=m
CONFIG_USB_STORAGE_SDDR09=m
CONFIG_USB_STORAGE_SDDR55=m
CONFIG_USB_STORAGE_JUMPSHOT=m
CONFIG_USB_STORAGE_ALAUDA=m
CONFIG_USB_STORAGE_ONETOUCH=m
CONFIG_USB_STORAGE_KARMA=m
CONFIG_USB_STORAGE_CYPRESS_ATACB=m
CONFIG_USB_STORAGE_ENE_UB6250=m
CONFIG_USB_UAS=m

#
# USB Imaging devices
#
CONFIG_USB_MDC800=m
CONFIG_USB_MICROTEK=m
CONFIG_USBIP_CORE=m
# CONFIG_USBIP_VHCI_HCD is not set
# CONFIG_USBIP_HOST is not set
# CONFIG_USBIP_DEBUG is not set
# CONFIG_USB_CDNS3 is not set
# CONFIG_USB_MUSB_HDRC is not set
# CONFIG_USB_DWC3 is not set
# CONFIG_USB_DWC2 is not set
# CONFIG_USB_CHIPIDEA is not set
# CONFIG_USB_ISP1760 is not set

#
# USB port drivers
#
CONFIG_USB_USS720=m
CONFIG_USB_SERIAL=y
CONFIG_USB_SERIAL_CONSOLE=y
CONFIG_USB_SERIAL_GENERIC=y
# CONFIG_USB_SERIAL_SIMPLE is not set
CONFIG_USB_SERIAL_AIRCABLE=m
CONFIG_USB_SERIAL_ARK3116=m
CONFIG_USB_SERIAL_BELKIN=m
CONFIG_USB_SERIAL_CH341=m
CONFIG_USB_SERIAL_WHITEHEAT=m
CONFIG_USB_SERIAL_DIGI_ACCELEPORT=m
CONFIG_USB_SERIAL_CP210X=m
CONFIG_USB_SERIAL_CYPRESS_M8=m
CONFIG_USB_SERIAL_EMPEG=m
CONFIG_USB_SERIAL_FTDI_SIO=m
CONFIG_USB_SERIAL_VISOR=m
CONFIG_USB_SERIAL_IPAQ=m
CONFIG_USB_SERIAL_IR=m
CONFIG_USB_SERIAL_EDGEPORT=m
CONFIG_USB_SERIAL_EDGEPORT_TI=m
# CONFIG_USB_SERIAL_F81232 is not set
# CONFIG_USB_SERIAL_F8153X is not set
CONFIG_USB_SERIAL_GARMIN=m
CONFIG_USB_SERIAL_IPW=m
CONFIG_USB_SERIAL_IUU=m
CONFIG_USB_SERIAL_KEYSPAN_PDA=m
CONFIG_USB_SERIAL_KEYSPAN=m
CONFIG_USB_SERIAL_KLSI=m
CONFIG_USB_SERIAL_KOBIL_SCT=m
CONFIG_USB_SERIAL_MCT_U232=m
# CONFIG_USB_SERIAL_METRO is not set
CONFIG_USB_SERIAL_MOS7720=m
CONFIG_USB_SERIAL_MOS7715_PARPORT=y
CONFIG_USB_SERIAL_MOS7840=m
# CONFIG_USB_SERIAL_MXUPORT is not set
CONFIG_USB_SERIAL_NAVMAN=m
CONFIG_USB_SERIAL_PL2303=m
CONFIG_USB_SERIAL_OTI6858=m
CONFIG_USB_SERIAL_QCAUX=m
CONFIG_USB_SERIAL_QUALCOMM=m
CONFIG_USB_SERIAL_SPCP8X5=m
CONFIG_USB_SERIAL_SAFE=m
CONFIG_USB_SERIAL_SAFE_PADDED=y
CONFIG_USB_SERIAL_SIERRAWIRELESS=m
CONFIG_USB_SERIAL_SYMBOL=m
# CONFIG_USB_SERIAL_TI is not set
CONFIG_USB_SERIAL_CYBERJACK=m
CONFIG_USB_SERIAL_XIRCOM=m
CONFIG_USB_SERIAL_WWAN=m
CONFIG_USB_SERIAL_OPTION=m
CONFIG_USB_SERIAL_OMNINET=m
CONFIG_USB_SERIAL_OPTICON=m
CONFIG_USB_SERIAL_XSENS_MT=m
# CONFIG_USB_SERIAL_WISHBONE is not set
CONFIG_USB_SERIAL_SSU100=m
CONFIG_USB_SERIAL_QT2=m
# CONFIG_USB_SERIAL_UPD78F0730 is not set
CONFIG_USB_SERIAL_DEBUG=m

#
# USB Miscellaneous drivers
#
CONFIG_USB_EMI62=m
CONFIG_USB_EMI26=m
CONFIG_USB_ADUTUX=m
CONFIG_USB_SEVSEG=m
CONFIG_USB_LEGOTOWER=m
CONFIG_USB_LCD=m
# CONFIG_USB_CYPRESS_CY7C63 is not set
# CONFIG_USB_CYTHERM is not set
CONFIG_USB_IDMOUSE=m
CONFIG_USB_FTDI_ELAN=m
CONFIG_USB_APPLEDISPLAY=m
CONFIG_USB_SISUSBVGA=m
CONFIG_USB_SISUSBVGA_CON=y
CONFIG_USB_LD=m
# CONFIG_USB_TRANCEVIBRATOR is not set
CONFIG_USB_IOWARRIOR=m
# CONFIG_USB_TEST is not set
# CONFIG_USB_EHSET_TEST_FIXTURE is not set
CONFIG_USB_ISIGHTFW=m
# CONFIG_USB_YUREX is not set
CONFIG_USB_EZUSB_FX2=m
# CONFIG_USB_HUB_USB251XB is not set
CONFIG_USB_HSIC_USB3503=m
# CONFIG_USB_HSIC_USB4604 is not set
# CONFIG_USB_LINK_LAYER_TEST is not set
# CONFIG_USB_CHAOSKEY is not set
CONFIG_USB_ATM=m
CONFIG_USB_SPEEDTOUCH=m
CONFIG_USB_CXACRU=m
CONFIG_USB_UEAGLEATM=m
CONFIG_USB_XUSBATM=m

#
# USB Physical Layer drivers
#
# CONFIG_NOP_USB_XCEIV is not set
# CONFIG_USB_GPIO_VBUS is not set
# CONFIG_USB_ISP1301 is not set
# end of USB Physical Layer drivers

# CONFIG_USB_GADGET is not set
CONFIG_TYPEC=y
# CONFIG_TYPEC_TCPM is not set
CONFIG_TYPEC_UCSI=y
# CONFIG_UCSI_CCG is not set
CONFIG_UCSI_ACPI=y
# CONFIG_TYPEC_TPS6598X is not set

#
# USB Type-C Multiplexer/DeMultiplexer Switch support
#
# CONFIG_TYPEC_MUX_PI3USB30532 is not set
# end of USB Type-C Multiplexer/DeMultiplexer Switch support

#
# USB Type-C Alternate Mode drivers
#
# CONFIG_TYPEC_DP_ALTMODE is not set
# end of USB Type-C Alternate Mode drivers

# CONFIG_USB_ROLE_SWITCH is not set
CONFIG_MMC=m
CONFIG_MMC_BLOCK=m
CONFIG_MMC_BLOCK_MINORS=8
CONFIG_SDIO_UART=m
# CONFIG_MMC_TEST is not set

#
# MMC/SD/SDIO Host Controller Drivers
#
# CONFIG_MMC_DEBUG is not set
CONFIG_MMC_SDHCI=m
CONFIG_MMC_SDHCI_IO_ACCESSORS=y
CONFIG_MMC_SDHCI_PCI=m
CONFIG_MMC_RICOH_MMC=y
CONFIG_MMC_SDHCI_ACPI=m
CONFIG_MMC_SDHCI_PLTFM=m
# CONFIG_MMC_SDHCI_F_SDH30 is not set
# CONFIG_MMC_WBSD is not set
CONFIG_MMC_TIFM_SD=m
# CONFIG_MMC_SPI is not set
CONFIG_MMC_CB710=m
CONFIG_MMC_VIA_SDMMC=m
CONFIG_MMC_VUB300=m
CONFIG_MMC_USHC=m
# CONFIG_MMC_USDHI6ROL0 is not set
CONFIG_MMC_CQHCI=m
# CONFIG_MMC_TOSHIBA_PCI is not set
# CONFIG_MMC_MTK is not set
# CONFIG_MMC_SDHCI_XENON is not set
CONFIG_MEMSTICK=m
# CONFIG_MEMSTICK_DEBUG is not set

#
# MemoryStick drivers
#
# CONFIG_MEMSTICK_UNSAFE_RESUME is not set
CONFIG_MSPRO_BLOCK=m
# CONFIG_MS_BLOCK is not set

#
# MemoryStick Host Controller Drivers
#
CONFIG_MEMSTICK_TIFM_MS=m
CONFIG_MEMSTICK_JMICRON_38X=m
CONFIG_MEMSTICK_R592=m
CONFIG_NEW_LEDS=y
CONFIG_LEDS_CLASS=y
# CONFIG_LEDS_CLASS_FLASH is not set
# CONFIG_LEDS_BRIGHTNESS_HW_CHANGED is not set

#
# LED drivers
#
# CONFIG_LEDS_APU is not set
CONFIG_LEDS_LM3530=m
# CONFIG_LEDS_LM3532 is not set
# CONFIG_LEDS_LM3642 is not set
# CONFIG_LEDS_PCA9532 is not set
# CONFIG_LEDS_GPIO is not set
CONFIG_LEDS_LP3944=m
# CONFIG_LEDS_LP3952 is not set
CONFIG_LEDS_LP55XX_COMMON=m
CONFIG_LEDS_LP5521=m
CONFIG_LEDS_LP5523=m
CONFIG_LEDS_LP5562=m
# CONFIG_LEDS_LP8501 is not set
CONFIG_LEDS_CLEVO_MAIL=m
# CONFIG_LEDS_PCA955X is not set
# CONFIG_LEDS_PCA963X is not set
# CONFIG_LEDS_DAC124S085 is not set
# CONFIG_LEDS_PWM is not set
# CONFIG_LEDS_BD2802 is not set
CONFIG_LEDS_INTEL_SS4200=m
# CONFIG_LEDS_TCA6507 is not set
# CONFIG_LEDS_TLC591XX is not set
# CONFIG_LEDS_LM355x is not set

#
# LED driver for blink(1) USB RGB LED is under Special HID drivers (HID_THINGM)
#
CONFIG_LEDS_BLINKM=m
# CONFIG_LEDS_MLXCPLD is not set
# CONFIG_LEDS_MLXREG is not set
# CONFIG_LEDS_USER is not set
# CONFIG_LEDS_NIC78BX is not set
# CONFIG_LEDS_TI_LMU_COMMON is not set

#
# LED Triggers
#
CONFIG_LEDS_TRIGGERS=y
CONFIG_LEDS_TRIGGER_TIMER=m
CONFIG_LEDS_TRIGGER_ONESHOT=m
# CONFIG_LEDS_TRIGGER_DISK is not set
# CONFIG_LEDS_TRIGGER_MTD is not set
CONFIG_LEDS_TRIGGER_HEARTBEAT=m
CONFIG_LEDS_TRIGGER_BACKLIGHT=m
# CONFIG_LEDS_TRIGGER_CPU is not set
# CONFIG_LEDS_TRIGGER_ACTIVITY is not set
CONFIG_LEDS_TRIGGER_GPIO=m
CONFIG_LEDS_TRIGGER_DEFAULT_ON=m

#
# iptables trigger is under Netfilter config (LED target)
#
CONFIG_LEDS_TRIGGER_TRANSIENT=m
CONFIG_LEDS_TRIGGER_CAMERA=m
# CONFIG_LEDS_TRIGGER_PANIC is not set
# CONFIG_LEDS_TRIGGER_NETDEV is not set
# CONFIG_LEDS_TRIGGER_PATTERN is not set
CONFIG_LEDS_TRIGGER_AUDIO=m
# CONFIG_ACCESSIBILITY is not set
CONFIG_INFINIBAND=m
CONFIG_INFINIBAND_USER_MAD=m
CONFIG_INFINIBAND_USER_ACCESS=m
# CONFIG_INFINIBAND_EXP_LEGACY_VERBS_NEW_UAPI is not set
CONFIG_INFINIBAND_USER_MEM=y
CONFIG_INFINIBAND_ON_DEMAND_PAGING=y
CONFIG_INFINIBAND_ADDR_TRANS=y
CONFIG_INFINIBAND_ADDR_TRANS_CONFIGFS=y
# CONFIG_INFINIBAND_MTHCA is not set
# CONFIG_INFINIBAND_CXGB4 is not set
# CONFIG_INFINIBAND_EFA is not set
# CONFIG_INFINIBAND_I40IW is not set
# CONFIG_MLX4_INFINIBAND is not set
# CONFIG_INFINIBAND_OCRDMA is not set
# CONFIG_INFINIBAND_VMWARE_PVRDMA is not set
# CONFIG_INFINIBAND_USNIC is not set
# CONFIG_INFINIBAND_BNXT_RE is not set
# CONFIG_INFINIBAND_QEDR is not set
# CONFIG_INFINIBAND_RDMAVT is not set
CONFIG_RDMA_RXE=m
CONFIG_RDMA_SIW=m
CONFIG_INFINIBAND_IPOIB=m
# CONFIG_INFINIBAND_IPOIB_CM is not set
CONFIG_INFINIBAND_IPOIB_DEBUG=y
# CONFIG_INFINIBAND_IPOIB_DEBUG_DATA is not set
CONFIG_INFINIBAND_SRP=m
CONFIG_INFINIBAND_SRPT=m
# CONFIG_INFINIBAND_ISER is not set
# CONFIG_INFINIBAND_ISERT is not set
# CONFIG_INFINIBAND_OPA_VNIC is not set
CONFIG_EDAC_ATOMIC_SCRUB=y
CONFIG_EDAC_SUPPORT=y
CONFIG_EDAC=y
CONFIG_EDAC_LEGACY_SYSFS=y
# CONFIG_EDAC_DEBUG is not set
CONFIG_EDAC_DECODE_MCE=m
CONFIG_EDAC_GHES=y
CONFIG_EDAC_AMD64=m
# CONFIG_EDAC_AMD64_ERROR_INJECTION is not set
CONFIG_EDAC_E752X=m
CONFIG_EDAC_I82975X=m
CONFIG_EDAC_I3000=m
CONFIG_EDAC_I3200=m
CONFIG_EDAC_IE31200=m
CONFIG_EDAC_X38=m
CONFIG_EDAC_I5400=m
CONFIG_EDAC_I7CORE=m
CONFIG_EDAC_I5000=m
CONFIG_EDAC_I5100=m
CONFIG_EDAC_I7300=m
CONFIG_EDAC_SBRIDGE=m
CONFIG_EDAC_SKX=m
# CONFIG_EDAC_I10NM is not set
CONFIG_EDAC_PND2=m
CONFIG_RTC_LIB=y
CONFIG_RTC_MC146818_LIB=y
CONFIG_RTC_CLASS=y
CONFIG_RTC_HCTOSYS=y
CONFIG_RTC_HCTOSYS_DEVICE="rtc0"
# CONFIG_RTC_SYSTOHC is not set
# CONFIG_RTC_DEBUG is not set
CONFIG_RTC_NVMEM=y

#
# RTC interfaces
#
CONFIG_RTC_INTF_SYSFS=y
CONFIG_RTC_INTF_PROC=y
CONFIG_RTC_INTF_DEV=y
# CONFIG_RTC_INTF_DEV_UIE_EMUL is not set
# CONFIG_RTC_DRV_TEST is not set

#
# I2C RTC drivers
#
# CONFIG_RTC_DRV_ABB5ZES3 is not set
# CONFIG_RTC_DRV_ABEOZ9 is not set
# CONFIG_RTC_DRV_ABX80X is not set
CONFIG_RTC_DRV_DS1307=m
# CONFIG_RTC_DRV_DS1307_CENTURY is not set
CONFIG_RTC_DRV_DS1374=m
# CONFIG_RTC_DRV_DS1374_WDT is not set
CONFIG_RTC_DRV_DS1672=m
CONFIG_RTC_DRV_MAX6900=m
CONFIG_RTC_DRV_RS5C372=m
CONFIG_RTC_DRV_ISL1208=m
CONFIG_RTC_DRV_ISL12022=m
CONFIG_RTC_DRV_X1205=m
CONFIG_RTC_DRV_PCF8523=m
# CONFIG_RTC_DRV_PCF85063 is not set
# CONFIG_RTC_DRV_PCF85363 is not set
CONFIG_RTC_DRV_PCF8563=m
CONFIG_RTC_DRV_PCF8583=m
CONFIG_RTC_DRV_M41T80=m
CONFIG_RTC_DRV_M41T80_WDT=y
CONFIG_RTC_DRV_BQ32K=m
# CONFIG_RTC_DRV_S35390A is not set
CONFIG_RTC_DRV_FM3130=m
# CONFIG_RTC_DRV_RX8010 is not set
CONFIG_RTC_DRV_RX8581=m
CONFIG_RTC_DRV_RX8025=m
CONFIG_RTC_DRV_EM3027=m
# CONFIG_RTC_DRV_RV3028 is not set
# CONFIG_RTC_DRV_RV8803 is not set
# CONFIG_RTC_DRV_SD3078 is not set

#
# SPI RTC drivers
#
# CONFIG_RTC_DRV_M41T93 is not set
# CONFIG_RTC_DRV_M41T94 is not set
# CONFIG_RTC_DRV_DS1302 is not set
# CONFIG_RTC_DRV_DS1305 is not set
# CONFIG_RTC_DRV_DS1343 is not set
# CONFIG_RTC_DRV_DS1347 is not set
# CONFIG_RTC_DRV_DS1390 is not set
# CONFIG_RTC_DRV_MAX6916 is not set
# CONFIG_RTC_DRV_R9701 is not set
CONFIG_RTC_DRV_RX4581=m
# CONFIG_RTC_DRV_RX6110 is not set
# CONFIG_RTC_DRV_RS5C348 is not set
# CONFIG_RTC_DRV_MAX6902 is not set
# CONFIG_RTC_DRV_PCF2123 is not set
# CONFIG_RTC_DRV_MCP795 is not set
CONFIG_RTC_I2C_AND_SPI=y

#
# SPI and I2C RTC drivers
#
CONFIG_RTC_DRV_DS3232=m
CONFIG_RTC_DRV_DS3232_HWMON=y
# CONFIG_RTC_DRV_PCF2127 is not set
CONFIG_RTC_DRV_RV3029C2=m
CONFIG_RTC_DRV_RV3029_HWMON=y

#
# Platform RTC drivers
#
CONFIG_RTC_DRV_CMOS=y
CONFIG_RTC_DRV_DS1286=m
CONFIG_RTC_DRV_DS1511=m
CONFIG_RTC_DRV_DS1553=m
# CONFIG_RTC_DRV_DS1685_FAMILY is not set
CONFIG_RTC_DRV_DS1742=m
CONFIG_RTC_DRV_DS2404=m
CONFIG_RTC_DRV_STK17TA8=m
# CONFIG_RTC_DRV_M48T86 is not set
CONFIG_RTC_DRV_M48T35=m
CONFIG_RTC_DRV_M48T59=m
CONFIG_RTC_DRV_MSM6242=m
CONFIG_RTC_DRV_BQ4802=m
CONFIG_RTC_DRV_RP5C01=m
CONFIG_RTC_DRV_V3020=m

#
# on-CPU RTC drivers
#
# CONFIG_RTC_DRV_FTRTC010 is not set

#
# HID Sensor RTC drivers
#
# CONFIG_RTC_DRV_HID_SENSOR_TIME is not set
CONFIG_DMADEVICES=y
# CONFIG_DMADEVICES_DEBUG is not set

#
# DMA Devices
#
CONFIG_DMA_ENGINE=y
CONFIG_DMA_VIRTUAL_CHANNELS=y
CONFIG_DMA_ACPI=y
# CONFIG_ALTERA_MSGDMA is not set
# CONFIG_INTEL_IDMA64 is not set
# CONFIG_INTEL_IDXD is not set
CONFIG_INTEL_IOATDMA=m
# CONFIG_PLX_DMA is not set
# CONFIG_QCOM_HIDMA_MGMT is not set
# CONFIG_QCOM_HIDMA is not set
CONFIG_DW_DMAC_CORE=y
CONFIG_DW_DMAC=m
CONFIG_DW_DMAC_PCI=y
# CONFIG_DW_EDMA is not set
# CONFIG_DW_EDMA_PCIE is not set
CONFIG_HSU_DMA=y
# CONFIG_SF_PDMA is not set

#
# DMA Clients
#
CONFIG_ASYNC_TX_DMA=y
# CONFIG_DMATEST is not set
CONFIG_DMA_ENGINE_RAID=y

#
# DMABUF options
#
CONFIG_SYNC_FILE=y
CONFIG_SW_SYNC=y
CONFIG_UDMABUF=y
# CONFIG_DMABUF_SELFTESTS is not set
# CONFIG_DMABUF_HEAPS is not set
# end of DMABUF options

CONFIG_DCA=m
CONFIG_AUXDISPLAY=y
# CONFIG_HD44780 is not set
CONFIG_KS0108=m
CONFIG_KS0108_PORT=0x378
CONFIG_KS0108_DELAY=2
CONFIG_CFAG12864B=m
CONFIG_CFAG12864B_RATE=20
# CONFIG_IMG_ASCII_LCD is not set
# CONFIG_PARPORT_PANEL is not set
# CONFIG_CHARLCD_BL_OFF is not set
# CONFIG_CHARLCD_BL_ON is not set
CONFIG_CHARLCD_BL_FLASH=y
# CONFIG_PANEL is not set
CONFIG_UIO=m
CONFIG_UIO_CIF=m
CONFIG_UIO_PDRV_GENIRQ=m
# CONFIG_UIO_DMEM_GENIRQ is not set
CONFIG_UIO_AEC=m
CONFIG_UIO_SERCOS3=m
CONFIG_UIO_PCI_GENERIC=m
# CONFIG_UIO_NETX is not set
# CONFIG_UIO_PRUSS is not set
# CONFIG_UIO_MF624 is not set
CONFIG_UIO_HV_GENERIC=m
CONFIG_VFIO_IOMMU_TYPE1=m
CONFIG_VFIO_VIRQFD=m
CONFIG_VFIO=m
CONFIG_VFIO_NOIOMMU=y
CONFIG_VFIO_PCI=m
# CONFIG_VFIO_PCI_VGA is not set
CONFIG_VFIO_PCI_MMAP=y
CONFIG_VFIO_PCI_INTX=y
# CONFIG_VFIO_PCI_IGD is not set
CONFIG_VFIO_MDEV=m
CONFIG_VFIO_MDEV_DEVICE=m
CONFIG_IRQ_BYPASS_MANAGER=y
# CONFIG_VIRT_DRIVERS is not set
CONFIG_VIRTIO=y
CONFIG_VIRTIO_MENU=y
CONFIG_VIRTIO_PCI=y
CONFIG_VIRTIO_PCI_LEGACY=y
# CONFIG_VIRTIO_PMEM is not set
CONFIG_VIRTIO_BALLOON=y
CONFIG_VIRTIO_INPUT=m
# CONFIG_VIRTIO_MMIO is not set

#
# Microsoft Hyper-V guest support
#
CONFIG_HYPERV=m
CONFIG_HYPERV_TIMER=y
CONFIG_HYPERV_UTILS=m
CONFIG_HYPERV_BALLOON=m
# end of Microsoft Hyper-V guest support

#
# Xen driver support
#
CONFIG_XEN_BALLOON=y
# CONFIG_XEN_BALLOON_MEMORY_HOTPLUG is not set
CONFIG_XEN_SCRUB_PAGES_DEFAULT=y
CONFIG_XEN_DEV_EVTCHN=m
# CONFIG_XEN_BACKEND is not set
CONFIG_XENFS=m
CONFIG_XEN_COMPAT_XENFS=y
CONFIG_XEN_SYS_HYPERVISOR=y
CONFIG_XEN_XENBUS_FRONTEND=y
# CONFIG_XEN_GNTDEV is not set
# CONFIG_XEN_GRANT_DEV_ALLOC is not set
# CONFIG_XEN_GRANT_DMA_ALLOC is not set
CONFIG_SWIOTLB_XEN=y
# CONFIG_XEN_PVCALLS_FRONTEND is not set
CONFIG_XEN_PRIVCMD=m
CONFIG_XEN_HAVE_PVMMU=y
CONFIG_XEN_EFI=y
CONFIG_XEN_AUTO_XLATE=y
CONFIG_XEN_ACPI=y
CONFIG_XEN_HAVE_VPMU=y
# end of Xen driver support

# CONFIG_GREYBUS is not set
CONFIG_STAGING=y
# CONFIG_PRISM2_USB is not set
# CONFIG_COMEDI is not set
# CONFIG_RTL8192U is not set
CONFIG_RTLLIB=m
CONFIG_RTLLIB_CRYPTO_CCMP=m
CONFIG_RTLLIB_CRYPTO_TKIP=m
CONFIG_RTLLIB_CRYPTO_WEP=m
CONFIG_RTL8192E=m
# CONFIG_RTL8723BS is not set
CONFIG_R8712U=m
# CONFIG_R8188EU is not set
# CONFIG_RTS5208 is not set
# CONFIG_VT6655 is not set
# CONFIG_VT6656 is not set

#
# IIO staging drivers
#

#
# Accelerometers
#
# CONFIG_ADIS16203 is not set
# CONFIG_ADIS16240 is not set
# end of Accelerometers

#
# Analog to digital converters
#
# CONFIG_AD7816 is not set
# CONFIG_AD7192 is not set
# CONFIG_AD7280 is not set
# end of Analog to digital converters

#
# Analog digital bi-direction converters
#
# CONFIG_ADT7316 is not set
# end of Analog digital bi-direction converters

#
# Capacitance to digital converters
#
# CONFIG_AD7150 is not set
# CONFIG_AD7746 is not set
# end of Capacitance to digital converters

#
# Direct Digital Synthesis
#
# CONFIG_AD9832 is not set
# CONFIG_AD9834 is not set
# end of Direct Digital Synthesis

#
# Network Analyzer, Impedance Converters
#
# CONFIG_AD5933 is not set
# end of Network Analyzer, Impedance Converters

#
# Active energy metering IC
#
# CONFIG_ADE7854 is not set
# end of Active energy metering IC

#
# Resolver to digital converters
#
# CONFIG_AD2S1210 is not set
# end of Resolver to digital converters
# end of IIO staging drivers

# CONFIG_FB_SM750 is not set

#
# Speakup console speech
#
# CONFIG_SPEAKUP is not set
# end of Speakup console speech

# CONFIG_STAGING_MEDIA is not set

#
# Android
#
# CONFIG_ASHMEM is not set
CONFIG_ION=y
CONFIG_ION_SYSTEM_HEAP=y
# CONFIG_ION_CMA_HEAP is not set
# end of Android

# CONFIG_LTE_GDM724X is not set
CONFIG_FIREWIRE_SERIAL=m
CONFIG_FWTTY_MAX_TOTAL_PORTS=64
CONFIG_FWTTY_MAX_CARD_PORTS=32
# CONFIG_GS_FPGABOOT is not set
# CONFIG_UNISYSSPAR is not set
# CONFIG_FB_TFT is not set
# CONFIG_WILC1000_SDIO is not set
# CONFIG_WILC1000_SPI is not set
# CONFIG_MOST is not set
# CONFIG_KS7010 is not set
# CONFIG_PI433 is not set

#
# Gasket devices
#
# CONFIG_STAGING_GASKET_FRAMEWORK is not set
# end of Gasket devices

# CONFIG_FIELDBUS_DEV is not set
# CONFIG_KPC2000 is not set
CONFIG_USB_WUSB=m
CONFIG_USB_WUSB_CBAF=m
# CONFIG_USB_WUSB_CBAF_DEBUG is not set
# CONFIG_USB_WHCI_HCD is not set
CONFIG_USB_HWA_HCD=m
CONFIG_UWB=m
CONFIG_UWB_HWA=m
CONFIG_UWB_WHCI=m
CONFIG_UWB_I1480U=m
# CONFIG_STAGING_EXFAT_FS is not set
CONFIG_QLGE=m
# CONFIG_NET_VENDOR_HP is not set
# CONFIG_WFX is not set
CONFIG_X86_PLATFORM_DEVICES=y
CONFIG_ACER_WMI=m
# CONFIG_ACER_WIRELESS is not set
CONFIG_ACERHDF=m
# CONFIG_ALIENWARE_WMI is not set
CONFIG_ASUS_LAPTOP=m
CONFIG_DCDBAS=m
CONFIG_DELL_SMBIOS=m
CONFIG_DELL_SMBIOS_WMI=y
CONFIG_DELL_SMBIOS_SMM=y
CONFIG_DELL_LAPTOP=m
CONFIG_DELL_WMI=m
CONFIG_DELL_WMI_DESCRIPTOR=m
CONFIG_DELL_WMI_AIO=m
# CONFIG_DELL_WMI_LED is not set
CONFIG_DELL_SMO8800=m
CONFIG_DELL_RBTN=m
CONFIG_DELL_RBU=m
CONFIG_FUJITSU_LAPTOP=m
CONFIG_FUJITSU_TABLET=m
CONFIG_AMILO_RFKILL=m
# CONFIG_GPD_POCKET_FAN is not set
CONFIG_HP_ACCEL=m
CONFIG_HP_WIRELESS=m
CONFIG_HP_WMI=m
# CONFIG_LG_LAPTOP is not set
CONFIG_MSI_LAPTOP=m
CONFIG_PANASONIC_LAPTOP=m
CONFIG_COMPAL_LAPTOP=m
CONFIG_SONY_LAPTOP=m
CONFIG_SONYPI_COMPAT=y
CONFIG_IDEAPAD_LAPTOP=m
# CONFIG_SURFACE3_WMI is not set
CONFIG_THINKPAD_ACPI=m
CONFIG_THINKPAD_ACPI_ALSA_SUPPORT=y
# CONFIG_THINKPAD_ACPI_DEBUGFACILITIES is not set
# CONFIG_THINKPAD_ACPI_DEBUG is not set
# CONFIG_THINKPAD_ACPI_UNSAFE_LEDS is not set
CONFIG_THINKPAD_ACPI_VIDEO=y
CONFIG_THINKPAD_ACPI_HOTKEY_POLL=y
CONFIG_SENSORS_HDAPS=m
# CONFIG_INTEL_MENLOW is not set
CONFIG_EEEPC_LAPTOP=m
CONFIG_ASUS_WMI=m
CONFIG_ASUS_NB_WMI=m
CONFIG_EEEPC_WMI=m
# CONFIG_ASUS_WIRELESS is not set
CONFIG_ACPI_WMI=m
CONFIG_WMI_BMOF=m
CONFIG_INTEL_WMI_THUNDERBOLT=m
# CONFIG_XIAOMI_WMI is not set
CONFIG_MSI_WMI=m
# CONFIG_PEAQ_WMI is not set
CONFIG_TOPSTAR_LAPTOP=m
CONFIG_ACPI_TOSHIBA=m
CONFIG_TOSHIBA_BT_RFKILL=m
# CONFIG_TOSHIBA_HAPS is not set
# CONFIG_TOSHIBA_WMI is not set
CONFIG_ACPI_CMPC=m
# CONFIG_INTEL_INT0002_VGPIO is not set
CONFIG_INTEL_HID_EVENT=m
CONFIG_INTEL_VBTN=m
CONFIG_INTEL_IPS=m
CONFIG_INTEL_PMC_CORE=m
# CONFIG_IBM_RTL is not set
CONFIG_SAMSUNG_LAPTOP=m
CONFIG_MXM_WMI=m
CONFIG_INTEL_OAKTRAIL=m
CONFIG_SAMSUNG_Q10=m
CONFIG_APPLE_GMUX=m
# CONFIG_INTEL_RST is not set
# CONFIG_INTEL_SMARTCONNECT is not set
# CONFIG_INTEL_PMC_IPC is not set
# CONFIG_SURFACE_PRO3_BUTTON is not set
# CONFIG_INTEL_PUNIT_IPC is not set
# CONFIG_MLX_PLATFORM is not set
# CONFIG_INTEL_TURBO_MAX_3 is not set
# CONFIG_I2C_MULTI_INSTANTIATE is not set
# CONFIG_INTEL_ATOMISP2_PM is not set
# CONFIG_HUAWEI_WMI is not set
# CONFIG_PCENGINES_APU2 is not set
# CONFIG_INTEL_UNCORE_FREQ_CONTROL is not set

#
# Intel Speed Select Technology interface support
#
# CONFIG_INTEL_SPEED_SELECT_INTERFACE is not set
# end of Intel Speed Select Technology interface support

# CONFIG_SYSTEM76_ACPI is not set
CONFIG_PMC_ATOM=y
# CONFIG_MFD_CROS_EC is not set
# CONFIG_CHROME_PLATFORMS is not set
# CONFIG_MELLANOX_PLATFORM is not set
CONFIG_CLKDEV_LOOKUP=y
CONFIG_HAVE_CLK_PREPARE=y
CONFIG_COMMON_CLK=y

#
# Common Clock Framework
#
# CONFIG_COMMON_CLK_MAX9485 is not set
# CONFIG_COMMON_CLK_SI5341 is not set
# CONFIG_COMMON_CLK_SI5351 is not set
# CONFIG_COMMON_CLK_SI544 is not set
# CONFIG_COMMON_CLK_CDCE706 is not set
# CONFIG_COMMON_CLK_CS2000_CP is not set
# CONFIG_COMMON_CLK_PWM is not set
# end of Common Clock Framework

# CONFIG_HWSPINLOCK is not set

#
# Clock Source drivers
#
CONFIG_CLKEVT_I8253=y
CONFIG_I8253_LOCK=y
CONFIG_CLKBLD_I8253=y
# end of Clock Source drivers

CONFIG_MAILBOX=y
CONFIG_PCC=y
# CONFIG_ALTERA_MBOX is not set
CONFIG_IOMMU_IOVA=y
CONFIG_IOMMU_API=y
CONFIG_IOMMU_SUPPORT=y

#
# Generic IOMMU Pagetable Support
#
# end of Generic IOMMU Pagetable Support

# CONFIG_IOMMU_DEBUGFS is not set
# CONFIG_IOMMU_DEFAULT_PASSTHROUGH is not set
CONFIG_IOMMU_DMA=y
CONFIG_AMD_IOMMU=y
CONFIG_AMD_IOMMU_V2=m
CONFIG_DMAR_TABLE=y
CONFIG_INTEL_IOMMU=y
# CONFIG_INTEL_IOMMU_SVM is not set
# CONFIG_INTEL_IOMMU_DEFAULT_ON is not set
CONFIG_INTEL_IOMMU_FLOPPY_WA=y
# CONFIG_INTEL_IOMMU_SCALABLE_MODE_DEFAULT_ON is not set
CONFIG_IRQ_REMAP=y
CONFIG_HYPERV_IOMMU=y

#
# Remoteproc drivers
#
# CONFIG_REMOTEPROC is not set
# end of Remoteproc drivers

#
# Rpmsg drivers
#
# CONFIG_RPMSG_QCOM_GLINK_RPM is not set
# CONFIG_RPMSG_VIRTIO is not set
# end of Rpmsg drivers

# CONFIG_SOUNDWIRE is not set

#
# SOC (System On Chip) specific Drivers
#

#
# Amlogic SoC drivers
#
# end of Amlogic SoC drivers

#
# Aspeed SoC drivers
#
# end of Aspeed SoC drivers

#
# Broadcom SoC drivers
#
# end of Broadcom SoC drivers

#
# NXP/Freescale QorIQ SoC drivers
#
# end of NXP/Freescale QorIQ SoC drivers

#
# i.MX SoC drivers
#
# end of i.MX SoC drivers

#
# Qualcomm SoC drivers
#
# end of Qualcomm SoC drivers

# CONFIG_SOC_TI is not set

#
# Xilinx SoC drivers
#
# CONFIG_XILINX_VCU is not set
# end of Xilinx SoC drivers
# end of SOC (System On Chip) specific Drivers

CONFIG_PM_DEVFREQ=y

#
# DEVFREQ Governors
#
CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND=m
# CONFIG_DEVFREQ_GOV_PERFORMANCE is not set
# CONFIG_DEVFREQ_GOV_POWERSAVE is not set
# CONFIG_DEVFREQ_GOV_USERSPACE is not set
# CONFIG_DEVFREQ_GOV_PASSIVE is not set

#
# DEVFREQ Drivers
#
# CONFIG_PM_DEVFREQ_EVENT is not set
# CONFIG_EXTCON is not set
# CONFIG_MEMORY is not set
CONFIG_IIO=y
CONFIG_IIO_BUFFER=y
CONFIG_IIO_BUFFER_CB=y
# CONFIG_IIO_BUFFER_HW_CONSUMER is not set
CONFIG_IIO_KFIFO_BUF=y
CONFIG_IIO_TRIGGERED_BUFFER=m
# CONFIG_IIO_CONFIGFS is not set
CONFIG_IIO_TRIGGER=y
CONFIG_IIO_CONSUMERS_PER_TRIGGER=2
# CONFIG_IIO_SW_DEVICE is not set
# CONFIG_IIO_SW_TRIGGER is not set

#
# Accelerometers
#
# CONFIG_ADIS16201 is not set
# CONFIG_ADIS16209 is not set
# CONFIG_ADXL345_I2C is not set
# CONFIG_ADXL345_SPI is not set
# CONFIG_ADXL372_SPI is not set
# CONFIG_ADXL372_I2C is not set
# CONFIG_BMA180 is not set
# CONFIG_BMA220 is not set
# CONFIG_BMA400 is not set
# CONFIG_BMC150_ACCEL is not set
# CONFIG_DA280 is not set
# CONFIG_DA311 is not set
# CONFIG_DMARD09 is not set
# CONFIG_DMARD10 is not set
CONFIG_HID_SENSOR_ACCEL_3D=m
# CONFIG_IIO_ST_ACCEL_3AXIS is not set
# CONFIG_KXSD9 is not set
# CONFIG_KXCJK1013 is not set
# CONFIG_MC3230 is not set
# CONFIG_MMA7455_I2C is not set
# CONFIG_MMA7455_SPI is not set
# CONFIG_MMA7660 is not set
# CONFIG_MMA8452 is not set
# CONFIG_MMA9551 is not set
# CONFIG_MMA9553 is not set
# CONFIG_MXC4005 is not set
# CONFIG_MXC6255 is not set
# CONFIG_SCA3000 is not set
# CONFIG_STK8312 is not set
# CONFIG_STK8BA50 is not set
# end of Accelerometers

#
# Analog to digital converters
#
# CONFIG_AD7091R5 is not set
# CONFIG_AD7124 is not set
# CONFIG_AD7266 is not set
# CONFIG_AD7291 is not set
# CONFIG_AD7292 is not set
# CONFIG_AD7298 is not set
# CONFIG_AD7476 is not set
# CONFIG_AD7606_IFACE_PARALLEL is not set
# CONFIG_AD7606_IFACE_SPI is not set
# CONFIG_AD7766 is not set
# CONFIG_AD7768_1 is not set
# CONFIG_AD7780 is not set
# CONFIG_AD7791 is not set
# CONFIG_AD7793 is not set
# CONFIG_AD7887 is not set
# CONFIG_AD7923 is not set
# CONFIG_AD7949 is not set
# CONFIG_AD799X is not set
# CONFIG_HI8435 is not set
# CONFIG_HX711 is not set
# CONFIG_INA2XX_ADC is not set
# CONFIG_LTC2471 is not set
# CONFIG_LTC2485 is not set
# CONFIG_LTC2496 is not set
# CONFIG_LTC2497 is not set
# CONFIG_MAX1027 is not set
# CONFIG_MAX11100 is not set
# CONFIG_MAX1118 is not set
# CONFIG_MAX1363 is not set
# CONFIG_MAX9611 is not set
# CONFIG_MCP320X is not set
# CONFIG_MCP3422 is not set
# CONFIG_MCP3911 is not set
# CONFIG_NAU7802 is not set
# CONFIG_TI_ADC081C is not set
# CONFIG_TI_ADC0832 is not set
# CONFIG_TI_ADC084S021 is not set
# CONFIG_TI_ADC12138 is not set
# CONFIG_TI_ADC108S102 is not set
# CONFIG_TI_ADC128S052 is not set
# CONFIG_TI_ADC161S626 is not set
# CONFIG_TI_ADS1015 is not set
# CONFIG_TI_ADS7950 is not set
# CONFIG_TI_TLC4541 is not set
# CONFIG_VIPERBOARD_ADC is not set
# CONFIG_XILINX_XADC is not set
# end of Analog to digital converters

#
# Analog Front Ends
#
# end of Analog Front Ends

#
# Amplifiers
#
# CONFIG_AD8366 is not set
# end of Amplifiers

#
# Chemical Sensors
#
# CONFIG_ATLAS_PH_SENSOR is not set
# CONFIG_BME680 is not set
# CONFIG_CCS811 is not set
# CONFIG_IAQCORE is not set
# CONFIG_SENSIRION_SGP30 is not set
# CONFIG_SPS30 is not set
# CONFIG_VZ89X is not set
# end of Chemical Sensors

#
# Hid Sensor IIO Common
#
CONFIG_HID_SENSOR_IIO_COMMON=m
CONFIG_HID_SENSOR_IIO_TRIGGER=m
# end of Hid Sensor IIO Common

#
# SSP Sensor Common
#
# CONFIG_IIO_SSP_SENSORHUB is not set
# end of SSP Sensor Common

#
# Digital to analog converters
#
# CONFIG_AD5064 is not set
# CONFIG_AD5360 is not set
# CONFIG_AD5380 is not set
# CONFIG_AD5421 is not set
# CONFIG_AD5446 is not set
# CONFIG_AD5449 is not set
# CONFIG_AD5592R is not set
# CONFIG_AD5593R is not set
# CONFIG_AD5504 is not set
# CONFIG_AD5624R_SPI is not set
# CONFIG_LTC1660 is not set
# CONFIG_LTC2632 is not set
# CONFIG_AD5686_SPI is not set
# CONFIG_AD5696_I2C is not set
# CONFIG_AD5755 is not set
# CONFIG_AD5758 is not set
# CONFIG_AD5761 is not set
# CONFIG_AD5764 is not set
# CONFIG_AD5791 is not set
# CONFIG_AD7303 is not set
# CONFIG_AD8801 is not set
# CONFIG_DS4424 is not set
# CONFIG_M62332 is not set
# CONFIG_MAX517 is not set
# CONFIG_MCP4725 is not set
# CONFIG_MCP4922 is not set
# CONFIG_TI_DAC082S085 is not set
# CONFIG_TI_DAC5571 is not set
# CONFIG_TI_DAC7311 is not set
# CONFIG_TI_DAC7612 is not set
# end of Digital to analog converters

#
# IIO dummy driver
#
# end of IIO dummy driver

#
# Frequency Synthesizers DDS/PLL
#

#
# Clock Generator/Distribution
#
# CONFIG_AD9523 is not set
# end of Clock Generator/Distribution

#
# Phase-Locked Loop (PLL) frequency synthesizers
#
# CONFIG_ADF4350 is not set
# CONFIG_ADF4371 is not set
# end of Phase-Locked Loop (PLL) frequency synthesizers
# end of Frequency Synthesizers DDS/PLL

#
# Digital gyroscope sensors
#
# CONFIG_ADIS16080 is not set
# CONFIG_ADIS16130 is not set
# CONFIG_ADIS16136 is not set
# CONFIG_ADIS16260 is not set
# CONFIG_ADXRS450 is not set
# CONFIG_BMG160 is not set
# CONFIG_FXAS21002C is not set
CONFIG_HID_SENSOR_GYRO_3D=m
# CONFIG_MPU3050_I2C is not set
# CONFIG_IIO_ST_GYRO_3AXIS is not set
# CONFIG_ITG3200 is not set
# end of Digital gyroscope sensors

#
# Health Sensors
#

#
# Heart Rate Monitors
#
# CONFIG_AFE4403 is not set
# CONFIG_AFE4404 is not set
# CONFIG_MAX30100 is not set
# CONFIG_MAX30102 is not set
# end of Heart Rate Monitors
# end of Health Sensors

#
# Humidity sensors
#
# CONFIG_AM2315 is not set
# CONFIG_DHT11 is not set
# CONFIG_HDC100X is not set
# CONFIG_HID_SENSOR_HUMIDITY is not set
# CONFIG_HTS221 is not set
# CONFIG_HTU21 is not set
# CONFIG_SI7005 is not set
# CONFIG_SI7020 is not set
# end of Humidity sensors

#
# Inertial measurement units
#
# CONFIG_ADIS16400 is not set
# CONFIG_ADIS16460 is not set
# CONFIG_ADIS16480 is not set
# CONFIG_BMI160_I2C is not set
# CONFIG_BMI160_SPI is not set
# CONFIG_FXOS8700_I2C is not set
# CONFIG_FXOS8700_SPI is not set
# CONFIG_KMX61 is not set
# CONFIG_INV_MPU6050_I2C is not set
# CONFIG_INV_MPU6050_SPI is not set
# CONFIG_IIO_ST_LSM6DSX is not set
# end of Inertial measurement units

#
# Light sensors
#
# CONFIG_ACPI_ALS is not set
# CONFIG_ADJD_S311 is not set
# CONFIG_ADUX1020 is not set
# CONFIG_AL3320A is not set
# CONFIG_APDS9300 is not set
# CONFIG_APDS9960 is not set
# CONFIG_BH1750 is not set
# CONFIG_BH1780 is not set
# CONFIG_CM32181 is not set
# CONFIG_CM3232 is not set
# CONFIG_CM3323 is not set
# CONFIG_CM36651 is not set
# CONFIG_GP2AP020A00F is not set
# CONFIG_SENSORS_ISL29018 is not set
# CONFIG_SENSORS_ISL29028 is not set
# CONFIG_ISL29125 is not set
CONFIG_HID_SENSOR_ALS=m
CONFIG_HID_SENSOR_PROX=m
# CONFIG_JSA1212 is not set
# CONFIG_RPR0521 is not set
# CONFIG_LTR501 is not set
# CONFIG_LV0104CS is not set
# CONFIG_MAX44000 is not set
# CONFIG_MAX44009 is not set
# CONFIG_NOA1305 is not set
# CONFIG_OPT3001 is not set
# CONFIG_PA12203001 is not set
# CONFIG_SI1133 is not set
# CONFIG_SI1145 is not set
# CONFIG_STK3310 is not set
# CONFIG_ST_UVIS25 is not set
# CONFIG_TCS3414 is not set
# CONFIG_TCS3472 is not set
# CONFIG_SENSORS_TSL2563 is not set
# CONFIG_TSL2583 is not set
# CONFIG_TSL2772 is not set
# CONFIG_TSL4531 is not set
# CONFIG_US5182D is not set
# CONFIG_VCNL4000 is not set
# CONFIG_VCNL4035 is not set
# CONFIG_VEML6030 is not set
# CONFIG_VEML6070 is not set
# CONFIG_VL6180 is not set
# CONFIG_ZOPT2201 is not set
# end of Light sensors

#
# Magnetometer sensors
#
# CONFIG_AK8975 is not set
# CONFIG_AK09911 is not set
# CONFIG_BMC150_MAGN_I2C is not set
# CONFIG_BMC150_MAGN_SPI is not set
# CONFIG_MAG3110 is not set
CONFIG_HID_SENSOR_MAGNETOMETER_3D=m
# CONFIG_MMC35240 is not set
# CONFIG_IIO_ST_MAGN_3AXIS is not set
# CONFIG_SENSORS_HMC5843_I2C is not set
# CONFIG_SENSORS_HMC5843_SPI is not set
# CONFIG_SENSORS_RM3100_I2C is not set
# CONFIG_SENSORS_RM3100_SPI is not set
# end of Magnetometer sensors

#
# Multiplexers
#
# end of Multiplexers

#
# Inclinometer sensors
#
CONFIG_HID_SENSOR_INCLINOMETER_3D=m
CONFIG_HID_SENSOR_DEVICE_ROTATION=m
# end of Inclinometer sensors

#
# Triggers - standalone
#
# CONFIG_IIO_INTERRUPT_TRIGGER is not set
# CONFIG_IIO_SYSFS_TRIGGER is not set
# end of Triggers - standalone

#
# Digital potentiometers
#
# CONFIG_AD5272 is not set
# CONFIG_DS1803 is not set
# CONFIG_MAX5432 is not set
# CONFIG_MAX5481 is not set
# CONFIG_MAX5487 is not set
# CONFIG_MCP4018 is not set
# CONFIG_MCP4131 is not set
# CONFIG_MCP4531 is not set
# CONFIG_MCP41010 is not set
# CONFIG_TPL0102 is not set
# end of Digital potentiometers

#
# Digital potentiostats
#
# CONFIG_LMP91000 is not set
# end of Digital potentiostats

#
# Pressure sensors
#
# CONFIG_ABP060MG is not set
# CONFIG_BMP280 is not set
# CONFIG_DLHL60D is not set
# CONFIG_DPS310 is not set
CONFIG_HID_SENSOR_PRESS=m
# CONFIG_HP03 is not set
# CONFIG_MPL115_I2C is not set
# CONFIG_MPL115_SPI is not set
# CONFIG_MPL3115 is not set
# CONFIG_MS5611 is not set
# CONFIG_MS5637 is not set
# CONFIG_IIO_ST_PRESS is not set
# CONFIG_T5403 is not set
# CONFIG_HP206C is not set
# CONFIG_ZPA2326 is not set
# end of Pressure sensors

#
# Lightning sensors
#
# CONFIG_AS3935 is not set
# end of Lightning sensors

#
# Proximity and distance sensors
#
# CONFIG_ISL29501 is not set
# CONFIG_LIDAR_LITE_V2 is not set
# CONFIG_MB1232 is not set
# CONFIG_PING is not set
# CONFIG_RFD77402 is not set
# CONFIG_SRF04 is not set
# CONFIG_SX9500 is not set
# CONFIG_SRF08 is not set
# CONFIG_VL53L0X_I2C is not set
# end of Proximity and distance sensors

#
# Resolver to digital converters
#
# CONFIG_AD2S90 is not set
# CONFIG_AD2S1200 is not set
# end of Resolver to digital converters

#
# Temperature sensors
#
# CONFIG_LTC2983 is not set
# CONFIG_MAXIM_THERMOCOUPLE is not set
# CONFIG_HID_SENSOR_TEMP is not set
# CONFIG_MLX90614 is not set
# CONFIG_MLX90632 is not set
# CONFIG_TMP006 is not set
# CONFIG_TMP007 is not set
# CONFIG_TSYS01 is not set
# CONFIG_TSYS02D is not set
# CONFIG_MAX31856 is not set
# end of Temperature sensors

CONFIG_NTB=m
# CONFIG_NTB_MSI is not set
CONFIG_NTB_AMD=m
# CONFIG_NTB_IDT is not set
# CONFIG_NTB_INTEL is not set
# CONFIG_NTB_SWITCHTEC is not set
# CONFIG_NTB_PINGPONG is not set
# CONFIG_NTB_TOOL is not set
CONFIG_NTB_PERF=m
CONFIG_NTB_TRANSPORT=m
# CONFIG_VME_BUS is not set
CONFIG_PWM=y
CONFIG_PWM_SYSFS=y
# CONFIG_PWM_LPSS_PCI is not set
# CONFIG_PWM_LPSS_PLATFORM is not set
# CONFIG_PWM_PCA9685 is not set

#
# IRQ chip support
#
# end of IRQ chip support

# CONFIG_IPACK_BUS is not set
# CONFIG_RESET_CONTROLLER is not set

#
# PHY Subsystem
#
CONFIG_GENERIC_PHY=y
# CONFIG_BCM_KONA_USB2_PHY is not set
# CONFIG_PHY_PXA_28NM_HSIC is not set
# CONFIG_PHY_PXA_28NM_USB2 is not set
# CONFIG_PHY_CPCAP_USB is not set
# CONFIG_PHY_INTEL_EMMC is not set
# end of PHY Subsystem

CONFIG_POWERCAP=y
CONFIG_INTEL_RAPL_CORE=m
CONFIG_INTEL_RAPL=m
# CONFIG_IDLE_INJECT is not set
# CONFIG_MCB is not set

#
# Performance monitor support
#
# end of Performance monitor support

CONFIG_RAS=y
# CONFIG_RAS_CEC is not set
# CONFIG_USB4 is not set

#
# Android
#
CONFIG_ANDROID=y
# CONFIG_ANDROID_BINDER_IPC is not set
# end of Android

CONFIG_LIBNVDIMM=m
CONFIG_BLK_DEV_PMEM=m
CONFIG_ND_BLK=m
CONFIG_ND_CLAIM=y
CONFIG_ND_BTT=m
CONFIG_BTT=y
CONFIG_ND_PFN=m
CONFIG_NVDIMM_PFN=y
CONFIG_NVDIMM_DAX=y
CONFIG_NVDIMM_KEYS=y
CONFIG_DAX_DRIVER=y
CONFIG_DAX=y
CONFIG_DEV_DAX=m
CONFIG_DEV_DAX_PMEM=m
CONFIG_DEV_DAX_KMEM=m
CONFIG_DEV_DAX_PMEM_COMPAT=m
CONFIG_NVMEM=y
CONFIG_NVMEM_SYSFS=y

#
# HW tracing support
#
# CONFIG_STM is not set
# CONFIG_INTEL_TH is not set
# end of HW tracing support

# CONFIG_FPGA is not set
# CONFIG_TEE is not set
CONFIG_PM_OPP=y
# CONFIG_UNISYS_VISORBUS is not set
# CONFIG_SIOX is not set
# CONFIG_SLIMBUS is not set
# CONFIG_INTERCONNECT is not set
# CONFIG_COUNTER is not set
# end of Device Drivers

#
# File systems
#
CONFIG_DCACHE_WORD_ACCESS=y
# CONFIG_VALIDATE_FS_PARSER is not set
CONFIG_FS_IOMAP=y
# CONFIG_EXT2_FS is not set
# CONFIG_EXT3_FS is not set
CONFIG_EXT4_FS=m
CONFIG_EXT4_USE_FOR_EXT2=y
CONFIG_EXT4_FS_POSIX_ACL=y
CONFIG_EXT4_FS_SECURITY=y
# CONFIG_EXT4_DEBUG is not set
CONFIG_JBD2=m
# CONFIG_JBD2_DEBUG is not set
CONFIG_FS_MBCACHE=m
# CONFIG_REISERFS_FS is not set
# CONFIG_JFS_FS is not set
CONFIG_XFS_FS=m
CONFIG_XFS_QUOTA=y
CONFIG_XFS_POSIX_ACL=y
CONFIG_XFS_RT=y
CONFIG_XFS_ONLINE_SCRUB=y
CONFIG_XFS_ONLINE_REPAIR=y
CONFIG_XFS_DEBUG=y
CONFIG_XFS_ASSERT_FATAL=y
CONFIG_GFS2_FS=m
CONFIG_GFS2_FS_LOCKING_DLM=y
CONFIG_OCFS2_FS=m
CONFIG_OCFS2_FS_O2CB=m
CONFIG_OCFS2_FS_USERSPACE_CLUSTER=m
CONFIG_OCFS2_FS_STATS=y
CONFIG_OCFS2_DEBUG_MASKLOG=y
# CONFIG_OCFS2_DEBUG_FS is not set
CONFIG_BTRFS_FS=m
CONFIG_BTRFS_FS_POSIX_ACL=y
# CONFIG_BTRFS_FS_CHECK_INTEGRITY is not set
# CONFIG_BTRFS_FS_RUN_SANITY_TESTS is not set
# CONFIG_BTRFS_DEBUG is not set
# CONFIG_BTRFS_ASSERT is not set
# CONFIG_BTRFS_FS_REF_VERIFY is not set
# CONFIG_NILFS2_FS is not set
CONFIG_F2FS_FS=m
CONFIG_F2FS_STAT_FS=y
CONFIG_F2FS_FS_XATTR=y
CONFIG_F2FS_FS_POSIX_ACL=y
CONFIG_F2FS_FS_SECURITY=y
# CONFIG_F2FS_CHECK_FS is not set
# CONFIG_F2FS_IO_TRACE is not set
# CONFIG_F2FS_FAULT_INJECTION is not set
# CONFIG_F2FS_FS_COMPRESSION is not set
# CONFIG_ZONEFS_FS is not set
CONFIG_FS_DAX=y
CONFIG_FS_DAX_PMD=y
CONFIG_FS_POSIX_ACL=y
CONFIG_EXPORTFS=y
CONFIG_EXPORTFS_BLOCK_OPS=y
CONFIG_FILE_LOCKING=y
CONFIG_MANDATORY_FILE_LOCKING=y
CONFIG_FS_ENCRYPTION=y
CONFIG_FS_ENCRYPTION_ALGS=m
# CONFIG_FS_VERITY is not set
CONFIG_FSNOTIFY=y
CONFIG_DNOTIFY=y
CONFIG_INOTIFY_USER=y
CONFIG_FANOTIFY=y
CONFIG_FANOTIFY_ACCESS_PERMISSIONS=y
CONFIG_QUOTA=y
CONFIG_QUOTA_NETLINK_INTERFACE=y
CONFIG_PRINT_QUOTA_WARNING=y
# CONFIG_QUOTA_DEBUG is not set
CONFIG_QUOTA_TREE=y
# CONFIG_QFMT_V1 is not set
CONFIG_QFMT_V2=y
CONFIG_QUOTACTL=y
CONFIG_QUOTACTL_COMPAT=y
CONFIG_AUTOFS4_FS=y
CONFIG_AUTOFS_FS=y
CONFIG_FUSE_FS=m
CONFIG_CUSE=m
# CONFIG_VIRTIO_FS is not set
CONFIG_OVERLAY_FS=m
# CONFIG_OVERLAY_FS_REDIRECT_DIR is not set
# CONFIG_OVERLAY_FS_REDIRECT_ALWAYS_FOLLOW is not set
# CONFIG_OVERLAY_FS_INDEX is not set
# CONFIG_OVERLAY_FS_XINO_AUTO is not set
# CONFIG_OVERLAY_FS_METACOPY is not set

#
# Caches
#
CONFIG_FSCACHE=m
CONFIG_FSCACHE_STATS=y
# CONFIG_FSCACHE_HISTOGRAM is not set
# CONFIG_FSCACHE_DEBUG is not set
# CONFIG_FSCACHE_OBJECT_LIST is not set
CONFIG_CACHEFILES=m
# CONFIG_CACHEFILES_DEBUG is not set
# CONFIG_CACHEFILES_HISTOGRAM is not set
# end of Caches

#
# CD-ROM/DVD Filesystems
#
CONFIG_ISO9660_FS=m
CONFIG_JOLIET=y
CONFIG_ZISOFS=y
CONFIG_UDF_FS=m
# end of CD-ROM/DVD Filesystems

#
# DOS/FAT/NT Filesystems
#
CONFIG_FAT_FS=m
CONFIG_MSDOS_FS=m
CONFIG_VFAT_FS=m
CONFIG_FAT_DEFAULT_CODEPAGE=437
CONFIG_FAT_DEFAULT_IOCHARSET="ascii"
# CONFIG_FAT_DEFAULT_UTF8 is not set
# CONFIG_NTFS_FS is not set
# end of DOS/FAT/NT Filesystems

#
# Pseudo filesystems
#
CONFIG_PROC_FS=y
CONFIG_PROC_KCORE=y
CONFIG_PROC_VMCORE=y
# CONFIG_PROC_VMCORE_DEVICE_DUMP is not set
CONFIG_PROC_SYSCTL=y
CONFIG_PROC_PAGE_MONITOR=y
CONFIG_PROC_CHILDREN=y
CONFIG_PROC_PID_ARCH_STATUS=y
CONFIG_PROC_CPU_RESCTRL=y
CONFIG_KERNFS=y
CONFIG_SYSFS=y
CONFIG_TMPFS=y
CONFIG_TMPFS_POSIX_ACL=y
CONFIG_TMPFS_XATTR=y
CONFIG_HUGETLBFS=y
CONFIG_HUGETLB_PAGE=y
CONFIG_MEMFD_CREATE=y
CONFIG_ARCH_HAS_GIGANTIC_PAGE=y
CONFIG_CONFIGFS_FS=y
CONFIG_EFIVAR_FS=y
# end of Pseudo filesystems

CONFIG_MISC_FILESYSTEMS=y
# CONFIG_ORANGEFS_FS is not set
# CONFIG_ADFS_FS is not set
# CONFIG_AFFS_FS is not set
# CONFIG_ECRYPT_FS is not set
# CONFIG_HFS_FS is not set
# CONFIG_HFSPLUS_FS is not set
# CONFIG_BEFS_FS is not set
# CONFIG_BFS_FS is not set
# CONFIG_EFS_FS is not set
# CONFIG_JFFS2_FS is not set
# CONFIG_UBIFS_FS is not set
CONFIG_CRAMFS=m
CONFIG_CRAMFS_BLOCKDEV=y
# CONFIG_CRAMFS_MTD is not set
CONFIG_SQUASHFS=m
CONFIG_SQUASHFS_FILE_CACHE=y
# CONFIG_SQUASHFS_FILE_DIRECT is not set
CONFIG_SQUASHFS_DECOMP_SINGLE=y
# CONFIG_SQUASHFS_DECOMP_MULTI is not set
# CONFIG_SQUASHFS_DECOMP_MULTI_PERCPU is not set
CONFIG_SQUASHFS_XATTR=y
CONFIG_SQUASHFS_ZLIB=y
# CONFIG_SQUASHFS_LZ4 is not set
CONFIG_SQUASHFS_LZO=y
CONFIG_SQUASHFS_XZ=y
# CONFIG_SQUASHFS_ZSTD is not set
# CONFIG_SQUASHFS_4K_DEVBLK_SIZE is not set
# CONFIG_SQUASHFS_EMBEDDED is not set
CONFIG_SQUASHFS_FRAGMENT_CACHE_SIZE=3
# CONFIG_VXFS_FS is not set
CONFIG_MINIX_FS=m
# CONFIG_OMFS_FS is not set
# CONFIG_HPFS_FS is not set
# CONFIG_QNX4FS_FS is not set
# CONFIG_QNX6FS_FS is not set
# CONFIG_ROMFS_FS is not set
CONFIG_PSTORE=y
CONFIG_PSTORE_DEFLATE_COMPRESS=y
# CONFIG_PSTORE_LZO_COMPRESS is not set
# CONFIG_PSTORE_LZ4_COMPRESS is not set
# CONFIG_PSTORE_LZ4HC_COMPRESS is not set
# CONFIG_PSTORE_842_COMPRESS is not set
# CONFIG_PSTORE_ZSTD_COMPRESS is not set
CONFIG_PSTORE_COMPRESS=y
CONFIG_PSTORE_DEFLATE_COMPRESS_DEFAULT=y
CONFIG_PSTORE_COMPRESS_DEFAULT="deflate"
CONFIG_PSTORE_CONSOLE=y
CONFIG_PSTORE_PMSG=y
# CONFIG_PSTORE_FTRACE is not set
CONFIG_PSTORE_RAM=m
# CONFIG_SYSV_FS is not set
# CONFIG_UFS_FS is not set
# CONFIG_EROFS_FS is not set
CONFIG_NETWORK_FILESYSTEMS=y
CONFIG_NFS_FS=y
# CONFIG_NFS_V2 is not set
CONFIG_NFS_V3=y
CONFIG_NFS_V3_ACL=y
CONFIG_NFS_V4=m
# CONFIG_NFS_SWAP is not set
CONFIG_NFS_V4_1=y
CONFIG_NFS_V4_2=y
CONFIG_PNFS_FILE_LAYOUT=m
CONFIG_PNFS_BLOCK=m
CONFIG_PNFS_FLEXFILE_LAYOUT=m
CONFIG_NFS_V4_1_IMPLEMENTATION_ID_DOMAIN="kernel.org"
# CONFIG_NFS_V4_1_MIGRATION is not set
CONFIG_NFS_V4_SECURITY_LABEL=y
CONFIG_ROOT_NFS=y
# CONFIG_NFS_USE_LEGACY_DNS is not set
CONFIG_NFS_USE_KERNEL_DNS=y
CONFIG_NFS_DEBUG=y
CONFIG_NFS_DISABLE_UDP_SUPPORT=y
CONFIG_NFSD=m
CONFIG_NFSD_V2_ACL=y
CONFIG_NFSD_V3=y
CONFIG_NFSD_V3_ACL=y
CONFIG_NFSD_V4=y
CONFIG_NFSD_PNFS=y
# CONFIG_NFSD_BLOCKLAYOUT is not set
CONFIG_NFSD_SCSILAYOUT=y
# CONFIG_NFSD_FLEXFILELAYOUT is not set
# CONFIG_NFSD_V4_2_INTER_SSC is not set
CONFIG_NFSD_V4_SECURITY_LABEL=y
CONFIG_GRACE_PERIOD=y
CONFIG_LOCKD=y
CONFIG_LOCKD_V4=y
CONFIG_NFS_ACL_SUPPORT=y
CONFIG_NFS_COMMON=y
CONFIG_SUNRPC=y
CONFIG_SUNRPC_GSS=m
CONFIG_SUNRPC_BACKCHANNEL=y
CONFIG_RPCSEC_GSS_KRB5=m
# CONFIG_SUNRPC_DISABLE_INSECURE_ENCTYPES is not set
CONFIG_SUNRPC_DEBUG=y
CONFIG_SUNRPC_XPRT_RDMA=m
CONFIG_CEPH_FS=m
# CONFIG_CEPH_FSCACHE is not set
CONFIG_CEPH_FS_POSIX_ACL=y
# CONFIG_CEPH_FS_SECURITY_LABEL is not set
CONFIG_CIFS=m
# CONFIG_CIFS_STATS2 is not set
CONFIG_CIFS_ALLOW_INSECURE_LEGACY=y
CONFIG_CIFS_WEAK_PW_HASH=y
CONFIG_CIFS_UPCALL=y
CONFIG_CIFS_XATTR=y
CONFIG_CIFS_POSIX=y
CONFIG_CIFS_DEBUG=y
# CONFIG_CIFS_DEBUG2 is not set
# CONFIG_CIFS_DEBUG_DUMP_KEYS is not set
CONFIG_CIFS_DFS_UPCALL=y
# CONFIG_CIFS_SMB_DIRECT is not set
# CONFIG_CIFS_FSCACHE is not set
# CONFIG_CODA_FS is not set
# CONFIG_AFS_FS is not set
CONFIG_9P_FS=y
CONFIG_9P_FS_POSIX_ACL=y
# CONFIG_9P_FS_SECURITY is not set
CONFIG_NLS=y
CONFIG_NLS_DEFAULT="utf8"
CONFIG_NLS_CODEPAGE_437=y
CONFIG_NLS_CODEPAGE_737=m
CONFIG_NLS_CODEPAGE_775=m
CONFIG_NLS_CODEPAGE_850=m
CONFIG_NLS_CODEPAGE_852=m
CONFIG_NLS_CODEPAGE_855=m
CONFIG_NLS_CODEPAGE_857=m
CONFIG_NLS_CODEPAGE_860=m
CONFIG_NLS_CODEPAGE_861=m
CONFIG_NLS_CODEPAGE_862=m
CONFIG_NLS_CODEPAGE_863=m
CONFIG_NLS_CODEPAGE_864=m
CONFIG_NLS_CODEPAGE_865=m
CONFIG_NLS_CODEPAGE_866=m
CONFIG_NLS_CODEPAGE_869=m
CONFIG_NLS_CODEPAGE_936=m
CONFIG_NLS_CODEPAGE_950=m
CONFIG_NLS_CODEPAGE_932=m
CONFIG_NLS_CODEPAGE_949=m
CONFIG_NLS_CODEPAGE_874=m
CONFIG_NLS_ISO8859_8=m
CONFIG_NLS_CODEPAGE_1250=m
CONFIG_NLS_CODEPAGE_1251=m
CONFIG_NLS_ASCII=y
CONFIG_NLS_ISO8859_1=m
CONFIG_NLS_ISO8859_2=m
CONFIG_NLS_ISO8859_3=m
CONFIG_NLS_ISO8859_4=m
CONFIG_NLS_ISO8859_5=m
CONFIG_NLS_ISO8859_6=m
CONFIG_NLS_ISO8859_7=m
CONFIG_NLS_ISO8859_9=m
CONFIG_NLS_ISO8859_13=m
CONFIG_NLS_ISO8859_14=m
CONFIG_NLS_ISO8859_15=m
CONFIG_NLS_KOI8_R=m
CONFIG_NLS_KOI8_U=m
CONFIG_NLS_MAC_ROMAN=m
CONFIG_NLS_MAC_CELTIC=m
CONFIG_NLS_MAC_CENTEURO=m
CONFIG_NLS_MAC_CROATIAN=m
CONFIG_NLS_MAC_CYRILLIC=m
CONFIG_NLS_MAC_GAELIC=m
CONFIG_NLS_MAC_GREEK=m
CONFIG_NLS_MAC_ICELAND=m
CONFIG_NLS_MAC_INUIT=m
CONFIG_NLS_MAC_ROMANIAN=m
CONFIG_NLS_MAC_TURKISH=m
CONFIG_NLS_UTF8=m
CONFIG_DLM=m
CONFIG_DLM_DEBUG=y
# CONFIG_UNICODE is not set
CONFIG_IO_WQ=y
# end of File systems

#
# Security options
#
CONFIG_KEYS=y
# CONFIG_KEYS_REQUEST_CACHE is not set
CONFIG_PERSISTENT_KEYRINGS=y
CONFIG_BIG_KEYS=y
CONFIG_TRUSTED_KEYS=y
CONFIG_ENCRYPTED_KEYS=y
# CONFIG_KEY_DH_OPERATIONS is not set
# CONFIG_SECURITY_DMESG_RESTRICT is not set
CONFIG_SECURITY=y
CONFIG_SECURITYFS=y
CONFIG_SECURITY_NETWORK=y
CONFIG_PAGE_TABLE_ISOLATION=y
# CONFIG_SECURITY_INFINIBAND is not set
CONFIG_SECURITY_NETWORK_XFRM=y
CONFIG_SECURITY_PATH=y
CONFIG_INTEL_TXT=y
CONFIG_LSM_MMAP_MIN_ADDR=65535
CONFIG_HAVE_HARDENED_USERCOPY_ALLOCATOR=y
CONFIG_HARDENED_USERCOPY=y
CONFIG_HARDENED_USERCOPY_FALLBACK=y
# CONFIG_HARDENED_USERCOPY_PAGESPAN is not set
# CONFIG_FORTIFY_SOURCE is not set
# CONFIG_STATIC_USERMODEHELPER is not set
CONFIG_SECURITY_SELINUX=y
CONFIG_SECURITY_SELINUX_BOOTPARAM=y
# CONFIG_SECURITY_SELINUX_DISABLE is not set
CONFIG_SECURITY_SELINUX_DEVELOP=y
CONFIG_SECURITY_SELINUX_AVC_STATS=y
CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE=1
CONFIG_SECURITY_SELINUX_SIDTAB_HASH_BITS=9
CONFIG_SECURITY_SELINUX_SID2STR_CACHE_SIZE=256
# CONFIG_SECURITY_SMACK is not set
# CONFIG_SECURITY_TOMOYO is not set
CONFIG_SECURITY_APPARMOR=y
CONFIG_SECURITY_APPARMOR_HASH=y
CONFIG_SECURITY_APPARMOR_HASH_DEFAULT=y
# CONFIG_SECURITY_APPARMOR_DEBUG is not set
# CONFIG_SECURITY_LOADPIN is not set
CONFIG_SECURITY_YAMA=y
# CONFIG_SECURITY_SAFESETID is not set
# CONFIG_SECURITY_LOCKDOWN_LSM is not set
CONFIG_INTEGRITY=y
CONFIG_INTEGRITY_SIGNATURE=y
CONFIG_INTEGRITY_ASYMMETRIC_KEYS=y
CONFIG_INTEGRITY_TRUSTED_KEYRING=y
# CONFIG_INTEGRITY_PLATFORM_KEYRING is not set
CONFIG_INTEGRITY_AUDIT=y
CONFIG_IMA=y
CONFIG_IMA_MEASURE_PCR_IDX=10
CONFIG_IMA_LSM_RULES=y
# CONFIG_IMA_TEMPLATE is not set
CONFIG_IMA_NG_TEMPLATE=y
# CONFIG_IMA_SIG_TEMPLATE is not set
CONFIG_IMA_DEFAULT_TEMPLATE="ima-ng"
CONFIG_IMA_DEFAULT_HASH_SHA1=y
# CONFIG_IMA_DEFAULT_HASH_SHA256 is not set
CONFIG_IMA_DEFAULT_HASH="sha1"
# CONFIG_IMA_WRITE_POLICY is not set
# CONFIG_IMA_READ_POLICY is not set
CONFIG_IMA_APPRAISE=y
CONFIG_IMA_ARCH_POLICY=y
# CONFIG_IMA_APPRAISE_BUILD_POLICY is not set
# CONFIG_IMA_APPRAISE_MODSIG is not set
CONFIG_IMA_TRUSTED_KEYRING=y
# CONFIG_IMA_BLACKLIST_KEYRING is not set
# CONFIG_IMA_LOAD_X509 is not set
CONFIG_IMA_MEASURE_ASYMMETRIC_KEYS=y
CONFIG_IMA_QUEUE_EARLY_BOOT_KEYS=y
CONFIG_EVM=y
CONFIG_EVM_ATTR_FSUUID=y
# CONFIG_EVM_ADD_XATTRS is not set
# CONFIG_EVM_LOAD_X509 is not set
CONFIG_DEFAULT_SECURITY_SELINUX=y
# CONFIG_DEFAULT_SECURITY_APPARMOR is not set
# CONFIG_DEFAULT_SECURITY_DAC is not set
CONFIG_LSM="lockdown,yama,loadpin,safesetid,integrity,selinux,smack,tomoyo,apparmor"

#
# Kernel hardening options
#

#
# Memory initialization
#
CONFIG_INIT_STACK_NONE=y
# CONFIG_GCC_PLUGIN_STRUCTLEAK_USER is not set
# CONFIG_GCC_PLUGIN_STRUCTLEAK_BYREF is not set
# CONFIG_GCC_PLUGIN_STRUCTLEAK_BYREF_ALL is not set
# CONFIG_GCC_PLUGIN_STACKLEAK is not set
# CONFIG_INIT_ON_ALLOC_DEFAULT_ON is not set
# CONFIG_INIT_ON_FREE_DEFAULT_ON is not set
# end of Memory initialization
# end of Kernel hardening options
# end of Security options

CONFIG_XOR_BLOCKS=m
CONFIG_ASYNC_CORE=m
CONFIG_ASYNC_MEMCPY=m
CONFIG_ASYNC_XOR=m
CONFIG_ASYNC_PQ=m
CONFIG_ASYNC_RAID6_RECOV=m
CONFIG_CRYPTO=y

#
# Crypto core or helper
#
CONFIG_CRYPTO_ALGAPI=y
CONFIG_CRYPTO_ALGAPI2=y
CONFIG_CRYPTO_AEAD=y
CONFIG_CRYPTO_AEAD2=y
CONFIG_CRYPTO_SKCIPHER=y
CONFIG_CRYPTO_SKCIPHER2=y
CONFIG_CRYPTO_HASH=y
CONFIG_CRYPTO_HASH2=y
CONFIG_CRYPTO_RNG=y
CONFIG_CRYPTO_RNG2=y
CONFIG_CRYPTO_RNG_DEFAULT=y
CONFIG_CRYPTO_AKCIPHER2=y
CONFIG_CRYPTO_AKCIPHER=y
CONFIG_CRYPTO_KPP2=y
CONFIG_CRYPTO_KPP=m
CONFIG_CRYPTO_ACOMP2=y
CONFIG_CRYPTO_MANAGER=y
CONFIG_CRYPTO_MANAGER2=y
CONFIG_CRYPTO_USER=m
CONFIG_CRYPTO_MANAGER_DISABLE_TESTS=y
CONFIG_CRYPTO_GF128MUL=y
CONFIG_CRYPTO_NULL=y
CONFIG_CRYPTO_NULL2=y
CONFIG_CRYPTO_PCRYPT=m
CONFIG_CRYPTO_CRYPTD=m
CONFIG_CRYPTO_AUTHENC=m
CONFIG_CRYPTO_TEST=m
CONFIG_CRYPTO_SIMD=m
CONFIG_CRYPTO_GLUE_HELPER_X86=m
CONFIG_CRYPTO_ENGINE=m

#
# Public-key cryptography
#
CONFIG_CRYPTO_RSA=y
CONFIG_CRYPTO_DH=m
CONFIG_CRYPTO_ECC=m
CONFIG_CRYPTO_ECDH=m
# CONFIG_CRYPTO_ECRDSA is not set
# CONFIG_CRYPTO_CURVE25519 is not set
# CONFIG_CRYPTO_CURVE25519_X86 is not set

#
# Authenticated Encryption with Associated Data
#
CONFIG_CRYPTO_CCM=m
CONFIG_CRYPTO_GCM=y
# CONFIG_CRYPTO_CHACHA20POLY1305 is not set
# CONFIG_CRYPTO_AEGIS128 is not set
# CONFIG_CRYPTO_AEGIS128_AESNI_SSE2 is not set
CONFIG_CRYPTO_SEQIV=y
CONFIG_CRYPTO_ECHAINIV=m

#
# Block modes
#
CONFIG_CRYPTO_CBC=y
# CONFIG_CRYPTO_CFB is not set
CONFIG_CRYPTO_CTR=y
CONFIG_CRYPTO_CTS=m
CONFIG_CRYPTO_ECB=y
CONFIG_CRYPTO_LRW=m
# CONFIG_CRYPTO_OFB is not set
CONFIG_CRYPTO_PCBC=m
CONFIG_CRYPTO_XTS=m
# CONFIG_CRYPTO_KEYWRAP is not set
# CONFIG_CRYPTO_NHPOLY1305_SSE2 is not set
# CONFIG_CRYPTO_NHPOLY1305_AVX2 is not set
# CONFIG_CRYPTO_ADIANTUM is not set
CONFIG_CRYPTO_ESSIV=m

#
# Hash modes
#
CONFIG_CRYPTO_CMAC=m
CONFIG_CRYPTO_HMAC=y
CONFIG_CRYPTO_XCBC=m
CONFIG_CRYPTO_VMAC=m

#
# Digest
#
CONFIG_CRYPTO_CRC32C=y
CONFIG_CRYPTO_CRC32C_INTEL=m
CONFIG_CRYPTO_CRC32=m
CONFIG_CRYPTO_CRC32_PCLMUL=m
CONFIG_CRYPTO_XXHASH=m
CONFIG_CRYPTO_BLAKE2B=m
# CONFIG_CRYPTO_BLAKE2S is not set
# CONFIG_CRYPTO_BLAKE2S_X86 is not set
CONFIG_CRYPTO_CRCT10DIF=y
CONFIG_CRYPTO_CRCT10DIF_PCLMUL=m
CONFIG_CRYPTO_GHASH=y
# CONFIG_CRYPTO_POLY1305 is not set
# CONFIG_CRYPTO_POLY1305_X86_64 is not set
CONFIG_CRYPTO_MD4=m
CONFIG_CRYPTO_MD5=y
CONFIG_CRYPTO_MICHAEL_MIC=m
CONFIG_CRYPTO_RMD128=m
CONFIG_CRYPTO_RMD160=m
CONFIG_CRYPTO_RMD256=m
CONFIG_CRYPTO_RMD320=m
CONFIG_CRYPTO_SHA1=y
CONFIG_CRYPTO_SHA1_SSSE3=y
CONFIG_CRYPTO_SHA256_SSSE3=y
CONFIG_CRYPTO_SHA512_SSSE3=m
CONFIG_CRYPTO_SHA256=y
CONFIG_CRYPTO_SHA512=m
# CONFIG_CRYPTO_SHA3 is not set
# CONFIG_CRYPTO_SM3 is not set
# CONFIG_CRYPTO_STREEBOG is not set
CONFIG_CRYPTO_TGR192=m
CONFIG_CRYPTO_WP512=m
CONFIG_CRYPTO_GHASH_CLMUL_NI_INTEL=m

#
# Ciphers
#
CONFIG_CRYPTO_AES=y
# CONFIG_CRYPTO_AES_TI is not set
CONFIG_CRYPTO_AES_NI_INTEL=m
CONFIG_CRYPTO_ANUBIS=m
CONFIG_CRYPTO_ARC4=m
CONFIG_CRYPTO_BLOWFISH=m
CONFIG_CRYPTO_BLOWFISH_COMMON=m
CONFIG_CRYPTO_BLOWFISH_X86_64=m
CONFIG_CRYPTO_CAMELLIA=m
CONFIG_CRYPTO_CAMELLIA_X86_64=m
CONFIG_CRYPTO_CAMELLIA_AESNI_AVX_X86_64=m
CONFIG_CRYPTO_CAMELLIA_AESNI_AVX2_X86_64=m
CONFIG_CRYPTO_CAST_COMMON=m
CONFIG_CRYPTO_CAST5=m
CONFIG_CRYPTO_CAST5_AVX_X86_64=m
CONFIG_CRYPTO_CAST6=m
CONFIG_CRYPTO_CAST6_AVX_X86_64=m
CONFIG_CRYPTO_DES=m
# CONFIG_CRYPTO_DES3_EDE_X86_64 is not set
CONFIG_CRYPTO_FCRYPT=m
CONFIG_CRYPTO_KHAZAD=m
CONFIG_CRYPTO_SALSA20=m
# CONFIG_CRYPTO_CHACHA20 is not set
# CONFIG_CRYPTO_CHACHA20_X86_64 is not set
CONFIG_CRYPTO_SEED=m
CONFIG_CRYPTO_SERPENT=m
CONFIG_CRYPTO_SERPENT_SSE2_X86_64=m
CONFIG_CRYPTO_SERPENT_AVX_X86_64=m
CONFIG_CRYPTO_SERPENT_AVX2_X86_64=m
# CONFIG_CRYPTO_SM4 is not set
CONFIG_CRYPTO_TEA=m
CONFIG_CRYPTO_TWOFISH=m
CONFIG_CRYPTO_TWOFISH_COMMON=m
CONFIG_CRYPTO_TWOFISH_X86_64=m
CONFIG_CRYPTO_TWOFISH_X86_64_3WAY=m
CONFIG_CRYPTO_TWOFISH_AVX_X86_64=m

#
# Compression
#
CONFIG_CRYPTO_DEFLATE=y
CONFIG_CRYPTO_LZO=y
# CONFIG_CRYPTO_842 is not set
# CONFIG_CRYPTO_LZ4 is not set
# CONFIG_CRYPTO_LZ4HC is not set
# CONFIG_CRYPTO_ZSTD is not set

#
# Random Number Generation
#
CONFIG_CRYPTO_ANSI_CPRNG=m
CONFIG_CRYPTO_DRBG_MENU=y
CONFIG_CRYPTO_DRBG_HMAC=y
CONFIG_CRYPTO_DRBG_HASH=y
CONFIG_CRYPTO_DRBG_CTR=y
CONFIG_CRYPTO_DRBG=y
CONFIG_CRYPTO_JITTERENTROPY=y
CONFIG_CRYPTO_USER_API=y
CONFIG_CRYPTO_USER_API_HASH=m
CONFIG_CRYPTO_USER_API_SKCIPHER=y
CONFIG_CRYPTO_USER_API_RNG=m
# CONFIG_CRYPTO_USER_API_AEAD is not set
# CONFIG_CRYPTO_STATS is not set
CONFIG_CRYPTO_HASH_INFO=y

#
# Crypto library routines
#
CONFIG_CRYPTO_LIB_AES=y
CONFIG_CRYPTO_LIB_ARC4=m
# CONFIG_CRYPTO_LIB_BLAKE2S is not set
# CONFIG_CRYPTO_LIB_CHACHA is not set
# CONFIG_CRYPTO_LIB_CURVE25519 is not set
CONFIG_CRYPTO_LIB_DES=m
CONFIG_CRYPTO_LIB_POLY1305_RSIZE=11
# CONFIG_CRYPTO_LIB_POLY1305 is not set
# CONFIG_CRYPTO_LIB_CHACHA20POLY1305 is not set
CONFIG_CRYPTO_LIB_SHA256=y
CONFIG_CRYPTO_HW=y
CONFIG_CRYPTO_DEV_PADLOCK=m
CONFIG_CRYPTO_DEV_PADLOCK_AES=m
CONFIG_CRYPTO_DEV_PADLOCK_SHA=m
# CONFIG_CRYPTO_DEV_ATMEL_ECC is not set
# CONFIG_CRYPTO_DEV_ATMEL_SHA204A is not set
CONFIG_CRYPTO_DEV_CCP=y
CONFIG_CRYPTO_DEV_CCP_DD=m
CONFIG_CRYPTO_DEV_SP_CCP=y
CONFIG_CRYPTO_DEV_CCP_CRYPTO=m
CONFIG_CRYPTO_DEV_SP_PSP=y
# CONFIG_CRYPTO_DEV_CCP_DEBUGFS is not set
CONFIG_CRYPTO_DEV_QAT=m
CONFIG_CRYPTO_DEV_QAT_DH895xCC=m
CONFIG_CRYPTO_DEV_QAT_C3XXX=m
CONFIG_CRYPTO_DEV_QAT_C62X=m
CONFIG_CRYPTO_DEV_QAT_DH895xCCVF=m
CONFIG_CRYPTO_DEV_QAT_C3XXXVF=m
CONFIG_CRYPTO_DEV_QAT_C62XVF=m
# CONFIG_CRYPTO_DEV_NITROX_CNN55XX is not set
CONFIG_CRYPTO_DEV_CHELSIO=m
CONFIG_CRYPTO_DEV_VIRTIO=m
# CONFIG_CRYPTO_DEV_SAFEXCEL is not set
# CONFIG_CRYPTO_DEV_AMLOGIC_GXL is not set
CONFIG_ASYMMETRIC_KEY_TYPE=y
CONFIG_ASYMMETRIC_PUBLIC_KEY_SUBTYPE=y
# CONFIG_ASYMMETRIC_TPM_KEY_SUBTYPE is not set
CONFIG_X509_CERTIFICATE_PARSER=y
# CONFIG_PKCS8_PRIVATE_KEY_PARSER is not set
CONFIG_PKCS7_MESSAGE_PARSER=y
# CONFIG_PKCS7_TEST_KEY is not set
CONFIG_SIGNED_PE_FILE_VERIFICATION=y

#
# Certificates for signature checking
#
CONFIG_MODULE_SIG_KEY="certs/signing_key.pem"
CONFIG_SYSTEM_TRUSTED_KEYRING=y
CONFIG_SYSTEM_TRUSTED_KEYS=""
# CONFIG_SYSTEM_EXTRA_CERTIFICATE is not set
# CONFIG_SECONDARY_TRUSTED_KEYRING is not set
CONFIG_SYSTEM_BLACKLIST_KEYRING=y
CONFIG_SYSTEM_BLACKLIST_HASH_LIST=""
# end of Certificates for signature checking

CONFIG_BINARY_PRINTF=y

#
# Library routines
#
CONFIG_RAID6_PQ=m
CONFIG_RAID6_PQ_BENCHMARK=y
# CONFIG_PACKING is not set
CONFIG_BITREVERSE=y
CONFIG_GENERIC_STRNCPY_FROM_USER=y
CONFIG_GENERIC_STRNLEN_USER=y
CONFIG_GENERIC_NET_UTILS=y
CONFIG_GENERIC_FIND_FIRST_BIT=y
CONFIG_CORDIC=m
CONFIG_PRIME_NUMBERS=m
CONFIG_RATIONAL=y
CONFIG_GENERIC_PCI_IOMAP=y
CONFIG_GENERIC_IOMAP=y
CONFIG_ARCH_USE_CMPXCHG_LOCKREF=y
CONFIG_ARCH_HAS_FAST_MULTIPLIER=y
CONFIG_CRC_CCITT=y
CONFIG_CRC16=y
CONFIG_CRC_T10DIF=y
CONFIG_CRC_ITU_T=m
CONFIG_CRC32=y
# CONFIG_CRC32_SELFTEST is not set
CONFIG_CRC32_SLICEBY8=y
# CONFIG_CRC32_SLICEBY4 is not set
# CONFIG_CRC32_SARWATE is not set
# CONFIG_CRC32_BIT is not set
# CONFIG_CRC64 is not set
# CONFIG_CRC4 is not set
# CONFIG_CRC7 is not set
CONFIG_LIBCRC32C=m
CONFIG_CRC8=m
CONFIG_XXHASH=y
# CONFIG_RANDOM32_SELFTEST is not set
CONFIG_ZLIB_INFLATE=y
CONFIG_ZLIB_DEFLATE=y
CONFIG_LZO_COMPRESS=y
CONFIG_LZO_DECOMPRESS=y
CONFIG_LZ4_DECOMPRESS=y
CONFIG_ZSTD_COMPRESS=m
CONFIG_ZSTD_DECOMPRESS=m
CONFIG_XZ_DEC=y
CONFIG_XZ_DEC_X86=y
CONFIG_XZ_DEC_POWERPC=y
CONFIG_XZ_DEC_IA64=y
CONFIG_XZ_DEC_ARM=y
CONFIG_XZ_DEC_ARMTHUMB=y
CONFIG_XZ_DEC_SPARC=y
CONFIG_XZ_DEC_BCJ=y
# CONFIG_XZ_DEC_TEST is not set
CONFIG_DECOMPRESS_GZIP=y
CONFIG_DECOMPRESS_BZIP2=y
CONFIG_DECOMPRESS_LZMA=y
CONFIG_DECOMPRESS_XZ=y
CONFIG_DECOMPRESS_LZO=y
CONFIG_DECOMPRESS_LZ4=y
CONFIG_GENERIC_ALLOCATOR=y
CONFIG_REED_SOLOMON=m
CONFIG_REED_SOLOMON_ENC8=y
CONFIG_REED_SOLOMON_DEC8=y
CONFIG_TEXTSEARCH=y
CONFIG_TEXTSEARCH_KMP=m
CONFIG_TEXTSEARCH_BM=m
CONFIG_TEXTSEARCH_FSM=m
CONFIG_BTREE=y
CONFIG_INTERVAL_TREE=y
CONFIG_XARRAY_MULTI=y
CONFIG_ASSOCIATIVE_ARRAY=y
CONFIG_HAS_IOMEM=y
CONFIG_HAS_IOPORT_MAP=y
CONFIG_HAS_DMA=y
CONFIG_NEED_SG_DMA_LENGTH=y
CONFIG_NEED_DMA_MAP_STATE=y
CONFIG_ARCH_DMA_ADDR_T_64BIT=y
CONFIG_ARCH_HAS_FORCE_DMA_UNENCRYPTED=y
CONFIG_DMA_VIRT_OPS=y
CONFIG_SWIOTLB=y
CONFIG_DMA_CMA=y

#
# Default contiguous memory area size:
#
CONFIG_CMA_SIZE_MBYTES=200
CONFIG_CMA_SIZE_SEL_MBYTES=y
# CONFIG_CMA_SIZE_SEL_PERCENTAGE is not set
# CONFIG_CMA_SIZE_SEL_MIN is not set
# CONFIG_CMA_SIZE_SEL_MAX is not set
CONFIG_CMA_ALIGNMENT=8
# CONFIG_DMA_API_DEBUG is not set
CONFIG_SGL_ALLOC=y
CONFIG_IOMMU_HELPER=y
CONFIG_CHECK_SIGNATURE=y
CONFIG_CPUMASK_OFFSTACK=y
CONFIG_CPU_RMAP=y
CONFIG_DQL=y
CONFIG_GLOB=y
# CONFIG_GLOB_SELFTEST is not set
CONFIG_NLATTR=y
CONFIG_CLZ_TAB=y
CONFIG_IRQ_POLL=y
CONFIG_MPILIB=y
CONFIG_SIGNATURE=y
CONFIG_DIMLIB=y
CONFIG_OID_REGISTRY=y
CONFIG_UCS2_STRING=y
CONFIG_HAVE_GENERIC_VDSO=y
CONFIG_GENERIC_GETTIMEOFDAY=y
CONFIG_GENERIC_VDSO_TIME_NS=y
CONFIG_FONT_SUPPORT=y
# CONFIG_FONTS is not set
CONFIG_FONT_8x8=y
CONFIG_FONT_8x16=y
CONFIG_SG_POOL=y
CONFIG_ARCH_HAS_PMEM_API=y
CONFIG_MEMREGION=y
CONFIG_ARCH_HAS_UACCESS_FLUSHCACHE=y
CONFIG_ARCH_HAS_UACCESS_MCSAFE=y
CONFIG_ARCH_STACKWALK=y
CONFIG_SBITMAP=y
# CONFIG_STRING_SELFTEST is not set
# end of Library routines

#
# Kernel hacking
#

#
# printk and dmesg options
#
CONFIG_PRINTK_TIME=y
# CONFIG_PRINTK_CALLER is not set
CONFIG_CONSOLE_LOGLEVEL_DEFAULT=7
CONFIG_CONSOLE_LOGLEVEL_QUIET=4
CONFIG_MESSAGE_LOGLEVEL_DEFAULT=4
CONFIG_BOOT_PRINTK_DELAY=y
CONFIG_DYNAMIC_DEBUG=y
CONFIG_SYMBOLIC_ERRNAME=y
CONFIG_DEBUG_BUGVERBOSE=y
# end of printk and dmesg options

#
# Compile-time checks and compiler options
#
CONFIG_DEBUG_INFO=y
CONFIG_DEBUG_INFO_REDUCED=y
# CONFIG_DEBUG_INFO_SPLIT is not set
# CONFIG_DEBUG_INFO_DWARF4 is not set
# CONFIG_DEBUG_INFO_BTF is not set
# CONFIG_GDB_SCRIPTS is not set
CONFIG_ENABLE_MUST_CHECK=y
CONFIG_FRAME_WARN=2048
CONFIG_STRIP_ASM_SYMS=y
# CONFIG_READABLE_ASM is not set
# CONFIG_HEADERS_INSTALL is not set
CONFIG_OPTIMIZE_INLINING=y
CONFIG_DEBUG_SECTION_MISMATCH=y
CONFIG_SECTION_MISMATCH_WARN_ONLY=y
CONFIG_STACK_VALIDATION=y
# CONFIG_DEBUG_FORCE_WEAK_PER_CPU is not set
# end of Compile-time checks and compiler options

#
# Generic Kernel Debugging Instruments
#
CONFIG_MAGIC_SYSRQ=y
CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE=0x1
CONFIG_MAGIC_SYSRQ_SERIAL=y
CONFIG_DEBUG_FS=y
CONFIG_HAVE_ARCH_KGDB=y
# CONFIG_KGDB is not set
CONFIG_ARCH_HAS_UBSAN_SANITIZE_ALL=y
# CONFIG_UBSAN is not set
CONFIG_UBSAN_ALIGNMENT=y
# end of Generic Kernel Debugging Instruments

CONFIG_DEBUG_KERNEL=y
CONFIG_DEBUG_MISC=y

#
# Memory Debugging
#
# CONFIG_PAGE_EXTENSION is not set
# CONFIG_DEBUG_PAGEALLOC is not set
# CONFIG_PAGE_OWNER is not set
# CONFIG_PAGE_POISONING is not set
# CONFIG_DEBUG_PAGE_REF is not set
CONFIG_DEBUG_RODATA_TEST=y
CONFIG_GENERIC_PTDUMP=y
# CONFIG_PTDUMP_DEBUGFS is not set
# CONFIG_DEBUG_OBJECTS is not set
# CONFIG_SLUB_DEBUG_ON is not set
# CONFIG_SLUB_STATS is not set
CONFIG_HAVE_DEBUG_KMEMLEAK=y
# CONFIG_DEBUG_KMEMLEAK is not set
# CONFIG_DEBUG_STACK_USAGE is not set
# CONFIG_SCHED_STACK_END_CHECK is not set
# CONFIG_DEBUG_VM is not set
CONFIG_ARCH_HAS_DEBUG_VIRTUAL=y
# CONFIG_DEBUG_VIRTUAL is not set
CONFIG_DEBUG_MEMORY_INIT=y
CONFIG_MEMORY_NOTIFIER_ERROR_INJECT=m
# CONFIG_DEBUG_PER_CPU_MAPS is not set
CONFIG_HAVE_ARCH_KASAN=y
CONFIG_HAVE_ARCH_KASAN_VMALLOC=y
CONFIG_CC_HAS_KASAN_GENERIC=y
# CONFIG_KASAN is not set
CONFIG_KASAN_STACK=1
# end of Memory Debugging

CONFIG_DEBUG_SHIRQ=y

#
# Debug Oops, Lockups and Hangs
#
CONFIG_PANIC_ON_OOPS=y
CONFIG_PANIC_ON_OOPS_VALUE=1
CONFIG_PANIC_TIMEOUT=0
CONFIG_LOCKUP_DETECTOR=y
CONFIG_SOFTLOCKUP_DETECTOR=y
# CONFIG_BOOTPARAM_SOFTLOCKUP_PANIC is not set
CONFIG_BOOTPARAM_SOFTLOCKUP_PANIC_VALUE=0
CONFIG_HARDLOCKUP_DETECTOR_PERF=y
CONFIG_HARDLOCKUP_CHECK_TIMESTAMP=y
CONFIG_HARDLOCKUP_DETECTOR=y
CONFIG_BOOTPARAM_HARDLOCKUP_PANIC=y
CONFIG_BOOTPARAM_HARDLOCKUP_PANIC_VALUE=1
# CONFIG_DETECT_HUNG_TASK is not set
# CONFIG_WQ_WATCHDOG is not set
# end of Debug Oops, Lockups and Hangs

#
# Scheduler Debugging
#
CONFIG_SCHED_DEBUG=y
CONFIG_SCHED_INFO=y
CONFIG_SCHEDSTATS=y
# end of Scheduler Debugging

# CONFIG_DEBUG_TIMEKEEPING is not set

#
# Lock Debugging (spinlocks, mutexes, etc...)
#
CONFIG_LOCK_DEBUGGING_SUPPORT=y
CONFIG_PROVE_LOCKING=y
# CONFIG_LOCK_STAT is not set
CONFIG_DEBUG_RT_MUTEXES=y
CONFIG_DEBUG_SPINLOCK=y
CONFIG_DEBUG_MUTEXES=y
CONFIG_DEBUG_WW_MUTEX_SLOWPATH=y
CONFIG_DEBUG_RWSEMS=y
CONFIG_DEBUG_LOCK_ALLOC=y
CONFIG_LOCKDEP=y
# CONFIG_DEBUG_LOCKDEP is not set
CONFIG_DEBUG_ATOMIC_SLEEP=y
# CONFIG_DEBUG_LOCKING_API_SELFTESTS is not set
CONFIG_LOCK_TORTURE_TEST=m
CONFIG_WW_MUTEX_SELFTEST=m
# end of Lock Debugging (spinlocks, mutexes, etc...)

CONFIG_TRACE_IRQFLAGS=y
CONFIG_STACKTRACE=y
# CONFIG_WARN_ALL_UNSEEDED_RANDOM is not set
# CONFIG_DEBUG_KOBJECT is not set

#
# Debug kernel data structures
#
CONFIG_DEBUG_LIST=y
# CONFIG_DEBUG_PLIST is not set
# CONFIG_DEBUG_SG is not set
# CONFIG_DEBUG_NOTIFIERS is not set
# CONFIG_BUG_ON_DATA_CORRUPTION is not set
# end of Debug kernel data structures

# CONFIG_DEBUG_CREDENTIALS is not set

#
# RCU Debugging
#
CONFIG_PROVE_RCU=y
CONFIG_TORTURE_TEST=m
CONFIG_RCU_PERF_TEST=m
CONFIG_RCU_TORTURE_TEST=m
CONFIG_RCU_CPU_STALL_TIMEOUT=60
# CONFIG_RCU_TRACE is not set
# CONFIG_RCU_EQS_DEBUG is not set
# end of RCU Debugging

# CONFIG_DEBUG_WQ_FORCE_RR_CPU is not set
# CONFIG_DEBUG_BLOCK_EXT_DEVT is not set
# CONFIG_CPU_HOTPLUG_STATE_CONTROL is not set
CONFIG_LATENCYTOP=y
CONFIG_USER_STACKTRACE_SUPPORT=y
CONFIG_NOP_TRACER=y
CONFIG_HAVE_FUNCTION_TRACER=y
CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
CONFIG_HAVE_DYNAMIC_FTRACE=y
CONFIG_HAVE_DYNAMIC_FTRACE_WITH_REGS=y
CONFIG_HAVE_DYNAMIC_FTRACE_WITH_DIRECT_CALLS=y
CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
CONFIG_HAVE_FENTRY=y
CONFIG_HAVE_C_RECORDMCOUNT=y
CONFIG_TRACER_MAX_TRACE=y
CONFIG_TRACE_CLOCK=y
CONFIG_RING_BUFFER=y
CONFIG_EVENT_TRACING=y
CONFIG_CONTEXT_SWITCH_TRACER=y
CONFIG_RING_BUFFER_ALLOW_SWAP=y
CONFIG_PREEMPTIRQ_TRACEPOINTS=y
CONFIG_TRACING=y
CONFIG_GENERIC_TRACER=y
CONFIG_TRACING_SUPPORT=y
CONFIG_FTRACE=y
# CONFIG_BOOTTIME_TRACING is not set
CONFIG_FUNCTION_TRACER=y
CONFIG_FUNCTION_GRAPH_TRACER=y
CONFIG_DYNAMIC_FTRACE=y
CONFIG_DYNAMIC_FTRACE_WITH_REGS=y
CONFIG_DYNAMIC_FTRACE_WITH_DIRECT_CALLS=y
CONFIG_FUNCTION_PROFILER=y
CONFIG_STACK_TRACER=y
# CONFIG_PREEMPTIRQ_EVENTS is not set
CONFIG_IRQSOFF_TRACER=y
CONFIG_SCHED_TRACER=y
CONFIG_HWLAT_TRACER=y
# CONFIG_MMIOTRACE is not set
CONFIG_FTRACE_SYSCALLS=y
CONFIG_TRACER_SNAPSHOT=y
CONFIG_TRACER_SNAPSHOT_PER_CPU_SWAP=y
CONFIG_BRANCH_PROFILE_NONE=y
# CONFIG_PROFILE_ANNOTATED_BRANCHES is not set
# CONFIG_PROFILE_ALL_BRANCHES is not set
CONFIG_BLK_DEV_IO_TRACE=y
CONFIG_KPROBE_EVENTS=y
# CONFIG_KPROBE_EVENTS_ON_NOTRACE is not set
CONFIG_UPROBE_EVENTS=y
CONFIG_BPF_EVENTS=y
CONFIG_DYNAMIC_EVENTS=y
CONFIG_PROBE_EVENTS=y
# CONFIG_BPF_KPROBE_OVERRIDE is not set
CONFIG_FTRACE_MCOUNT_RECORD=y
CONFIG_TRACING_MAP=y
CONFIG_HIST_TRIGGERS=y
# CONFIG_TRACE_EVENT_INJECT is not set
# CONFIG_TRACEPOINT_BENCHMARK is not set
CONFIG_RING_BUFFER_BENCHMARK=m
# CONFIG_TRACE_EVAL_MAP_FILE is not set
# CONFIG_FTRACE_STARTUP_TEST is not set
# CONFIG_RING_BUFFER_STARTUP_TEST is not set
CONFIG_PREEMPTIRQ_DELAY_TEST=m
# CONFIG_SYNTH_EVENT_GEN_TEST is not set
# CONFIG_KPROBE_EVENT_GEN_TEST is not set
CONFIG_PROVIDE_OHCI1394_DMA_INIT=y
CONFIG_SAMPLES=y
# CONFIG_SAMPLE_TRACE_EVENTS is not set
CONFIG_SAMPLE_TRACE_PRINTK=m
CONFIG_SAMPLE_FTRACE_DIRECT=m
# CONFIG_SAMPLE_TRACE_ARRAY is not set
# CONFIG_SAMPLE_KOBJECT is not set
# CONFIG_SAMPLE_KPROBES is not set
# CONFIG_SAMPLE_HW_BREAKPOINT is not set
# CONFIG_SAMPLE_KFIFO is not set
# CONFIG_SAMPLE_LIVEPATCH is not set
# CONFIG_SAMPLE_CONFIGFS is not set
# CONFIG_SAMPLE_VFIO_MDEV_MTTY is not set
# CONFIG_SAMPLE_VFIO_MDEV_MDPY is not set
# CONFIG_SAMPLE_VFIO_MDEV_MDPY_FB is not set
# CONFIG_SAMPLE_VFIO_MDEV_MBOCHS is not set
# CONFIG_SAMPLE_INTEL_MEI is not set
CONFIG_ARCH_HAS_DEVMEM_IS_ALLOWED=y
CONFIG_STRICT_DEVMEM=y
# CONFIG_IO_STRICT_DEVMEM is not set

#
# x86 Debugging
#
CONFIG_TRACE_IRQFLAGS_SUPPORT=y
CONFIG_EARLY_PRINTK_USB=y
CONFIG_X86_VERBOSE_BOOTUP=y
CONFIG_EARLY_PRINTK=y
CONFIG_EARLY_PRINTK_DBGP=y
# CONFIG_EARLY_PRINTK_USB_XDBC is not set
# CONFIG_EFI_PGT_DUMP is not set
# CONFIG_DEBUG_WX is not set
CONFIG_DOUBLEFAULT=y
# CONFIG_DEBUG_TLBFLUSH is not set
# CONFIG_IOMMU_DEBUG is not set
CONFIG_HAVE_MMIOTRACE_SUPPORT=y
CONFIG_X86_DECODER_SELFTEST=y
CONFIG_IO_DELAY_0X80=y
# CONFIG_IO_DELAY_0XED is not set
# CONFIG_IO_DELAY_UDELAY is not set
# CONFIG_IO_DELAY_NONE is not set
CONFIG_DEBUG_BOOT_PARAMS=y
# CONFIG_CPA_DEBUG is not set
# CONFIG_DEBUG_ENTRY is not set
# CONFIG_DEBUG_NMI_SELFTEST is not set
CONFIG_X86_DEBUG_FPU=y
# CONFIG_PUNIT_ATOM_DEBUG is not set
CONFIG_UNWINDER_ORC=y
# CONFIG_UNWINDER_FRAME_POINTER is not set
# CONFIG_UNWINDER_GUESS is not set
# end of x86 Debugging

#
# Kernel Testing and Coverage
#
# CONFIG_KUNIT is not set
CONFIG_NOTIFIER_ERROR_INJECTION=y
CONFIG_PM_NOTIFIER_ERROR_INJECT=m
# CONFIG_NETDEV_NOTIFIER_ERROR_INJECT is not set
CONFIG_FUNCTION_ERROR_INJECTION=y
CONFIG_FAULT_INJECTION=y
# CONFIG_FAILSLAB is not set
# CONFIG_FAIL_PAGE_ALLOC is not set
CONFIG_FAIL_MAKE_REQUEST=y
# CONFIG_FAIL_IO_TIMEOUT is not set
# CONFIG_FAIL_FUTEX is not set
CONFIG_FAULT_INJECTION_DEBUG_FS=y
# CONFIG_FAIL_FUNCTION is not set
# CONFIG_FAIL_MMC_REQUEST is not set
CONFIG_ARCH_HAS_KCOV=y
CONFIG_CC_HAS_SANCOV_TRACE_PC=y
# CONFIG_KCOV is not set
CONFIG_RUNTIME_TESTING_MENU=y
CONFIG_LKDTM=y
# CONFIG_TEST_LIST_SORT is not set
# CONFIG_TEST_SORT is not set
# CONFIG_KPROBES_SANITY_TEST is not set
# CONFIG_BACKTRACE_SELF_TEST is not set
# CONFIG_RBTREE_TEST is not set
# CONFIG_REED_SOLOMON_TEST is not set
# CONFIG_INTERVAL_TREE_TEST is not set
# CONFIG_PERCPU_TEST is not set
CONFIG_ATOMIC64_SELFTEST=y
# CONFIG_ASYNC_RAID6_TEST is not set
# CONFIG_TEST_HEXDUMP is not set
# CONFIG_TEST_STRING_HELPERS is not set
CONFIG_TEST_STRSCPY=m
# CONFIG_TEST_KSTRTOX is not set
CONFIG_TEST_PRINTF=m
CONFIG_TEST_BITMAP=m
# CONFIG_TEST_BITFIELD is not set
# CONFIG_TEST_UUID is not set
# CONFIG_TEST_XARRAY is not set
# CONFIG_TEST_OVERFLOW is not set
# CONFIG_TEST_RHASHTABLE is not set
# CONFIG_TEST_HASH is not set
# CONFIG_TEST_IDA is not set
CONFIG_TEST_LKM=m
CONFIG_TEST_VMALLOC=m
CONFIG_TEST_USER_COPY=m
CONFIG_TEST_BPF=m
CONFIG_TEST_BLACKHOLE_DEV=m
# CONFIG_FIND_BIT_BENCHMARK is not set
CONFIG_TEST_FIRMWARE=y
CONFIG_TEST_SYSCTL=m
# CONFIG_TEST_UDELAY is not set
CONFIG_TEST_STATIC_KEYS=m
CONFIG_TEST_KMOD=m
# CONFIG_TEST_MEMCAT_P is not set
CONFIG_TEST_LIVEPATCH=m
# CONFIG_TEST_STACKINIT is not set
# CONFIG_TEST_MEMINIT is not set
# CONFIG_MEMTEST is not set
# CONFIG_HYPERV_TESTING is not set
# end of Kernel Testing and Coverage
# end of Kernel hacking

--kkcDP0v44wDpNmbp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=job-script

#!/bin/sh

export_top_env()
{
	export suite='will-it-scale'
	export testcase='will-it-scale'
	export category='benchmark'
	export nr_task=8
	export job_origin='/lkp/lkp/.src-20200508-221914/allot/cyclic:p1:linux-devel:devel-hourly/lkp-ivb-d01/will-it-scale-100.yaml'
	export queue_cmdline_keys='branch
commit
queue_at_least_once'
	export queue='validate'
	export testbox='lkp-ivb-d01'
	export tbox_group='lkp-ivb-d01'
	export submit_id='5ebb23e64b4d20b5413fc645'
	export job_file='/lkp/jobs/scheduled/lkp-ivb-d01/will-it-scale-performance-thread-100%-unlink2-ucode=0x21-debian-x86_64-20191114.cgz-05c5a0273bc25627b9e9bbebc858b74e88f49c5b-20200513-46401-u8wkoi-3.yaml'
	export id='d2272618fc05cfbffe7abbb8f93693be2fe7ff44'
	export queuer_version='/lkp-src'
	export model='Ivy Bridge'
	export nr_node=1
	export nr_cpu=8
	export memory='16G'
	export nr_hdd_partitions=0
	export hdd_partitions=
	export rootfs_partition='/dev/disk/by-id/ata-ST1000DM003-1CH162_Z1DARXSK-part1'
	export brand='Intel(R) Core(TM) i7-3770K CPU @ 3.50GHz'
	export commit='05c5a0273bc25627b9e9bbebc858b74e88f49c5b'
	export netconsole_port=6672
	export ucode='0x21'
	export need_kconfig_hw='CONFIG_IGB=y
CONFIG_E1000E=y
CONFIG_SATA_AHCI'
	export kconfig='x86_64-rhel-7.6'
	export compiler='gcc-7'
	export enqueue_time='2020-05-13 06:32:12 +0800'
	export _id='5ebb23ec4b4d20b5413fc646'
	export _rt='/result/will-it-scale/performance-thread-100%-unlink2-ucode=0x21/lkp-ivb-d01/debian-x86_64-20191114.cgz/x86_64-rhel-7.6/gcc-7/05c5a0273bc25627b9e9bbebc858b74e88f49c5b'
	export user='lkp'
	export head_commit='811ae4b9a159bf89fce801244f7d05a41135a3af'
	export base_commit='0e698dfa282211e414076f9dc7e83c1c288314fd'
	export branch='linux-devel/devel-hourly-2020051000'
	export rootfs='debian-x86_64-20191114.cgz'
	export result_root='/result/will-it-scale/performance-thread-100%-unlink2-ucode=0x21/lkp-ivb-d01/debian-x86_64-20191114.cgz/x86_64-rhel-7.6/gcc-7/05c5a0273bc25627b9e9bbebc858b74e88f49c5b/3'
	export scheduler_version='/lkp/lkp/.src-20200512-154330'
	export LKP_SERVER='inn'
	export arch='x86_64'
	export max_uptime=1500
	export initrd='/osimage/debian/debian-x86_64-20191114.cgz'
	export bootloader_append='root=/dev/ram0
user=lkp
job=/lkp/jobs/scheduled/lkp-ivb-d01/will-it-scale-performance-thread-100%-unlink2-ucode=0x21-debian-x86_64-20191114.cgz-05c5a0273bc25627b9e9bbebc858b74e88f49c5b-20200513-46401-u8wkoi-3.yaml
ARCH=x86_64
kconfig=x86_64-rhel-7.6
branch=linux-devel/devel-hourly-2020051000
commit=05c5a0273bc25627b9e9bbebc858b74e88f49c5b
BOOT_IMAGE=/pkg/linux/x86_64-rhel-7.6/gcc-7/05c5a0273bc25627b9e9bbebc858b74e88f49c5b/vmlinuz-5.6.0-rc5-00002-g05c5a0273bc25
max_uptime=1500
RESULT_ROOT=/result/will-it-scale/performance-thread-100%-unlink2-ucode=0x21/lkp-ivb-d01/debian-x86_64-20191114.cgz/x86_64-rhel-7.6/gcc-7/05c5a0273bc25627b9e9bbebc858b74e88f49c5b/3
LKP_SERVER=inn
nokaslr
selinux=0
debug
apic=debug
sysrq_always_enabled
rcupdate.rcu_cpu_stall_timeout=100
net.ifnames=0
printk.devkmsg=on
panic=-1
softlockup_panic=1
nmi_watchdog=panic
oops=panic
load_ramdisk=2
prompt_ramdisk=0
drbd.minor_count=8
systemd.log_level=err
ignore_loglevel
console=tty0
earlyprintk=ttyS0,115200
console=ttyS0,115200
vga=normal
rw'
	export modules_initrd='/pkg/linux/x86_64-rhel-7.6/gcc-7/05c5a0273bc25627b9e9bbebc858b74e88f49c5b/modules.cgz'
	export bm_initrd='/osimage/deps/debian-x86_64-20180403.cgz/run-ipconfig_2018-04-03.cgz,/osimage/deps/debian-x86_64-20180403.cgz/lkp_2019-08-05.cgz,/osimage/deps/debian-x86_64-20180403.cgz/rsync-rootfs_2018-04-03.cgz,/osimage/deps/debian-x86_64-20180403.cgz/will-it-scale_2020-01-07.cgz,/osimage/pkg/debian-x86_64-20180403.cgz/will-it-scale-x86_64-1eef89e-1_2020-01-07.cgz,/osimage/deps/debian-x86_64-20180403.cgz/mpstat_2020-01-03.cgz,/osimage/deps/debian-x86_64-20180403.cgz/vmstat_2020-01-07.cgz,/osimage/deps/debian-x86_64-20180403.cgz/perf_20200325.cgz,/osimage/pkg/debian-x86_64-20180403.cgz/perf-x86_64-76ccd234269b-1_20200325.cgz,/osimage/pkg/debian-x86_64-20180403.cgz/sar-x86_64-e011d97-1_2020-01-03.cgz,/osimage/deps/debian-x86_64-20180403.cgz/hw_2020-01-02.cgz'
	export ucode_initrd='/osimage/ucode/intel-ucode-20191114.cgz'
	export lkp_initrd='/osimage/user/lkp/lkp-x86_64.cgz'
	export site='inn'
	export LKP_CGI_PORT=80
	export LKP_CIFS_PORT=139
	export last_kernel='5.7.0-rc4'
	export repeat_to=4
	export schedule_notify_address=
	export queue_at_least_once=1
	export kernel='/pkg/linux/x86_64-rhel-7.6/gcc-7/05c5a0273bc25627b9e9bbebc858b74e88f49c5b/vmlinuz-5.6.0-rc5-00002-g05c5a0273bc25'
	export dequeue_time='2020-05-13 06:44:42 +0800'
	export job_initrd='/lkp/jobs/scheduled/lkp-ivb-d01/will-it-scale-performance-thread-100%-unlink2-ucode=0x21-debian-x86_64-20191114.cgz-05c5a0273bc25627b9e9bbebc858b74e88f49c5b-20200513-46401-u8wkoi-3.cgz'

	[ -n "$LKP_SRC" ] ||
	export LKP_SRC=/lkp/${user:-lkp}/src
}

run_job()
{
	echo $$ > $TMP/run-job.pid

	. $LKP_SRC/lib/http.sh
	. $LKP_SRC/lib/job.sh
	. $LKP_SRC/lib/env.sh

	export_top_env

	run_setup $LKP_SRC/setup/cpufreq_governor 'performance'

	run_monitor $LKP_SRC/monitors/wrapper kmsg
	run_monitor $LKP_SRC/monitors/no-stdout/wrapper boot-time
	run_monitor $LKP_SRC/monitors/wrapper iostat
	run_monitor $LKP_SRC/monitors/wrapper heartbeat
	run_monitor $LKP_SRC/monitors/wrapper vmstat
	run_monitor $LKP_SRC/monitors/wrapper numa-numastat
	run_monitor $LKP_SRC/monitors/wrapper numa-vmstat
	run_monitor $LKP_SRC/monitors/wrapper numa-meminfo
	run_monitor $LKP_SRC/monitors/wrapper proc-vmstat
	run_monitor $LKP_SRC/monitors/wrapper proc-stat
	run_monitor $LKP_SRC/monitors/wrapper meminfo
	run_monitor $LKP_SRC/monitors/wrapper slabinfo
	run_monitor $LKP_SRC/monitors/wrapper interrupts
	run_monitor $LKP_SRC/monitors/wrapper lock_stat
	run_monitor $LKP_SRC/monitors/wrapper latency_stats
	run_monitor $LKP_SRC/monitors/wrapper softirqs
	run_monitor $LKP_SRC/monitors/one-shot/wrapper bdi_dev_mapping
	run_monitor $LKP_SRC/monitors/wrapper diskstats
	run_monitor $LKP_SRC/monitors/wrapper nfsstat
	run_monitor $LKP_SRC/monitors/wrapper cpuidle
	run_monitor $LKP_SRC/monitors/wrapper cpufreq-stats
	run_monitor $LKP_SRC/monitors/wrapper sched_debug
	run_monitor $LKP_SRC/monitors/wrapper perf-stat
	run_monitor $LKP_SRC/monitors/wrapper mpstat
	run_monitor $LKP_SRC/monitors/no-stdout/wrapper perf-profile
	run_monitor $LKP_SRC/monitors/wrapper oom-killer
	run_monitor $LKP_SRC/monitors/plain/watchdog

	run_test mode='thread' test='unlink2' $LKP_SRC/tests/wrapper will-it-scale
}

extract_stats()
{
	export stats_part_begin=
	export stats_part_end=

	$LKP_SRC/stats/wrapper will-it-scale
	$LKP_SRC/stats/wrapper kmsg
	$LKP_SRC/stats/wrapper boot-time
	$LKP_SRC/stats/wrapper iostat
	$LKP_SRC/stats/wrapper vmstat
	$LKP_SRC/stats/wrapper numa-numastat
	$LKP_SRC/stats/wrapper numa-vmstat
	$LKP_SRC/stats/wrapper numa-meminfo
	$LKP_SRC/stats/wrapper proc-vmstat
	$LKP_SRC/stats/wrapper meminfo
	$LKP_SRC/stats/wrapper slabinfo
	$LKP_SRC/stats/wrapper interrupts
	$LKP_SRC/stats/wrapper lock_stat
	$LKP_SRC/stats/wrapper latency_stats
	$LKP_SRC/stats/wrapper softirqs
	$LKP_SRC/stats/wrapper diskstats
	$LKP_SRC/stats/wrapper nfsstat
	$LKP_SRC/stats/wrapper cpuidle
	$LKP_SRC/stats/wrapper sched_debug
	$LKP_SRC/stats/wrapper perf-stat
	$LKP_SRC/stats/wrapper mpstat
	$LKP_SRC/stats/wrapper perf-profile

	$LKP_SRC/stats/wrapper time will-it-scale.time
	$LKP_SRC/stats/wrapper dmesg
	$LKP_SRC/stats/wrapper kmsg
	$LKP_SRC/stats/wrapper last_state
	$LKP_SRC/stats/wrapper stderr
	$LKP_SRC/stats/wrapper time
}

"$@"

--kkcDP0v44wDpNmbp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="job.yaml"

---

#! jobs/will-it-scale-100.yaml
suite: will-it-scale
testcase: will-it-scale
category: benchmark
nr_task: 100%
will-it-scale:
  mode: thread
  test: unlink2
job_origin: "/lkp/lkp/.src-20200508-221914/allot/cyclic:p1:linux-devel:devel-hourly/lkp-ivb-d01/will-it-scale-100.yaml"

#! queue options
queue_cmdline_keys:
- branch
- commit
- queue_at_least_once
queue: bisect
testbox: lkp-ivb-d01
tbox_group: lkp-ivb-d01
submit_id: 5ebb1a304b4d20b4241048f1
job_file: "/lkp/jobs/scheduled/lkp-ivb-d01/will-it-scale-performance-thread-100%-unlink2-ucode=0x21-debian-x86_64-20191114.cgz-05c5a0273bc25627b9e9bbebc858b74e88f49c5b-20200513-46116-1mjq0uk-0.yaml"
id: db6e469e903a156796a381d05a32883f87356e16
queuer_version: "/lkp-src"

#! hosts/lkp-ivb-d01
model: Ivy Bridge
nr_node: 1
nr_cpu: 8
memory: 16G
nr_hdd_partitions: 0
hdd_partitions: 
rootfs_partition: "/dev/disk/by-id/ata-ST1000DM003-1CH162_Z1DARXSK-part1"
brand: Intel(R) Core(TM) i7-3770K CPU @ 3.50GHz

#! include/category/benchmark
kmsg: 
boot-time: 
iostat: 
heartbeat: 
vmstat: 
numa-numastat: 
numa-vmstat: 
numa-meminfo: 
proc-vmstat: 
proc-stat: 
meminfo: 
slabinfo: 
interrupts: 
lock_stat: 
latency_stats: 
softirqs: 
bdi_dev_mapping: 
diskstats: 
nfsstat: 
cpuidle: 
cpufreq-stats: 
sched_debug: 
perf-stat: 
mpstat: 
perf-profile: 

#! include/category/ALL
cpufreq_governor: performance

#! include/queue/cyclic
commit: 05c5a0273bc25627b9e9bbebc858b74e88f49c5b

#! include/testbox/lkp-ivb-d01
netconsole_port: 6672
ucode: '0x21'
need_kconfig_hw:
- CONFIG_IGB=y
- CONFIG_E1000E=y
- CONFIG_SATA_AHCI

#! default params
kconfig: x86_64-rhel-7.6
compiler: gcc-7
enqueue_time: 2020-05-13 05:50:46.171376027 +08:00
_id: 5ebb1a304b4d20b4241048f1
_rt: "/result/will-it-scale/performance-thread-100%-unlink2-ucode=0x21/lkp-ivb-d01/debian-x86_64-20191114.cgz/x86_64-rhel-7.6/gcc-7/05c5a0273bc25627b9e9bbebc858b74e88f49c5b"

#! schedule options
user: lkp
head_commit: 811ae4b9a159bf89fce801244f7d05a41135a3af
base_commit: 0e698dfa282211e414076f9dc7e83c1c288314fd
branch: linux-devel/devel-hourly-2020051000
rootfs: debian-x86_64-20191114.cgz
result_root: "/result/will-it-scale/performance-thread-100%-unlink2-ucode=0x21/lkp-ivb-d01/debian-x86_64-20191114.cgz/x86_64-rhel-7.6/gcc-7/05c5a0273bc25627b9e9bbebc858b74e88f49c5b/0"
scheduler_version: "/lkp/lkp/.src-20200512-154330"
LKP_SERVER: inn
arch: x86_64
max_uptime: 1500
initrd: "/osimage/debian/debian-x86_64-20191114.cgz"
bootloader_append:
- root=/dev/ram0
- user=lkp
- job=/lkp/jobs/scheduled/lkp-ivb-d01/will-it-scale-performance-thread-100%-unlink2-ucode=0x21-debian-x86_64-20191114.cgz-05c5a0273bc25627b9e9bbebc858b74e88f49c5b-20200513-46116-1mjq0uk-0.yaml
- ARCH=x86_64
- kconfig=x86_64-rhel-7.6
- branch=linux-devel/devel-hourly-2020051000
- commit=05c5a0273bc25627b9e9bbebc858b74e88f49c5b
- BOOT_IMAGE=/pkg/linux/x86_64-rhel-7.6/gcc-7/05c5a0273bc25627b9e9bbebc858b74e88f49c5b/vmlinuz-5.6.0-rc5-00002-g05c5a0273bc25
- max_uptime=1500
- RESULT_ROOT=/result/will-it-scale/performance-thread-100%-unlink2-ucode=0x21/lkp-ivb-d01/debian-x86_64-20191114.cgz/x86_64-rhel-7.6/gcc-7/05c5a0273bc25627b9e9bbebc858b74e88f49c5b/0
- LKP_SERVER=inn
- nokaslr
- selinux=0
- debug
- apic=debug
- sysrq_always_enabled
- rcupdate.rcu_cpu_stall_timeout=100
- net.ifnames=0
- printk.devkmsg=on
- panic=-1
- softlockup_panic=1
- nmi_watchdog=panic
- oops=panic
- load_ramdisk=2
- prompt_ramdisk=0
- drbd.minor_count=8
- systemd.log_level=err
- ignore_loglevel
- console=tty0
- earlyprintk=ttyS0,115200
- console=ttyS0,115200
- vga=normal
- rw
modules_initrd: "/pkg/linux/x86_64-rhel-7.6/gcc-7/05c5a0273bc25627b9e9bbebc858b74e88f49c5b/modules.cgz"
bm_initrd: "/osimage/deps/debian-x86_64-20180403.cgz/run-ipconfig_2018-04-03.cgz,/osimage/deps/debian-x86_64-20180403.cgz/lkp_2019-08-05.cgz,/osimage/deps/debian-x86_64-20180403.cgz/rsync-rootfs_2018-04-03.cgz,/osimage/deps/debian-x86_64-20180403.cgz/will-it-scale_2020-01-07.cgz,/osimage/pkg/debian-x86_64-20180403.cgz/will-it-scale-x86_64-1eef89e-1_2020-01-07.cgz,/osimage/deps/debian-x86_64-20180403.cgz/mpstat_2020-01-03.cgz,/osimage/deps/debian-x86_64-20180403.cgz/vmstat_2020-01-07.cgz,/osimage/deps/debian-x86_64-20180403.cgz/perf_20200325.cgz,/osimage/pkg/debian-x86_64-20180403.cgz/perf-x86_64-76ccd234269b-1_20200325.cgz,/osimage/pkg/debian-x86_64-20180403.cgz/sar-x86_64-e011d97-1_2020-01-03.cgz,/osimage/deps/debian-x86_64-20180403.cgz/hw_2020-01-02.cgz"
ucode_initrd: "/osimage/ucode/intel-ucode-20191114.cgz"
lkp_initrd: "/osimage/user/lkp/lkp-x86_64.cgz"
site: inn

#! /lkp/lkp/.src-20200509-165744/include/site/inn
LKP_CGI_PORT: 80
LKP_CIFS_PORT: 139
oom-killer: 
watchdog: 

#! runtime status
last_kernel: 5.7.0-rc5-09099-g41732ca8eca68
repeat_to: 2
schedule_notify_address: 

#! user overrides
queue_at_least_once: 0
kernel: "/pkg/linux/x86_64-rhel-7.6/gcc-7/05c5a0273bc25627b9e9bbebc858b74e88f49c5b/vmlinuz-5.6.0-rc5-00002-g05c5a0273bc25"
dequeue_time: 2020-05-13 05:52:08.325011585 +08:00

#! /lkp/lkp/.src-20200512-154330/include/site/inn
job_state: booting

--kkcDP0v44wDpNmbp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=reproduce


for cpu_dir in /sys/devices/system/cpu/cpu[0-9]*
do
	online_file="$cpu_dir"/online
	[ -f "$online_file" ] && [ "$(cat "$online_file")" -eq 0 ] && continue

	file="$cpu_dir"/cpufreq/scaling_governor
	[ -f "$file" ] && echo "performance" > "$file"
done

 "python2" "./runtest.py" "unlink2" "295" "thread" "8"

--kkcDP0v44wDpNmbp
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--kkcDP0v44wDpNmbp
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--kkcDP0v44wDpNmbp--

