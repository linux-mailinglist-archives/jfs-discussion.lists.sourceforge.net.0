Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C74CAA69ED
	for <lists+jfs-discussion@lfdr.de>; Fri,  2 May 2025 06:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GlHMUYiLTlOw1sj42OZpZ5tIiADscXC3PO3VsTyfUQo=; b=WS/CigPiC6dqxvD/Qa1hCf/6Sn
	u2/wvcuefhnjABkXODCIKtdwAnn+RmcOXywu8s6sqQWeZTeyORPaWpJogYNbXd51qHL3B5VCnKtYc
	sCmqifR0WVRMJRj2AsXFS5uSk1kmN/ohN2PGTu46wh0WRQA3/82gmXys23j5DgOuL9cs=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uAiNm-000857-Kh;
	Fri, 02 May 2025 04:52:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <huk23@m.fudan.edu.cn>) id 1uAiNg-00084x-56
 for jfs-discussion@lists.sourceforge.net;
 Fri, 02 May 2025 04:52:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OTi7ApWMtPFOuHRDQfUrldYEWzBkLwCGcJMVwp68PQ8=; b=hoshaimWHdlyiY9qKm6NTmWcRS
 8LNNwa6plRdI1LohnzD9VJ1vBK98Ixb97yA6Q4gLsOoXYquWohvsIiLmDwvHj/v3h3sKxFPoUC+yy
 pqy+b9d4eG35JtZiTEmxV3MqQCp+HS+VCUgctF8ZkC5uww/FH7lnj/zAQw3i9v6HTcZg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OTi7ApWMtPFOuHRDQfUrldYEWzBkLwCGcJMVwp68PQ8=; b=C
 Ovcxp8grGENgu2P4uqAdeORXT0/m4BAAX65vhcKdSezv59E2957DAxUmvtybJgXR211iW0clHoadt
 RAki5M4U7VRLhkrsllp3ZTPCZZVnO+oGyw0SUvA/aYNuaGtFGqs6Of1xqOI1/mbZJsq+W4Nm2apjA
 f8/8l/Bj8iM/CDgg=;
Received: from smtp-usa1.onexmail.com ([52.205.10.60])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uAiNJ-0003Lo-QY for jfs-discussion@lists.sourceforge.net;
 Fri, 02 May 2025 04:52:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=m.fudan.edu.cn;
 s=sorc2401; t=1746161360;
 bh=OTi7ApWMtPFOuHRDQfUrldYEWzBkLwCGcJMVwp68PQ8=;
 h=From:To:Subject:Date:Message-ID:MIME-Version;
 b=lU2i+a1nWXkmo3BYQ6WaTlCCBf1oj6HT1tgYzvRoJcCgkxD6umtFzNIjN1HSz/iV7
 mGjEE69Mkf+POqG+SNRKLv3yvfb6q1/Mtqxdhl15Y/Tzf9wUVsfjDZjw5FhZQl0ZfQ
 L7F45Wt1U6r0goeYC+Xf4x8DtiDUKFoXgRQBm0sY=
X-QQ-mid: zesmtpip3t1746161358tf79394f1
X-QQ-Originating-IP: hdQxLLQ+GVlQDxNtMWIJsoe5jeqhquoI7ZB2ZOBN+Io=
Received: from TYSPR06MB7158.apcprd06.prod.out ( [localhost])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Fri, 02 May 2025 12:49:16 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12450518463310796809
EX-QQ-RecipientCnt: 6
To: Dave Kleikamp <shaggy@kernel.org>
Thread-Topic: BUG:read_message failed in LogSyncRelease
Thread-Index: AQHbuxzN08Vq1io1BUKiwvicApeecg==
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Fri, 2 May 2025 04:49:16 +0000
Message-ID: <TYSPR06MB7158A2235E4058D3E32818A5F68D2@TYSPR06MB7158.apcprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
msip_labels: 
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:m.fudan.edu.cn:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MyirvGjpKb1jhWkj0AFLoslnFQ0/aHTiJlAsblNXmjsc5flbYYrtBON/
 KR5mdThTLLIhGD2gOdeZYF+8Pl7Ah5NlHsh1HD94SiK2XqB4fO0bgMUMFuHnjy1vbTkcISx
 UoI4KM8W6yr/kj+2BhM+RVUX4/Ms44jREt6JJyd5SLe9t4kgrCynRdL815QWnaR9EmpegBR
 SK7TLG0oy/PbDdV1JJmlKDBEDwG3B9Q5ZMhhZQwGfbnfGPe7hekkvgC+iUF0qj9Nu3HRzYZ
 ckA+jVVTCwDPiQBIjQ5GAOa1XSQMSgRLZ1bv2NgsRzltZDrXNZKwp/4Kd7Mf5vonSz+BmwC
 MsAb+OeWodA/UVXhcXz5AIMBEkKvPPEWTnxs1jkLw/I+Dis+GxiARqe/cAzfq/YQJqM1Kng
 l7TcenAh2QzaGpsBAZFS1GefgF2zH8tjcvBC4B1FaFl3X7uUUMhzVfJ4gjZ+6rp8Vo8wDwg
 kWiOrvYXq7rEI9voLFaWFDcr7F3kxesu1CRQPaNH13dsDT14BhvNqtxo1UvzuMXy4SoS63v
 3OphvE/N+BUDmCmKYjVz1/pxOJ6S7zJ5HzpmpqlcsKseGtKjCNyofFfs29UuWtLx06aDhrL
 BFg9VJy9ncmPotnQ1Nms+WbHh9E+EpNlKCEyhpOKY5WQYL0+ym8r3m41OuQCr044F1O1Lz5
 Lxx84wWwFxWO47Jm7JY1KRc72HtRbxIQdtWQFLhqZTQd0YoDIrLYf6XRrLBD85jacBOnBHU
 A8rRr2ujvx4p+l2p6S1pVxSFuVWPOsXhW5dsO86H6j0uAddMGVWwBRI0NlS8Vf/un2nAST0
 1ouqkghJRDj6UhN2iB2GnnnIVwXU+iQML8Q9612QWj6g9VJCzKtllqlXZvMo5/lyrN5kyD7
 D7Sju7mt52XNUTpxn1a1KhWeH8Dkzw691IPGaeNaZ2Ggya8nhlszjMNAaX4o7CRhBZBU0MI
 lSBqWKVi68aheIqod8llGBx2QTHr2hlmYh1nOwqxjuFTpU9+zVuKmOlsSZF83UJRvLCYsWC
 Q6bQ8bAR1XqrTB8R+sxirejH6zdYaZSXPJr1ICfdzfaXXhQ2ud
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear Maintainers, When using our customized Syzkaller to fuzz
 the latest Linux kernel, the following crash (36th)was triggered. HEAD commit:
 6537cfb395f352782918d8ee7b7f10ba2cc3cbf2 git tree: upstream
 Output:https://github.com/pghk13/Kernel-Bug/blob/main/0103_6.13rc5_%E6%9C%AA%E6%8A%A5%E5%91%8A/%E6%9C%89%E7%9B%B8%E4%BC%BC%E6%A
 [...] Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [52.205.10.60 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [52.205.10.60 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1uAiNJ-0003Lo-QY
Subject: [Jfs-discussion] BUG:read_message failed in LogSyncRelease
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
From: huk23--- via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: "huk23@m.fudan.edu.cn" <huk23@m.fudan.edu.cn>
Cc: Jiaji Qin <jjtan24@m.fudan.edu.cn>, Shuoran Bai <baishuoran@hrbeu.edu.cn>,
 "syzkaller@googlegroups.com" <syzkaller@googlegroups.com>,
 jfs-discussion <jfs-discussion@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Dear Maintainers,




When using our customized Syzkaller to fuzz the latest Linux kernel, the fo=
llowing crash (36th)was triggered.




HEAD commit: 6537cfb395f352782918d8ee7b7f10ba2cc3cbf2
git tree: upstream
Output:https://github.com/pghk13/Kernel-Bug/blob/main/0103_6.13rc5_%E6%9C%A=
A%E6%8A%A5%E5%91%8A/%E6%9C%89%E7%9B%B8%E4%BC%BC%E6%A3%80%E7%B4%A2%E8%AE%B0%=
E5%BD%95/36-kernel%20BUG%20in%20txAbort/36call_trace.txt
Kernel config:https://github.com/pghk13/Kernel-Bug/blob/main/config.txt
C reproducer:https://github.com/pghk13/Kernel-Bug/blob/main/0103_6.13rc5_%E=
6%9C%AA%E6%8A%A5%E5%91%8A/%E6%9C%89%E7%9B%B8%E4%BC%BC%E6%A3%80%E7%B4%A2%E8%=
AE%B0%E5%BD%95/36-kernel%20BUG%20in%20txAbort/36repro.c
Syzlang reproducer: https://github.com/pghk13/Kernel-Bug/blob/main/0103_6.1=
3rc5_%E6%9C%AA%E6%8A%A5%E5%91%8A/%E6%9C%89%E7%9B%B8%E4%BC%BC%E6%A3%80%E7%B4=
%A2%E8%AE%B0%E5%BD%95/36-kernel%20BUG%20in%20txAbort/36repro.txt



This error is triggered in the transaction abort function txAbort, which is=
 located in the JFS transaction manager code. The error occurs on line 2796=
 of the fs/jfs/jfs_txnmgr.c file, asserting that mp->nohomeok failed. This =
indicates that in the specified "metapage" (MP) object, the value of the no=
homeok flag does not meet the expected condition (possibly 0 or false, whil=
e the assertion requires it to be non-zero or true).
We have reproduced this issue several times on 6.15-rc1 again.






If you fix this issue, please add the following tag to the commit:
Reported-by: Kun Hu <huk23@m.fudan.edu.cn>,=A0Jiaji Qin <jjtan24@m.fudan.ed=
u.cn>, Shuoran Bai <baishuoran@hrbeu.edu.cn>

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
read_mapping_page failed!
BUG at fs/jfs/jfs_txnmgr.c:2796 assert(mp->nohomeok)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_txnmgr.c:2796!
Oops: invalid opcode: 0000 [#1] SMP KASAN NOPTI
CPU: 1 UID: 0 PID: 9491 Comm: syz-executor237 Not tainted 6.15.0-rc1 #1 PRE=
EMPT(full)
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.13.0-1ubuntu1=
.1 04/01/2014
RIP: 0010:txAbort+0x51e/0x570
Code: e9 96 fd ff ff e8 22 2c 73 fe 48 c7 c1 00 4f cd 8b ba ec 0a 00 00 48 =
c7 c6 e0 41 cd 8b 48 c7 c7 20 42 cd 8b e8 23 5d 52 fe 90 <0f> 0b e8 fb 2b 7=
3 fe 48 c7 c1 40 4f cd 8b ba ed 0a 00 00 48 c7 c6
RSP: 0018:ffffc90014c7f4c0 EFLAGS: 00010286
RAX: 0000000000000034 RBX: dffffc0000000000 RCX: ffffffff819a5799
RDX: 0000000000000000 RSI: ffff888022bc0000 RDI: 0000000000000002
RBP: 0000000000000003 R08: fffffbfff1c4bb00 R09: ffffed100fdc47ba
R10: ffffed100fdc47b9 R11: ffff88807ee23dcb R12: 0000000000000000
R13: ffffc90001b69110 R14: ffff8880548a2ba0 R15: ffff8880548a2c48
FS: =A0000055558797f880(0000) GS:ffff8880eb36b000(0000) knlGS:0000000000000=
000
CS: =A00010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f5264200058 CR3: 0000000023ba8000 CR4: 0000000000750ef0
PKRU: 55555554
Call Trace:
=A0<TASK>
=A0txCommit+0x2149/0x4720
=A0jfs_create+0x808/0xb40
=A0lookup_open+0x11ba/0x15f0
=A0path_openat+0xed3/0x2980
=A0do_filp_open+0x1f9/0x2f0
=A0do_sys_openat2+0x4e3/0x710
=A0do_sys_open+0xc6/0x150
=A0__x64_sys_openat+0x9d/0x110
=A0do_syscall_64+0xcf/0x260
=A0entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fbeaee100bd
Code: c3 e8 17 2c 00 00 0f 1f 80 00 00 00 00 f3 0f 1e fa 48 89 f8 48 89 f7 =
48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff f=
f 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffebb56d188 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007fbeaee100bd
RDX: 000000000000275a RSI: 0000000020000040 RDI: 00000000ffffff9c
RBP: 0000000000000000 R08: 0000000000000001 R09: 0000000000000001
R10: 0000000000000000 R11: 0000000000000246 R12: 00007ffebb56d19c
R13: 00007ffebb56d1a0 R14: 0000000000000000 R15: 0000000000000000
=A0</TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:txAbort+0x51e/0x570
Code: e9 96 fd ff ff e8 22 2c 73 fe 48 c7 c1 00 4f cd 8b ba ec 0a 00 00 48 =
c7 c6 e0 41 cd 8b 48 c7 c7 20 42 cd 8b e8 23 5d 52 fe 90 <0f> 0b e8 fb 2b 7=
3 fe 48 c7 c1 40 4f cd 8b ba ed 0a 00 00 48 c7 c6
RSP: 0018:ffffc90014c7f4c0 EFLAGS: 00010286
RAX: 0000000000000034 RBX: dffffc0000000000 RCX: ffffffff819a5799
RDX: 0000000000000000 RSI: ffff888022bc0000 RDI: 0000000000000002
RBP: 0000000000000003 R08: fffffbfff1c4bb00 R09: ffffed100fdc47ba
R10: ffffed100fdc47b9 R11: ffff88807ee23dcb R12: 0000000000000000
R13: ffffc90001b69110 R14: ffff8880548a2ba0 R15: ffff8880548a2c48
FS: =A0000055558797f880(0000) GS:ffff8880eb36b000(0000) knlGS:0000000000000=
000
CS: =A00010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f5264200058 CR3: 0000000023ba8000 CR4: 0000000000750ef0
PKRU: 55555554
2025/04/23 15:35:05 reproducing crash 'kernel BUG in txAbort': final repro =
crashed as (corrupted=3Dfalse):
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D


thanks,
Kun Hu




_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
