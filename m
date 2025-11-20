Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC33C751F2
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Nov 2025 16:50:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=y5eyVwhBgRe+7DSyYMPDgpTRoBim8tUjtV1btuzhcsw=; b=aLQfakYyI5lTEB+N0JAoUoZlwH
	woS1DlfDaIVPhFCdWCZZ8CTXHy27UeGDRUfFqdS0Vc2oxpOeHlp+j6gX+HQtHvN3f6jGHeG5zD1Pk
	r8kq4L1+QiNXigi+WyNIm7j2KZT+6g3/sRKYP1rRfV7qoGkan8HGFyDBaMqTjzqvR9cA=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vM6pr-0005o1-GS;
	Thu, 20 Nov 2025 15:44:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=34190f787f=yun.zhou@windriver.com>)
 id 1vM6pk-0005nq-Nx for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Nov 2025 15:44:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HsTSciYfOKB1VLsx9zPc895qSM+/HHnQTSav0zqfnzI=; b=NXmoIOK/fWR19gD624bgPrBSDs
 5ZPK5Lll3kor4Gh/jYcv6pr+sDLMxOl+rPmmgWYkzSwMJ/Izf3pxFZNvr/fTgNCiBDFlSAe5KMolx
 6pgHpX8MSadxHueyqq8qgN8z4XGoMzARBfLek5LkliALtkup3NqcvdQAuHzWIHhvDLKw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HsTSciYfOKB1VLsx9zPc895qSM+/HHnQTSav0zqfnzI=; b=l
 kBMhZVV01lrAhZNJe8eM6iiFUvGqv30N9AWfTl2FTRL4vfz2gWb5TO90uS+gQj3lBXgXL/8uFye5n
 qdeXfsirw1Raq7ofb5t5O51MIBM1HZZr3Zu9uaPn7uR7NhDH6aGS3dJsq3iuqaPYr/V5LCwTu464S
 QUPd1UJEmuBZFiRA=;
Received: from mx0b-0064b401.pphosted.com ([205.220.178.238])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vM6pj-0002MI-Q1 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Nov 2025 15:44:33 +0000
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5AK60nlG867668; Thu, 20 Nov 2025 15:43:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=cc:content-transfer-encoding:content-type:date:from
 :message-id:mime-version:subject:to; s=PPS06212021; bh=HsTSciYfO
 KB1VLsx9zPc895qSM+/HHnQTSav0zqfnzI=; b=m2KZ3553Hyz/LqdAoQp4XUmAq
 SZWrfUn5ANqrAGOL8w4gZU46ANdP1LQIo6/t/vZ2XRxHWLxmrSTXMPezw94gv07w
 JQmBF80vtaQO7eByoppoU3afPq0iCYOu+uc6xg0lqnWHOonvDxltNhuy71fMsjbQ
 tmUZrPmropgVuf/wopwTgGM2iIOABGIzxYml01nhxKKssEXSR7OcRivnJ2lBRB92
 54vExGcyF8bZbAhEeyk6sVf1kmlCLO31cWoPIlaHIlxaHtguYkRTdgwRWfTGm9rl
 XZrIx1PzAYKd5jjcsIj386yVOM402aVbHzGXJy2JI9RovwkFsUfrPDeGEZH/Q==
Received: from ala-exchng02.corp.ad.wrs.com ([128.224.246.37])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4ahayrsu5f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 20 Nov 2025 15:43:27 +0000 (GMT)
Received: from ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) by
 ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.61; Thu, 20 Nov 2025 07:43:26 -0800
Received: from pek-lpd-ccm6.wrs.com (10.11.232.110) by
 ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) with Microsoft SMTP Server id
 15.1.2507.61 via Frontend Transport; Thu, 20 Nov 2025 07:43:24 -0800
To: <shaggy@kernel.org>
Date: Thu, 20 Nov 2025 23:43:23 +0800
Message-ID: <20251120154323.1039302-1-yun.zhou@windriver.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: hSs8Yc79CwIj7IPTZ8SVo5j0gwya67Ig
X-Authority-Analysis: v=2.4 cv=EdXFgfmC c=1 sm=1 tr=0 ts=691f371f cx=c_pps
 a=Lg6ja3A245NiLSnFpY5YKQ==:117 a=Lg6ja3A245NiLSnFpY5YKQ==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=hSkVLCK3AAAA:8 a=t7CeM3EgAAAA:8
 a=eUl833jy40kcsfN9NwAA:9 a=cQPPKAXgyycSBL8etih5:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-GUID: hSs8Yc79CwIj7IPTZ8SVo5j0gwya67Ig
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDEwMyBTYWx0ZWRfX95IEndpe1Mgq
 pRM0+3yXRn08MRShJDNIfA2ptvPBsX25AdNgQnh8SZYVfSwYIoNhuojjH9ohDIdlntdD4qeFLIT
 yCzzAj5JcUw5N+2BREQPycIRqjU0Z6V0ga7lWMCse+4I+fEwFV3Phd8e3oASc1BuDlUlMAY5vFN
 vKihoLxul3E8OSkJ2ZbLGumC9FrrRZqFeuw2qPEzeCmzs3o6ZgP8Cu9CKlO0/nPTGll6MUFHQq1
 +4t/F4lKLhvcqh8DZqVcDqtPaQBFAyAMMr2YRO6DYZCtpWeGxU1dr9iBrmqsway38ruEVEcgvnF
 OpxFY/fxG/Jyn5xr4aV/OswShqEZBuNWayyQ1JQ25Dofng2GHQEcsSposUx8y7+FKllfi5dv776
 n+QFs5YhuwxPWuTRXU4/hpzpp3FaFQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_05,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 suspectscore=0 bulkscore=0 impostorscore=0
 phishscore=0 malwarescore=0 clxscore=1011 priorityscore=1501
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511200103
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The fixed-size lv[20] array in struct linelock can't
 accommodate
 maxcnt=TLOCKLONG (28), causing out-of-bounds access. Replace with a flexible
 array member to dynamically fit both TLOCKSHORT (20) and T [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.178.238 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vM6pj-0002MI-Q1
Subject: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 linelock by using flexible array for lv
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
From: Yun Zhou via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Yun Zhou <yun.zhou@windriver.com>
Cc: jfs-discussion@lists.sourceforge.net, yun.zhou@windriver.com,
 eadavis@qq.com, linux-kernel@vger.kernel.org, kovalev@altlinux.org,
 contact@arnaud-lcm.com, zheng.yu@northwestern.edu, rand.sec96@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The fixed-size lv[20] array in struct linelock can't accommodate
maxcnt=TLOCKLONG (28), causing out-of-bounds access. Replace with a
flexible array member to dynamically fit both TLOCKSHORT (20) and
TLOCKLONG (28) scenarios, resolving the UBSAN warning below.

[  101.832754][ T5960] ------------[ cut here ]------------
[  101.832762][ T5960] UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:3713:8
[  101.832792][ T5960] index -1 is out of range for type 'struct dtslot[128]'
[  101.832807][ T5960] CPU: 2 UID: 0 PID: 5960 Comm: 5f7f0caf9979e9d Tainted: G            E       6.18.0-rc4-00250-g2603eb907f03 #119 PREEMPT_{RT,(full
[  101.832817][ T5960] Tainted: [E]=UNSIGNED_MODULE
[  101.832819][ T5960] Hardware name: QEMU Ubuntu 25.04 PC (i440FX + PIIX, 1996), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
[  101.832823][ T5960] Call Trace:
[  101.832833][ T5960]  <TASK>
[  101.832838][ T5960]  dump_stack_lvl+0x189/0x250
[  101.832909][ T5960]  ? __pfx_dump_stack_lvl+0x10/0x10
[  101.832925][ T5960]  ? __pfx__printk+0x10/0x10
[  101.832934][ T5960]  ? rt_mutex_slowunlock+0x493/0x8a0
[  101.832959][ T5960]  ubsan_epilogue+0xa/0x40
[  101.832966][ T5960]  __ubsan_handle_out_of_bounds+0xe9/0xf0
[  101.833007][ T5960]  dtInsertEntry+0x936/0x1430 [jfs]
[  101.833094][ T5960]  dtSplitPage+0x2c8b/0x3ed0 [jfs]
[  101.833177][ T5960]  ? __pfx_rt_mutex_slowunlock+0x10/0x10
[  101.833193][ T5960]  dtInsert+0x109b/0x6000 [jfs]
[  101.833283][ T5960]  ? rt_mutex_slowunlock+0x493/0x8a0
[  101.833296][ T5960]  ? __pfx_rt_mutex_slowunlock+0x10/0x10
[  101.833307][ T5960]  ? rt_spin_unlock+0x161/0x200
[  101.833315][ T5960]  ? __pfx_dtInsert+0x10/0x10 [jfs]
[  101.833391][ T5960]  ? txLock+0xaf9/0x1cb0 [jfs]
[  101.833477][ T5960]  ? dtInitRoot+0x22a/0x670 [jfs]
[  101.833556][ T5960]  jfs_mkdir+0x6ec/0xa70 [jfs]
[  101.833636][ T5960]  ? __pfx_jfs_mkdir+0x10/0x10 [jfs]
[  101.833721][ T5960]  ? generic_permission+0x2e5/0x690
[  101.833760][ T5960]  ? bpf_lsm_inode_mkdir+0x9/0x20
[  101.833776][ T5960]  vfs_mkdir+0x306/0x510
[  101.833786][ T5960]  do_mkdirat+0x247/0x590
[  101.833795][ T5960]  ? __pfx_do_mkdirat+0x10/0x10
[  101.833804][ T5960]  ? getname_flags+0x1e5/0x540
[  101.833815][ T5960]  __x64_sys_mkdir+0x6c/0x80
[  101.833823][ T5960]  do_syscall_64+0xfa/0xfa0
[  101.833832][ T5960]  ? lockdep_hardirqs_on+0x9c/0x150
[  101.833840][ T5960]  ? entry_SYSCALL_64_after_hwframe+0x77/0x7f
[  101.833847][ T5960]  ? exc_page_fault+0xab/0x100
[  101.833856][ T5960]  entry_SYSCALL_64_after_hwframe+0x77/0x7f

Reported-by: syzbot+5f7f0caf9979e9d09ff8@syzkaller.appspotmail.com
Signed-off-by: Yun Zhou <yun.zhou@windriver.com>
---
 fs/jfs/jfs_txnmgr.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_txnmgr.h b/fs/jfs/jfs_txnmgr.h
index ba71eb5ced56..391c0d28e1bc 100644
--- a/fs/jfs/jfs_txnmgr.h
+++ b/fs/jfs/jfs_txnmgr.h
@@ -165,7 +165,7 @@ struct linelock {
 	u8 l2linesize;		/* 1: log2 of linesize */
 	/* (8) */
 
-	struct lv lv[20];	/* 40: */
+	struct lv lv[];	/* 40: */
 };				/* (48) */
 
 #define dt_lock	linelock
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
