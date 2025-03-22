Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DBDA6CA72
	for <lists+jfs-discussion@lfdr.de>; Sat, 22 Mar 2025 15:07:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tvzV7-0006DB-AJ;
	Sat, 22 Mar 2025 14:07:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3E4veZwkbAOgcijUKVVObKZZSN.QYYQVOecObMYXdOXd.MYW@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tvvi6-0000er-Pe for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Mar 2025 10:04:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:From:
 Subject:Message-ID:In-Reply-To:Date:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9ZRJmdxwfLQndDnqf46lPRgckqAQZVABmugO9bO2/o8=; b=kL3gNJ3hZgOjZw8QJRSw29Ncla
 EyBpXEJrcQ7XUdHvie2qXytXtICQJQY11F8oqiKZAKRGFLEfz5aeCm24O69MFWQ/URW8wP8V7W9Ve
 eanrtXA7YbIsyC38S4VoU9oTtyAFiGMPMVNvX1oXk08RcglK5c0L4iDTrmTVwbFJz9d0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:From:Subject:Message-ID:
 In-Reply-To:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9ZRJmdxwfLQndDnqf46lPRgckqAQZVABmugO9bO2/o8=; b=fojyW8ULeQTu8JrI2Xw1/AFQlW
 4Kzcl1jn0tSSLBcllwajDueqzQK+PtKdV5pHQYTpksnnDV+g8w5y9uXP0Dpnvun3oGKrZqs/pQz9p
 Z3d2ktp5/AYIihNBJgNA0ATZd1gABGsCHYTpw2GPdCycbtR6i1tMLQjxCj++kcSmzqVc=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tvvi6-0000h1-6r for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Mar 2025 10:04:11 +0000
Received: by mail-il1-f199.google.com with SMTP id
 e9e14a558f8ab-3d458e61faaso26206935ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 22 Mar 2025 03:04:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742637844; x=1743242644;
 h=content-transfer-encoding:to:from:subject:message-id:in-reply-to
 :date:mime-version:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9ZRJmdxwfLQndDnqf46lPRgckqAQZVABmugO9bO2/o8=;
 b=eLMkThQPmQZg0cUiOFUILP0wdfz88j4dHf3YDt5sb871mOIe/2ogb5nBR0rNbrprOn
 tLKalPdeG2Q1R7wuVM9iUMeHAcUtb+uO1t2pA/xj9JomleHMvVy/pRljTxf0ZtgwvDov
 Fmvsu84IHnsJWi2veTUt/a+ed7ih9z1wcM4K//5Lt1dqFvVBKGUeMx13adx2iDRHTmqz
 15cV/boQyxdXj8y0bEFoGtog7EN/rpeVDXd1twcKT/xqlEVqsTYqj8Uf4VxSwoIWEJ/U
 688N2F9+J7KHcdUmMUx4rGu/z/Bec4yImoKHlAY7L7TUcAmhOV9Nxk/x8GumKJDL9Nv3
 sTDA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUovMcQ3yw1OalQtOoTHfI5/SUu7h8YOw5eCwBonVqWqYS+00JT3gsBXWsSZrzpnd9DKc+nqZobjTkHmQme0g==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yxxrn+ujzFLOh4/d/plZRObWZwHdLgaxvu1x8lQRSPUC9SfzIPI
 C33ocRfeONjDhmAfs7EyTl4kKeTR+1A8dGeA/EUjwCNXySDWZ0s1b8RAGynMd6coPX9Gm77VVIg
 6S7/xSRIDxYOwtCzit85aF2TjZBg4bj8OmbVYVz3f56JaaYw2wCTAHjA=
X-Google-Smtp-Source: AGHT+IEHPg92hC6eejgLC9X1pcfhxQzBhKzRtkctlmGmRSN/iRZWx+0GazE/lsA4SSAsDOkxMLA2ebDZgmLKKU5gIjohupvcNrGq
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:318a:b0:3d5:890b:d9e1 with SMTP id
 e9e14a558f8ab-3d595ec52f0mr70596655ab.1.1742637843551; Sat, 22 Mar 2025
 03:04:03 -0700 (PDT)
Date: Sat, 22 Mar 2025 03:04:03 -0700
In-Reply-To: <20250322093737.197101-1-duttaditya18@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <67de8b13.050a0220.31a16b.0030.GAE@google.com>
To: duttaditya18@gmail.com, jfs-discussion@lists.sourceforge.net, 
 linux-kernel@vger.kernel.org, shaggy@kernel.org, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot tried to test the proposed patch but the build/boot
 failed: 7.299426][ T6437] evict+0x444/0x978 [ 57.300436][ T6437]
 iput+0x740/0x8e8
 [ 57.301425][ T6437] dentry_unlink_inode+0x3a0/0x4e0 [ 57.302787][ T6437]
 __dentry_kill+0x178/0x5e8 [ 57.303966][ T6437] shrin [...] 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.199 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.199 listed in sa-trusted.bondedsender.org]
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [209.85.166.199 listed in psbl.surriel.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
X-Headers-End: 1tvvi6-0000h1-6r
X-Mailman-Approved-At: Sat, 22 Mar 2025 14:06:58 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in add_missing_indices
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
Reply-To: syzbot <syzbot+b974bd41515f770c608b@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot tried to test the proposed patch but the build/boot failed:

7.299426][ T6437]  evict+0x444/0x978
[   57.300436][ T6437]  iput+0x740/0x8e8
[   57.301425][ T6437]  dentry_unlink_inode+0x3a0/0x4e0
[   57.302787][ T6437]  __dentry_kill+0x178/0x5e8
[   57.303966][ T6437]  shrink_kill+0xd4/0x2cc
[   57.305091][ T6437]  shrink_dentry_list+0x31c/0x768
[   57.306403][ T6437]  shrink_dcache_parent+0xc4/0x374
[   57.307725][ T6437]  do_one_tree+0x30/0xfc
[   57.308817][ T6437]  shrink_dcache_for_umount+0xd8/0x188
[   57.310208][ T6437]  generic_shutdown_super+0x68/0x2bc
[   57.311588][ T6437]  kill_litter_super+0x74/0xb8
[   57.312815][ T6437]  binderfs_kill_super+0x44/0x9c
[   57.314091][ T6437]  deactivate_locked_super+0xc4/0x12c
[   57.315477][ T6437]  deactivate_super+0xe0/0x100
[   57.316708][ T6437]  cleanup_mnt+0x34c/0x3dc
[   57.317880][ T6437]  __cleanup_mnt+0x20/0x30
[   57.319022][ T6437]  task_work_run+0x230/0x2e0
[   57.320203][ T6437]  do_exit+0x4e8/0x1acc
[   57.321325][ T6437]  do_group_exit+0x194/0x22c
[   57.322516][ T6437]  get_signal+0x1418/0x1534
[   57.323687][ T6437]  do_signal+0x22c/0x39e4
[   57.324803][ T6437]  do_notify_resume+0x74/0x1f4
[   57.326054][ T6437]  el0_svc+0xac/0x168
[   57.327137][ T6437]  el0t_64_sync_handler+0x84/0x108
[   57.328474][ T6437]  el0t_64_sync+0x198/0x19c
[   57.329650][ T6437] 
[   57.330236][ T6437] The buggy address belongs to the object at ffff0000c6dd0800
[   57.330236][ T6437]  which belongs to the cache kmalloc-512 of size 512
[   57.333883][ T6437] The buggy address is located 8 bytes inside of
[   57.333883][ T6437]  freed 512-byte region [ffff0000c6dd0800, ffff0000c6dd0a00)
[   57.337465][ T6437] 
[   57.338058][ T6437] The buggy address belongs to the physical page:
[   57.339720][ T6437] page: refcount:0 mapcount:0 mapping:0000000000000000 index:0xffff0000c6dd3000 pfn:0x106dd0
[   57.342360][ T6437] head: order:2 mapcount:0 entire_mapcount:0 nr_pages_mapped:0 pincount:0
[   57.344585][ T6437] anon flags: 0x5ffc00000000040(head|node=0|zone=2|lastcpupid=0x7ff)
[   57.346663][ T6437] page_type: f5(slab)
[   57.347694][ T6437] raw: 05ffc00000000040 ffff0000c0001c80 0000000000000000 0000000000000001
[   57.349947][ T6437] raw: ffff0000c6dd3000 000000000010000c 00000000f5000000 0000000000000000
[   57.352181][ T6437] head: 05ffc00000000040 ffff0000c0001c80 0000000000000000 0000000000000001
[   57.354462][ T6437] head: ffff0000c6dd3000 000000000010000c 00000000f5000000 0000000000000000
[   57.356780][ T6437] head: 05ffc00000000002 fffffdffc31b7401 ffffffffffffffff 0000000000000000
[   57.359060][ T6437] head: 0000000000000004 0000000000000000 00000000ffffffff 0000000000000000
[   57.361371][ T6437] page dumped because: kasan: bad access detected
[   57.363069][ T6437] 
[   57.363674][ T6437] Memory state around the buggy address:
[   57.365143][ T6437]  ffff0000c6dd0700: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
[   57.367267][ T6437]  ffff0000c6dd0780: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
[   57.369405][ T6437] >ffff0000c6dd0800: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[   57.371514][ T6437]                       ^
[   57.372638][ T6437]  ffff0000c6dd0880: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[   57.374759][ T6437]  ffff0000c6dd0900: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[   57.376899][ T6437] ==================================================================
[   57.383599][ T6437] Disabling lock debugging due to kernel taint
[   58.115605][ T4279] wlan0: Created IBSS using preconfigured BSSID 50:50:50:50:50:50
[   58.117733][ T4279] wlan0: Creating new IBSS network, BSSID 50:50:50:50:50:50
[   58.126718][   T13] wlan1: Created IBSS using preconfigured BSSID 50:50:50:50:50:50
[   58.128688][   T13] wlan1: Creating new IBSS network, BSSID 50:50:50:50:50:50
[   58.244921][ T6478] chnl_net:caif_netlink_parms(): no params data found
[   58.262999][ T6478] bridge0: port 1(bridge_slave_0) entered blocking state
[   58.265000][ T6478] bridge0: port 1(bridge_slave_0) entered disabled state
[   58.266851][ T6478] bridge_slave_0: entered allmulticast mode
[   58.268702][ T6478] bridge_slave_0: entered promiscuous mode
[   58.271065][ T6478] bridge0: port 2(bridge_slave_1) entered blocking state
[   58.273065][ T6478] bridge0: port 2(bridge_slave_1) entered disabled state
[   58.274890][ T6478] bridge_slave_1: entered allmulticast mode
[   58.276725][ T6478] bridge_slave_1: entered promiscuous mode
[   58.284565][ T6478] bond0: (slave bond_slave_0): Enslaving as an active interface with an up link
[   58.287976][ T6478] bond0: (slave bond_slave_1): Enslaving as an active interface with an up link
[   58.301618][ T6478] team0: Port device team_slave_0 added
[   58.304562][ T6478] team0: Port device team_slave_1 added
[   58.311150][ T6478] batman_adv: batadv0: Adding interface: batadv_slave_0
[   58.313047][ T6478] batman_adv: batadv0: The MTU of interface batadv_slave_0 is too small (1500) to handle the transport of batman-adv packets. Packets going over this interface will be fragmented on layer2 which could impact the performance. Setting the MTU to 1560 would solve the problem.
[   58.319801][ T6478] batman_adv: batadv0: Not using interface batadv_slave_0 (retrying later): interface not active
[   58.323279][ T6478] batman_adv: batadv0: Adding interface: batadv_slave_1
[   58.325087][ T6478] batman_adv: batadv0: The MTU of interface batadv_slave_1 is too small (1500) to handle the transport of batman-adv packets. Packets going over this interface will be fragmented on layer2 which could impact the performance. Setting the MTU to 1560 would solve the problem.
[   58.331871][ T6478] batman_adv: batadv0: Not using interface batadv_slave_1 (retrying later): interface not active
[   58.342983][ T6478] hsr_slave_0: entered promiscuous mode
[   58.344857][ T6478] hsr_slave_1: entered promiscuous mode
[   58.524904][ T6478] netdevsim netdevsim0 netdevsim0: renamed from eth0
[   58.527825][ T6478] netdevsim netdevsim0 netdevsim1: renamed from eth1
[   58.531091][ T6478] netdevsim netdevsim0 netdevsim2: renamed from eth2
[   58.534071][ T6478] netdevsim netdevsim0 netdevsim3: renamed from eth3
[   58.545093][ T6478] bridge0: port 2(bridge_slave_1) entered blocking state
[   58.546954][ T6478] bridge0: port 2(bridge_slave_1) entered forwarding state
[   58.548836][ T6478] bridge0: port 1(bridge_slave_0) entered blocking state
[   58.550658][ T6478] bridge0: port 1(bridge_slave_0) entered forwarding state
[   58.574099][ T6478] 8021q: adding VLAN 0 to HW filter on device bond0
[   58.579075][   T13] bridge0: port 1(bridge_slave_0) entered disabled state
[   58.581405][   T13] bridge0: port 2(bridge_slave_1) entered disabled state
[   58.588160][ T6478] 8021q: adding VLAN 0 to HW filter on device team0
[   58.592344][   T13] bridge0: port 1(bridge_slave_0) entered blocking state
[   58.594257][   T13] bridge0: port 1(bridge_slave_0) entered forwarding state
[   58.604549][   T13] bridge0: port 2(bridge_slave_1) entered blocking state
[   58.606435][   T13] bridge0: port 2(bridge_slave_1) entered forwarding state
[   58.652607][ T6478] 8021q: adding VLAN 0 to HW filter on device batadv0
[   58.794002][ T6478] veth0_vlan: entered promiscuous mode
[   58.797290][ T6478] veth1_vlan: entered promiscuous mode
[   58.805304][ T6478] veth0_macvtap: entered promiscuous mode
[   58.808030][ T6478] veth1_macvtap: entered promiscuous mode
[   58.812929][ T6478] batman_adv: batadv0: Interface activated: batadv_slave_0
[   58.816774][ T6478] batman_adv: batadv0: Interface activated: batadv_slave_1
[   58.819924][ T6478] netdevsim netdevsim0 netdevsim0: set [1, 0] type 2 family 0 port 6081 - 0
[   58.822355][ T6478] netdevsim netdevsim0 netdevsim1: set [1, 0] type 2 family 0 port 6081 - 0
[   58.824638][ T6478] netdevsim netdevsim0 netdevsim2: set [1, 0] type 2 family 0 port 6081 - 0
[   58.826870][ T6478] netdevsim netdevsim0 netdevsim3: set [1, 0] type 2 family 0 port 6081 - 0
[   59.181587][ T6504] Bluetooth: hci0: unexpected cc 0x0c03 length: 249 > 1
[   59.183994][ T6504] Bluetooth: hci0: unexpected cc 0x1003 length: 249 > 9
[   59.186180][ T6504] Bluetooth: hci0: unexpected cc 0x1001 length: 249 > 9
[   59.188548][ T6504] Bluetooth: hci0: unexpected cc 0x0c23 length: 249 > 4
[   59.190979][ T6504] Bluetooth: hci0: unexpected cc 0x0c25 length: 249 > 3
[   59.193973][ T6504] Bluetooth: hci0: unexpected cc 0x0c38 length: 249 > 2
[   59.553232][  T257] netdevsim netdevsim0 netdevsim3 (unregistering): unset [1, 0] type 2 family 0 port 6081 - 0
[   59.653590][  T257] netdevsim netdevsim0 netdevsim2 (unregistering): unset [1, 0] type 2 family 0 port 6081 - 0
1970/01/01 00:00:59 executed programs: 0
[   59.716294][ T5990] Bluetooth: hci0: unexpected cc 0x0c03 length: 249 > 1
[   59.718426][ T5990] Bluetooth: hci0: unexpected cc 0x1003 length: 249 > 9
[   59.720378][ T5990] Bluetooth: hci0: unexpected cc 0x1001 length: 249 > 9
[   59.722847][ T5990] Bluetooth: hci0: unexpected cc 0x0c23 length: 249 > 4
[   59.725079][ T5990] Bluetooth: hci0: unexpected cc 0x0c25 length: 249 > 3
[   59.727126][ T5990] Bluetooth: hci0: unexpected cc 0x0c38 length: 249 > 2
[   59.742863][  T257] netdevsim netdevsim0 netdevsim1 (unregistering): unset [1, 0] type 2 family 0 port 6081 - 0
[   59.781899][ T6514] chnl_net:caif_netlink_parms(): no params data found
[   59.799281][ T6514] bridge0: port 1(bridge_slave_0) entered blocking state
[   59.801138][ T6514] bridge0: port 1(bridge_slave_0) entered disabled state
[   59.803268][ T6514] bridge_slave_0: entered allmulticast mode
[   59.805074][ T6514] bridge_slave_0: entered promiscuous mode
[   59.807421][ T6514] bridge0: port 2(bridge_slave_1) entered blocking state
[   59.809257][ T6514] bridge0: port 2(bridge_slave_1) entered disabled state
[   59.811156][ T6514] bridge_slave_1: entered allmulticast mode
[   59.813176][ T6514] bridge_slave_1: entered promiscuous mode
[   59.820939][ T6514] bond0: (slave bond_slave_0): Enslaving as an active interface with an up link
[   59.824994][ T6514] bond0: (slave bond_slave_1): Enslaving as an active interface with an up link
[   59.833658][ T6514] team0: Port device team_slave_0 added
[   59.835905][ T6514] team0: Port device team_slave_1 added
[   59.843368][ T6514] batman_adv: batadv0: Adding interface: batadv_slave_0
[   59.845253][ T6514] batman_adv: batadv0: The MTU of interface batadv_slave_0 is too small (1500) to handle the transport of batman-adv packets. Packets going over this interface will be fragmented on layer2 which could impact the performance. Setting the MTU to 1560 would solve the problem.
[   59.852280][ T6514] batman_adv: batadv0: Not using interface batadv_slave_0 (retrying later): interface not active
[   59.856347][ T6514] batman_adv: batadv0: Adding interface: batadv_slave_1
[   59.858065][ T6514] batman_adv: batadv0: The MTU of interface batadv_slave_1 is too small (1500) to handle the transport of batman-adv packets. Packets going over this interface will be fragmented on layer2 which could impact the performance. Setting the MTU to 1560 would solve the problem.
[   59.864869][ T6514] batman_adv: batadv0: Not using interface batadv_slave_1 (retrying later): interface not active
[   59.877687][ T6514] hsr_slave_0: entered promiscuous mode
[   59.879458][ T6514] hsr_slave_1: entered promiscuous mode
[   59.881038][ T6514] debugfs: Directory 'hsr0' with parent 'hsr' already present!
[   59.883460][ T6514] Cannot create hsr debugfs directory
[   61.232999][  T257] netdevsim netdevsim0 netdevsim0 (unregistering): unset [1, 0] type 2 family 0 port 6081 - 0
[   61.761844][ T6504] Bluetooth: hci0: command tx timeout
[   62.710778][  T257] bridge_slave_1: left allmulticast mode
[   62.712502][  T257] bridge_slave_1: left promiscuous mode
[   62.714043][  T257] bridge0: port 2(bridge_slave_1) entered disabled state
[   62.716970][  T257] bridge_slave_0: left allmulticast mode
[   62.718466][  T257] bridge_slave_0: left promiscuous mode
[   62.719970][  T257] bridge0: port 1(bridge_slave_0) entered disabled state
[   63.841936][ T6504] Bluetooth: hci0: command tx timeout
[   64.293085][  T257] bond0 (unregistering): (slave bond_slave_0): Releasing backup interface
[   64.333054][  T257] bond0 (unregistering): (slave bond_slave_1): Releasing backup interface
[   64.392493][  T257] bond0 (unregistering): Released all slaves
[   64.469913][  T257] hsr_slave_0: left promiscuous mode
[   64.472182][  T257] hsr_slave_1: left promiscuous mode
[   64.474029][  T257] batman_adv: batadv0: Interface deactivated: batadv_slave_0
[   64.476001][  T257] batman_adv: batadv0: Removing interface: batadv_slave_0
[   64.478226][  T257] batman_adv: batadv0: Interface deactivated: batadv_slave_1
[   64.480195][  T257] batman_adv: batadv0: Removing interface: batadv_slave_1
[   64.482596][ T2353] ieee802154 phy0 wpan0: encryption failed: -22
[   64.484280][ T2353] ieee802154 phy1 wpan1: encryption failed: -22
[   64.486954][  T257] veth1_macvtap: left promiscuous mode
[   64.488498][  T257] veth0_macvtap: left promiscuous mode
[   64.489971][  T257] veth1_vlan: left promiscuous mode
[   64.491353][  T257] veth0_vlan: left promiscuous mode
[   65.921776][ T6504] Bluetooth: hci0: command tx timeout
[   66.482380][  T257] team0 (unregistering): Port device team_slave_1 removed
[   66.683057][  T257] team0 (unregistering): Port device team_slave_0 removed


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
GOMODCACHE='/syzkaller/jobs-2/linux/gopath/pkg/mod'
GONOPROXY=''
GONOSUMDB=''
GOOS='linux'
GOPATH='/syzkaller/jobs-2/linux/gopath'
GOPRIVATE=''
GOPROXY='https://proxy.golang.org,direct'
GOROOT='/usr/local/go'
GOSUMDB='sum.golang.org'
GOTMPDIR=''
GOTOOLCHAIN='auto'
GOTOOLDIR='/usr/local/go/pkg/tool/linux_amd64'
GOVCS=''
GOVERSION='go1.22.7'
GCCGO='gccgo'
GOAMD64='v1'
AR='ar'
CC='gcc'
CXX='g++'
CGO_ENABLED='1'
GOMOD='/syzkaller/jobs-2/linux/gopath/src/github.com/google/syzkaller/go.mod'
GOWORK=''
CGO_CFLAGS='-O2 -g'
CGO_CPPFLAGS=''
CGO_CXXFLAGS='-O2 -g'
CGO_FFLAGS='-O2 -g'
CGO_LDFLAGS='-O2 -g'
PKG_CONFIG='pkg-config'
GOGCCFLAGS='-fPIC -m64 -pthread -Wl,--no-gc-sections -fmessage-length=0 -ffile-prefix-map=/tmp/go-build1032201832=/tmp/go-build -gno-record-gcc-switches'

git status (err=<nil>)
HEAD detached at 6e87cfa299
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
go fmt ./sys/... >/dev/null
touch .descriptions
GOOS=linux GOARCH=arm64 go build "-ldflags=-s -w -X github.com/google/syzkaller/prog.GitRevision=6e87cfa299c98d36e79e8b8718a4126899a3ba2f -X 'github.com/google/syzkaller/prog.gitRevisionDate=20250120-133027'" "-tags=syz_target syz_os_linux syz_arch_arm64 " -o ./bin/linux_arm64/syz-execprog github.com/google/syzkaller/tools/syz-execprog
mkdir -p ./bin/linux_arm64
aarch64-linux-gnu-g++ -o ./bin/linux_arm64/syz-executor executor/executor.cc \
	-O2 -pthread -Wall -Werror -Wparentheses -Wunused-const-variable -Wframe-larger-than=16384 -Wno-stringop-overflow -Wno-array-bounds -Wno-format-overflow -Wno-unused-but-set-variable -Wno-unused-command-line-argument -static-pie -std=c++17 -I. -Iexecutor/_include   -DGOOS_linux=1 -DGOARCH_arm64=1 \
	-DHOSTGOOS_linux=1 -DGIT_REVISION=\"6e87cfa299c98d36e79e8b8718a4126899a3ba2f\"
/usr/lib/gcc-cross/aarch64-linux-gnu/12/../../../../aarch64-linux-gnu/bin/ld: /tmp/ccpnBTge.o: in function `Connection::Connect(char const*, char const*)':
executor.cc:(.text._ZN10Connection7ConnectEPKcS1_[_ZN10Connection7ConnectEPKcS1_]+0xd8): warning: Using 'gethostbyname' in statically linked applications requires at runtime the shared libraries from the glibc version used for linking


Error text is too large and was truncated, full error text is at:
https://syzkaller.appspot.com/x/error.txt?x=114d043f980000


Tested on:

commit:         a8dfb216 jfs: add index corruption check to DT_GETPAGE()
git tree:       https://github.com/kleikamp/linux-shaggy.git jfs-next
kernel config:  https://syzkaller.appspot.com/x/.config?x=2ad2ff9db77be525
dashboard link: https://syzkaller.appspot.com/bug?extid=b974bd41515f770c608b
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
userspace arch: arm64
patch:          https://syzkaller.appspot.com/x/patch.diff?x=16b895e4580000



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
