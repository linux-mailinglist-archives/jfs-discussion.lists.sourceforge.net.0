Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B8568A91F6B
	for <lists+jfs-discussion@lfdr.de>; Thu, 17 Apr 2025 16:21:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u5Q7E-0005Ge-Ja;
	Thu, 17 Apr 2025 14:21:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3CsAAaAkbANMHNO9zAA3GzEE72.5DD5A3JH3G1DCI3CI.1DB@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1u5Ku9-0001YE-2G for jfs-discussion@lists.sourceforge.net;
 Thu, 17 Apr 2025 08:47:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:From:
 Subject:Message-ID:In-Reply-To:Date:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6elf1Co+y5uicUbwOZw4K+kLsTMX1wXmczsFW31DvRo=; b=KsUk1r7wF7AWRXvjeZwv7SoStX
 XXMxWgfJRSqveKAsFK73W98I6Vryz4Lc18Yzs6TTzEguvA/+DkrsjpxutJfYLgCJ3vQ1oUoR8mtVY
 KIuxGxGwRpbAYmzPx/mskEFQwLPqiZP3cQ90KsOC06E6vk9iaeR3o7KYXFOiBbRvFhu4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:From:Subject:Message-ID:
 In-Reply-To:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6elf1Co+y5uicUbwOZw4K+kLsTMX1wXmczsFW31DvRo=; b=bWPo8YEuCZBGQB5Nb2sfRKwlM3
 vRz5Bc8xDACjuxD4j6kAJz95kHUNPK+0WkeKEKPypM3GMkGFxRgOYQYEiGLLKNjaaWg/ITHFCdPI9
 wxx23KnoisyJIcE1FqWdQgMvVnyn2XbMsPXyoFxDQN5bUJB/pDBKMOk/M5JHCWe1sHzY=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u5Kts-0003ge-4m for jfs-discussion@lists.sourceforge.net;
 Thu, 17 Apr 2025 08:47:28 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-851a991cf8bso139140239f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 17 Apr 2025 01:47:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744879626; x=1745484426;
 h=content-transfer-encoding:to:from:subject:message-id:in-reply-to
 :date:mime-version:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6elf1Co+y5uicUbwOZw4K+kLsTMX1wXmczsFW31DvRo=;
 b=u+xK6nzYTM2nVrQwdK2YV1TlcMIB3OHuf2O3dBgbebhWuZTBDVYiI39HYG6oN6i016
 m++iolf+Dpco0qISY+sJ7Q0kkcDsZLIVEL6jQAkYKwOcPKhDKA26AwYCYgwhjlsTEYYX
 ZhGIPBXc+Q9OBK26JimX0AZ2TFvHfpPqgF3wytD7to9QMTkn8uu0vHKes6tFE4qYgbTk
 Tsv+VuVqLLkOv1FEA18vmJpVaYmgFYPkg+CYA33U1pw6O2S4m5chWXnJqXGBUb1B2f9i
 PC6vXP0rC4FZs1uWmXff5lCe5Q8OUrBr1N1v99g+KIc4SQ0UHe6K8ctjd2NrTkzHUoCa
 drOQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXDFj//NofZPe2iECpKPLt2Yhowq3B0D2pWalPwMieFXi6COlyTVORuKnXnO7nHpPHu/RzkiZYHqJJnVKx0AA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzLgSoBHeVvsLL4fB4HkmROduxkO/J+GIzeTHORVt5GXDPDD8f5
 nZ0pufcpgf2x2uDVbvfazPqVkArjq8JkAy1lPWLukDWEhxP0TFWCA8A43AKk72xy6MV17VQ+stZ
 kFiOLAazjY+80XkdnlpiOL0vBb7OLoyi2roZ0QzgnFVn4E59SuWRKpQc=
X-Google-Smtp-Source: AGHT+IFmYqQD/SJTjUnM54wVFqxJZJkYfJVm3MC9mvtyT1QW2gt+0kp7ud+/6d/EsTLOTHPLtRsFPYLJfAv5z49h8kv4Dwpbz9Dk
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1949:b0:3d5:890b:d9e1 with SMTP id
 e9e14a558f8ab-3d81b661d23mr18618945ab.1.1744879626433; Thu, 17 Apr 2025
 01:47:06 -0700 (PDT)
Date: Thu, 17 Apr 2025 01:47:06 -0700
In-Reply-To: <20250417060630.197278-1-shivankg@amd.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6800c00a.050a0220.5cdb3.000f.GAE@google.com>
To: akpm@linux-foundation.org, apopple@nvidia.com, david@redhat.com, 
 donettom@linux.ibm.com, jane.chu@oracle.com, 
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 linux-mm@kvack.org, shaggy@kernel.org, shivankg@amd.com, 
 syzkaller-bugs@googlegroups.com, wangkefeng.wang@huawei.com, 
 willy@infradead.org, ziy@nvidia.com
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot tried to test the proposed patch but the build/boot
 failed: tes for 255 objects at 0xffff88823be00000-0xffff88823c000000 [
 1.925837][
 T0] Console: colour VGA+ 80x25 [ 1.926854][ T0] printk: legacy console [ttyS0]
 enabled [ 1.926854][ T0] printk: legacy console [...] 
 Content analysis details:   (2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.70 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.70 listed in bl.score.senderscore.com]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: executor.cc]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
X-Headers-End: 1u5Kts-0003ge-4m
X-Mailman-Approved-At: Thu, 17 Apr 2025 14:21:19 +0000
Subject: Re: [Jfs-discussion] [syzbot] [mm?] WARNING in move_to_new_folio
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
From: syzbot via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: syzbot <syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot tried to test the proposed patch but the build/boot failed:

tes for 255 objects at 0xffff88823be00000-0xffff88823c000000
[    1.925837][    T0] Console: colour VGA+ 80x25
[    1.926854][    T0] printk: legacy console [ttyS0] enabled
[    1.926854][    T0] printk: legacy console [ttyS0] enabled
[    1.928807][    T0] printk: legacy bootconsole [earlyser0] disabled
[    1.928807][    T0] printk: legacy bootconsole [earlyser0] disabled
[    1.931060][    T0] Lock dependency validator: Copyright (c) 2006 Red Hat, Inc., Ingo Molnar
[    1.932421][    T0] ... MAX_LOCKDEP_SUBCLASSES:  8
[    1.933470][    T0] ... MAX_LOCK_DEPTH:          48
[    1.934392][    T0] ... MAX_LOCKDEP_KEYS:        8192
[    1.935279][    T0] ... CLASSHASH_SIZE:          4096
[    1.936068][    T0] ... MAX_LOCKDEP_ENTRIES:     1048576
[    1.937188][    T0] ... MAX_LOCKDEP_CHAINS:      1048576
[    1.938022][    T0] ... CHAINHASH_SIZE:          524288
[    1.938854][    T0]  memory used by lock dependency info: 106625 kB
[    1.940170][    T0]  memory used for stack traces: 8320 kB
[    1.941640][    T0]  per task-struct memory footprint: 1920 bytes
[    1.942814][    T0] mempolicy: Enabling automatic NUMA balancing. Configure with numa_balancing= or the kernel.numa_balancing sysctl
[    1.945209][    T0] ACPI: Core revision 20241212
[    1.946927][    T0] APIC: Switch to symmetric I/O mode setup
[    1.948578][    T0] x2apic enabled
[    1.953337][    T0] APIC: Switched APIC routing to: physical x2apic
[    1.960868][    T0] ..TIMER: vector=0x30 apic1=0 pin1=0 apic2=-1 pin2=-1
[    1.963220][    T0] clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles: 0x1fb6f76ef03, max_idle_ns: 440795255960 ns
[    1.965573][    T0] Calibrating delay loop (skipped) preset value.. 4400.41 BogoMIPS (lpj=22002080)
[    1.976248][    T0] Last level iTLB entries: 4KB 64, 2MB 8, 4MB 8
[    1.977543][    T0] Last level dTLB entries: 4KB 64, 2MB 32, 4MB 32, 1GB 4
[    1.978831][    T0] Spectre V1 : Mitigation: usercopy/swapgs barriers and __user pointer sanitization
[    1.981126][    T0] Spectre V2 : Spectre BHI mitigation: SW BHB clearing on syscall and VM exit
[    1.983233][    T0] Spectre V2 : Mitigation: IBRS
[    1.983963][    T0] Spectre V2 : Spectre v2 / SpectreRSB: Filling RSB on context switch and VMEXIT
[    1.985668][    T0] RETBleed: Mitigation: IBRS
[    1.986468][    T0] Spectre V2 : mitigation: Enabling conditional Indirect Branch Prediction Barrier
[    1.987833][    T0] Spectre V2 : User space: Mitigation: STIBP via prctl
[    1.989023][    T0] Speculative Store Bypass: Mitigation: Speculative Store Bypass disabled via prctl
[    1.990381][    T0] MDS: Mitigation: Clear CPU buffers
[    1.991105][    T0] TAA: Mitigation: Clear CPU buffers
[    1.992276][    T0] MMIO Stale Data: Vulnerable: Clear CPU buffers attempted, no microcode
[    1.993752][    T0] x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating point registers'
[    1.994963][    T0] x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
[    1.995572][    T0] x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'
[    1.996652][    T0] x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256
[    1.997837][    T0] x86/fpu: Enabled xstate features 0x7, context size is 832 bytes, using 'standard' format.
[    2.295143][    T0] Freeing SMP alternatives memory: 132K
[    2.295587][    T0] pid_max: default: 32768 minimum: 301
[    2.297541][    T0] LSM: initializing lsm=lockdown,capability,landlock,yama,safesetid,tomoyo,apparmor,bpf,ima,evm
[    2.300386][    T0] landlock: Up and running.
[    2.301189][    T0] Yama: becoming mindful.
[    2.302225][    T0] TOMOYO Linux initialized
[    2.303858][    T0] AppArmor: AppArmor initialized
[    2.307123][    T0] LSM support for eBPF active
[    2.314189][    T0] Dentry cache hash table entries: 1048576 (order: 11, 8388608 bytes, vmalloc hugepage)
[    2.318576][    T0] Inode-cache hash table entries: 524288 (order: 10, 4194304 bytes, vmalloc hugepage)
[    2.320554][    T0] Mount-cache hash table entries: 16384 (order: 5, 131072 bytes, vmalloc)
[    2.322439][    T0] Mountpoint-cache hash table entries: 16384 (order: 5, 131072 bytes, vmalloc)
[    2.330329][    T0] Running RCU synchronous self tests
[    2.331252][    T0] Running RCU synchronous self tests
[    2.453357][    T1] smpboot: CPU0: Intel(R) Xeon(R) CPU @ 2.20GHz (family: 0x6, model: 0x4f, stepping: 0x0)
[    2.455556][    T9] ------------[ cut here ]------------
[    2.455556][    T9] WARNING: CPU: 0 PID: 9 at arch/x86/mm/tlb.c:919 switch_mm_irqs_off+0x686/0x810
[    2.455556][    T9] Modules linked in:
[    2.455556][    T9] CPU: 0 UID: 0 PID: 9 Comm: kworker/0:0 Not tainted 6.15.0-rc2-next-20250416-syzkaller-04531-g07246f14ea38 #0 PREEMPT(full) 
[    2.455556][    T9] Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 02/12/2025
[    2.455556][    T9] Workqueue: events once_deferred
[    2.455556][    T9] RIP: 0010:switch_mm_irqs_off+0x686/0x810
[    2.455556][    T9] Code: 90 41 f7 c5 00 08 00 00 0f 84 ee fa ff ff 90 0f 0b 90 e9 e5 fa ff ff 90 0f 0b 90 e9 76 fe ff ff 90 0f 0b 90 e9 cc fb ff ff 90 <0f> 0b 90 4d 39 f4 0f 85 eb fb ff ff e9 31 fc ff ff 90 0f 0b 90 e9
[    2.455556][    T9] RSP: 0000:ffffc900000e7680 EFLAGS: 00010056
[    2.455556][    T9] RAX: 0000000000000001 RBX: 0000000000000000 RCX: ffffffff816ffd4d
[    2.455556][    T9] RDX: 0000000000000000 RSI: 0000000000000008 RDI: ffff88801b070940
[    2.455556][    T9] RBP: ffffc900000e7750 R08: ffff88801b070947 R09: 1ffff1100360e128
[    2.455556][    T9] R10: dffffc0000000000 R11: ffffed100360e129 R12: ffffffff8ee492c0
[    2.455556][    T9] R13: ffff88801b070940 R14: ffffffff8ee492c0 R15: 0000000000000000
[    2.455556][    T9] FS:  0000000000000000(0000) GS:ffff888124f9c000(0000) knlGS:0000000000000000
[    2.455556][    T9] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    2.455556][    T9] CR2: ffff88823ffff000 CR3: 000000001b078000 CR4: 00000000003506f0
[    2.455556][    T9] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[    2.455556][    T9] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[    2.455556][    T9] Call Trace:
[    2.455556][    T9]  <TASK>
[    2.455556][    T9]  ? __pfx_switch_mm_irqs_off+0x10/0x10
[    2.455556][    T9]  ? __text_poke+0x6bb/0xb40
[    2.455556][    T9]  ? kasan_check_range+0x28f/0x2a0
[    2.455556][    T9]  ? serial8250_isa_init_ports+0x6b/0x110
[    2.455556][    T9]  unuse_temporary_mm+0x9f/0x100
[    2.455556][    T9]  __text_poke+0x7b6/0xb40
[    2.455556][    T9]  ? serial8250_isa_init_ports+0x6b/0x110
[    2.455556][    T9]  ? __pfx_text_poke_memcpy+0x10/0x10
[    2.455556][    T9]  ? __pfx___text_poke+0x10/0x10
[    2.455556][    T9]  ? __pfx___mutex_trylock_common+0x10/0x10
[    2.455556][    T9]  ? __pfx___might_resched+0x10/0x10
[    2.455556][    T9]  ? rcu_is_watching+0x15/0xb0
[    2.455556][    T9]  smp_text_poke_batch_finish+0x3e7/0x12c0
[    2.455556][    T9]  ? arch_jump_label_transform_apply+0x17/0x30
[    2.455556][    T9]  ? __pfx___mutex_lock+0x10/0x10
[    2.455556][    T9]  ? __pfx_smp_text_poke_batch_finish+0x10/0x10
[    2.455556][    T9]  ? arch_jump_label_transform_queue+0x9b/0x100
[    2.455556][    T9]  ? __jump_label_update+0x387/0x3b0
[    2.455556][    T9]  arch_jump_label_transform_apply+0x1c/0x30
[    2.455556][    T9]  static_key_disable_cpuslocked+0xd2/0x1c0
[    2.455556][    T9]  static_key_disable+0x1a/0x20
[    2.455556][    T9]  once_deferred+0x70/0xb0
[    2.455556][    T9]  ? process_scheduled_works+0x9cb/0x18e0
[    2.455556][    T9]  process_scheduled_works+0xac3/0x18e0
[    2.455556][    T9]  ? __pfx_process_scheduled_works+0x10/0x10
[    2.455556][    T9]  ? assign_work+0x367/0x3d0
[    2.455556][    T9]  worker_thread+0x870/0xd50
[    2.455556][    T9]  ? __kthread_parkme+0x1a8/0x200
[    2.455556][    T9]  ? __pfx_worker_thread+0x10/0x10
[    2.455556][    T9]  kthread+0x7b7/0x940
[    2.455556][    T9]  ? __pfx_worker_thread+0x10/0x10
[    2.455556][    T9]  ? __pfx_kthread+0x10/0x10
[    2.455556][    T9]  ? __pfx_kthread+0x10/0x10
[    2.455556][    T9]  ? __pfx_kthread+0x10/0x10
[    2.455556][    T9]  ? __pfx_kthread+0x10/0x10
[    2.455556][    T9]  ? _raw_spin_unlock_irq+0x23/0x50
[    2.455556][    T9]  ? lockdep_hardirqs_on+0x9d/0x150
[    2.455556][    T9]  ? __pfx_kthread+0x10/0x10
[    2.455556][    T9]  ret_from_fork+0x4b/0x80
[    2.455556][    T9]  ? __pfx_kthread+0x10/0x10
[    2.455556][    T9]  ret_from_fork_asm+0x1a/0x30
[    2.455556][    T9]  </TASK>
[    2.455556][    T9] Kernel panic - not syncing: kernel: panic_on_warn set ...
[    2.455556][    T9] CPU: 0 UID: 0 PID: 9 Comm: kworker/0:0 Not tainted 6.15.0-rc2-next-20250416-syzkaller-04531-g07246f14ea38 #0 PREEMPT(full) 
[    2.455556][    T9] Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 02/12/2025
[    2.455556][    T9] Workqueue: events once_deferred
[    2.455556][    T9] Call Trace:
[    2.455556][    T9]  <TASK>
[    2.455556][    T9]  dump_stack_lvl+0x241/0x360
[    2.455556][    T9]  ? __pfx_dump_stack_lvl+0x10/0x10
[    2.455556][    T9]  ? __pfx__printk+0x10/0x10
[    2.455556][    T9]  ? vscnprintf+0x5d/0x90
[    2.455556][    T9]  panic+0x349/0x880
[    2.455556][    T9]  ? __warn+0x174/0x4d0
[    2.455556][    T9]  ? __pfx_panic+0x10/0x10
[    2.455556][    T9]  ? ret_from_fork_asm+0x1a/0x30
[    2.455556][    T9]  __warn+0x344/0x4d0
[    2.455556][    T9]  ? switch_mm_irqs_off+0x686/0x810
[    2.455556][    T9]  report_bug+0x2b3/0x500
[    2.455556][    T9]  ? switch_mm_irqs_off+0x686/0x810
[    2.455556][    T9]  ? switch_mm_irqs_off+0x686/0x810
[    2.455556][    T9]  ? switch_mm_irqs_off+0x688/0x810
[    2.455556][    T9]  handle_bug+0x89/0x170
[    2.455556][    T9]  exc_invalid_op+0x1a/0x50
[    2.455556][    T9]  asm_exc_invalid_op+0x1a/0x20
[    2.455556][    T9] RIP: 0010:switch_mm_irqs_off+0x686/0x810
[    2.455556][    T9] Code: 90 41 f7 c5 00 08 00 00 0f 84 ee fa ff ff 90 0f 0b 90 e9 e5 fa ff ff 90 0f 0b 90 e9 76 fe ff ff 90 0f 0b 90 e9 cc fb ff ff 90 <0f> 0b 90 4d 39 f4 0f 85 eb fb ff ff e9 31 fc ff ff 90 0f 0b 90 e9
[    2.455556][    T9] RSP: 0000:ffffc900000e7680 EFLAGS: 00010056
[    2.455556][    T9] RAX: 0000000000000001 RBX: 0000000000000000 RCX: ffffffff816ffd4d
[    2.455556][    T9] RDX: 0000000000000000 RSI: 0000000000000008 RDI: ffff88801b070940
[    2.455556][    T9] RBP: ffffc900000e7750 R08: ffff88801b070947 R09: 1ffff1100360e128
[    2.455556][    T9] R10: dffffc0000000000 R11: ffffed100360e129 R12: ffffffff8ee492c0
[    2.455556][    T9] R13: ffff88801b070940 R14: ffffffff8ee492c0 R15: 0000000000000000
[    2.455556][    T9]  ? switch_mm_irqs_off+0x26d/0x810
[    2.455556][    T9]  ? __pfx_switch_mm_irqs_off+0x10/0x10
[    2.455556][    T9]  ? __text_poke+0x6bb/0xb40
[    2.455556][    T9]  ? kasan_check_range+0x28f/0x2a0
[    2.455556][    T9]  ? serial8250_isa_init_ports+0x6b/0x110
[    2.455556][    T9]  unuse_temporary_mm+0x9f/0x100
[    2.455556][    T9]  __text_poke+0x7b6/0xb40
[    2.455556][    T9]  ? serial8250_isa_init_ports+0x6b/0x110
[    2.455556][    T9]  ? __pfx_text_poke_memcpy+0x10/0x10
[    2.455556][    T9]  ? __pfx___text_poke+0x10/0x10
[    2.455556][    T9]  ? __pfx___mutex_trylock_common+0x10/0x10
[    2.455556][    T9]  ? __pfx___might_resched+0x10/0x10
[    2.455556][    T9]  ? rcu_is_watching+0x15/0xb0
[    2.455556][    T9]  smp_text_poke_batch_finish+0x3e7/0x12c0
[    2.455556][    T9]  ? arch_jump_label_transform_apply+0x17/0x30
[    2.455556][    T9]  ? __pfx___mutex_lock+0x10/0x10
[    2.455556][    T9]  ? __pfx_smp_text_poke_batch_finish+0x10/0x10
[    2.455556][    T9]  ? arch_jump_label_transform_queue+0x9b/0x100
[    2.455556][    T9]  ? __jump_label_update+0x387/0x3b0
[    2.455556][    T9]  arch_jump_label_transform_apply+0x1c/0x30
[    2.455556][    T9]  static_key_disable_cpuslocked+0xd2/0x1c0
[    2.455556][    T9]  static_key_disable+0x1a/0x20
[    2.455556][    T9]  once_deferred+0x70/0xb0
[    2.455556][    T9]  ? process_scheduled_works+0x9cb/0x18e0
[    2.455556][    T9]  process_scheduled_works+0xac3/0x18e0
[    2.455556][    T9]  ? __pfx_process_scheduled_works+0x10/0x10
[    2.455556][    T9]  ? assign_work+0x367/0x3d0
[    2.455556][    T9]  worker_thread+0x870/0xd50
[    2.455556][    T9]  ? __kthread_parkme+0x1a8/0x200
[    2.455556][    T9]  ? __pfx_worker_thread+0x10/0x10
[    2.455556][    T9]  kthread+0x7b7/0x940
[    2.455556][    T9]  ? __pfx_worker_thread+0x10/0x10
[    2.455556][    T9]  ? __pfx_kthread+0x10/0x10
[    2.455556][    T9]  ? __pfx_kthread+0x10/0x10
[    2.455556][    T9]  ? __pfx_kthread+0x10/0x10
[    2.455556][    T9]  ? __pfx_kthread+0x10/0x10
[    2.455556][    T9]  ? _raw_spin_unlock_irq+0x23/0x50
[    2.455556][    T9]  ? lockdep_hardirqs_on+0x9d/0x150
[    2.455556][    T9]  ? __pfx_kthread+0x10/0x10
[    2.455556][    T9]  ret_from_fork+0x4b/0x80
[    2.455556][    T9]  ? __pfx_kthread+0x10/0x10
[    2.455556][    T9]  ret_from_fork_asm+0x1a/0x30
[    2.455556][    T9]  </TASK>
[    2.455556][    T9] Rebooting in 86400 seconds..


syzkaller build log:
go env (err=<nil>)
GO111MODULE='auto'
GOARCH='amd64'
GOBIN=''
GOCACHE='/syzkaller/.cache/go-build'
GOENV='/syzkaller/.config/go/env'
GOEXE=''
GOEXPERIMENT=''
GOFLAGS=''
GOHOSTARCH='amd64'
GOHOSTOS='linux'
GOINSECURE=''
GOMODCACHE='/syzkaller/jobs/linux/gopath/pkg/mod'
GONOPROXY=''
GONOSUMDB=''
GOOS='linux'
GOPATH='/syzkaller/jobs/linux/gopath'
GOPRIVATE=''
GOPROXY='https://proxy.golang.org,direct'
GOROOT='/syzkaller/jobs/linux/gopath/pkg/mod/golang.org/toolchain@v0.0.1-go1.23.7.linux-amd64'
GOSUMDB='sum.golang.org'
GOTMPDIR=''
GOTOOLCHAIN='auto'
GOTOOLDIR='/syzkaller/jobs/linux/gopath/pkg/mod/golang.org/toolchain@v0.0.1-go1.23.7.linux-amd64/pkg/tool/linux_amd64'
GOVCS=''
GOVERSION='go1.23.7'
GODEBUG=''
GOTELEMETRY='local'
GOTELEMETRYDIR='/syzkaller/.config/go/telemetry'
GCCGO='gccgo'
GOAMD64='v1'
AR='ar'
CC='gcc'
CXX='g++'
CGO_ENABLED='1'
GOMOD='/syzkaller/jobs/linux/gopath/src/github.com/google/syzkaller/go.mod'
GOWORK=''
CGO_CFLAGS='-O2 -g'
CGO_CPPFLAGS=''
CGO_CXXFLAGS='-O2 -g'
CGO_FFLAGS='-O2 -g'
CGO_LDFLAGS='-O2 -g'
PKG_CONFIG='pkg-config'
GOGCCFLAGS='-fPIC -m64 -pthread -Wl,--no-gc-sections -fmessage-length=0 -ffile-prefix-map=/tmp/go-build1450323150=/tmp/go-build -gno-record-gcc-switches'

git status (err=<nil>)
HEAD detached at 0bd6db4180
nothing to commit, working tree clean


tput: No value for $TERM and no -T specified
tput: No value for $TERM and no -T specified
Makefile:31: run command via tools/syz-env for best compatibility, see:
Makefile:32: https://github.com/google/syzkaller/blob/master/docs/contributing.md#using-syz-env
go list -f '{{.Stale}}' ./sys/syz-sysgen | grep -q false || go install ./sys/syz-sysgen
make .descriptions
tput: No value for $TERM and no -T specified
tput: No value for $TERM and no -T specified
Makefile:31: run command via tools/syz-env for best compatibility, see:
Makefile:32: https://github.com/google/syzkaller/blob/master/docs/contributing.md#using-syz-env
bin/syz-sysgen
touch .descriptions
GOOS=linux GOARCH=amd64 go build "-ldflags=-s -w -X github.com/google/syzkaller/prog.GitRevision=0bd6db418098e2d98a2edf948b41410d3d9f9e70 -X 'github.com/google/syzkaller/prog.gitRevisionDate=20250411-130225'" -o ./bin/linux_amd64/syz-execprog github.com/google/syzkaller/tools/syz-execprog
mkdir -p ./bin/linux_amd64
g++ -o ./bin/linux_amd64/syz-executor executor/executor.cc \
	-m64 -O2 -pthread -Wall -Werror -Wparentheses -Wunused-const-variable -Wframe-larger-than=16384 -Wno-stringop-overflow -Wno-array-bounds -Wno-format-overflow -Wno-unused-but-set-variable -Wno-unused-command-line-argument -static-pie -std=c++17 -I. -Iexecutor/_include   -DGOOS_linux=1 -DGOARCH_amd64=1 \
	-DHOSTGOOS_linux=1 -DGIT_REVISION=\"0bd6db418098e2d98a2edf948b41410d3d9f9e70\"
/usr/bin/ld: /tmp/ccXxW6Eo.o: in function `Connection::Connect(char const*, char const*)':
executor.cc:(.text._ZN10Connection7ConnectEPKcS1_[_ZN10Connection7ConnectEPKcS1_]+0x104): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking


Error text is too large and was truncated, full error text is at:
https://syzkaller.appspot.com/x/error.txt?x=14fe3a3f980000


Tested on:

commit:         07246f14 jfs: implement migrate_folio for jfs_metapage..
git tree:       https://github.com/AMDESE/linux-mm.git
kernel config:  https://syzkaller.appspot.com/x/.config?x=361d80851af850ed
dashboard link: https://syzkaller.appspot.com/bug?extid=8bb6fd945af4e0ad9299
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Note: no patches were applied.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
