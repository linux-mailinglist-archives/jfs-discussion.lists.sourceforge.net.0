Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 121A1C75153
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Nov 2025 16:45:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QJ+3t+JxwlHSIbP0WOQmOxcLcbxq4X2XOL9LGI+nX10=; b=QQX/6gINscPeJadIhvh+/NzDah
	OIIoPKjeHGDOYnUogGAS7b7nfTeZz2d2sYPElbyoU6qGAn3q+nBITPWEmIYKkI8aHbAPZa6j9/VPa
	arxbI0vCaTBCuHOEEomMHa5V8MccwllXB/4K4gGIg+Mf2LkYd4lFh8toWnJQgSaLfArw=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vM6pt-0003Nw-DD;
	Thu, 20 Nov 2025 15:44:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=34190f787f=yun.zhou@windriver.com>)
 id 1vM6pq-0003Np-H7 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Nov 2025 15:44:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rmIyIFzc7HwECM/aHoi0CAu4z6vhrBIWl19yNdn/nuo=; b=lrCTviZ7JBeLGybskGVeACT5Ee
 XEzn3Eb/zJNRDDOKtnmR2p6KonUnIcRV+Vqx2wjsXvtMYuMVt4tI72K2DdHRywxpKsGXUfASkUjZy
 el/brpiKibdUj+y/snyWvN12jZXzpP9t58glIdwmdbWlBKuXlYE/1A7H5YYHjSY0f2WA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rmIyIFzc7HwECM/aHoi0CAu4z6vhrBIWl19yNdn/nuo=; b=V
 yE73bynEugibqbCaUFsRHzKXeRFY45fZaX3Cwnb1cDfiN+F++usDXdPAjSHHKYtYlV30tP724fL3L
 RqZnnueWnvX3QzFycHuuMdoIpemBMFOVUVH+nQvTN3CTvxpb327pf1vrLardAGgqzOynoqWR+GeWz
 fvuUORNYiOpBsGz8=;
Received: from mx0a-0064b401.pphosted.com ([205.220.166.238])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vM6pp-0002MZ-Qe for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Nov 2025 15:44:38 +0000
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5AKEm1NW343869; Thu, 20 Nov 2025 07:43:53 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=cc:content-transfer-encoding:content-type:date:from
 :message-id:mime-version:subject:to; s=PPS06212021; bh=rmIyIFzc7
 HwECM/aHoi0CAu4z6vhrBIWl19yNdn/nuo=; b=tDujE00SQUA3ZoAPMcuWexT2o
 Wgw/U8Mhba1OLvqousYVkaf0gg9yOtWXJGqPM0Iyhb7Qq9Lj7t0SsQwZzxTc8wan
 W/BVbV0YMBNusWNvdDetyoAmRa5gPkI9rQ7grLzpAlvTvstQJtAfzwzYG5BtDQnq
 1r/WAKCq/yJvvVOck2DAKlNvERSRvwGiGLIjoZz4mhQfpw4eGklV+tzGu9QHIuuK
 2PrtcHG31qgbaKAmhBpBGCctuqvMN4Lh+3TIFQ3Bun3KLi+8JuWUOfKFj2ZCD4GW
 7BMKQZ0X64M11KSD0PuYHED4Nc+vwBRa6Fc278YMaijibd8LkRK1b2X7ARA5w==
Received: from ala-exchng02.corp.ad.wrs.com ([128.224.246.37])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4aeswjedvb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 20 Nov 2025 07:43:53 -0800 (PST)
Received: from ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) by
 ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.61; Thu, 20 Nov 2025 07:43:53 -0800
Received: from pek-lpd-ccm6.wrs.com (10.11.232.110) by
 ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) with Microsoft SMTP Server id
 15.1.2507.61 via Frontend Transport; Thu, 20 Nov 2025 07:43:51 -0800
To: <shaggy@kernel.org>
Date: Thu, 20 Nov 2025 23:43:50 +0800
Message-ID: <20251120154350.1041513-1-yun.zhou@windriver.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=BqiQAIX5 c=1 sm=1 tr=0 ts=691f3739 cx=c_pps
 a=Lg6ja3A245NiLSnFpY5YKQ==:117 a=Lg6ja3A245NiLSnFpY5YKQ==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=t7CeM3EgAAAA:8
 a=WdL6VqjaRq5tQHEv-3AA:9 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-GUID: Eqw-Bb_E5Q6QSoS6FmAzDbHwJBS22LcC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDEwMyBTYWx0ZWRfX2FSRmxeFkKC4
 iMmD/brP2uN52gkuUXwe854L0vCXemEma1/FnE9ssBzLs9qlRe4jZsVpWZWRo5kTk4rnc8EWmC4
 dB1A0Hx2DdlZGm1fLpxFotEIkozqC8o4d92YOjB/JOh3AR/CS/J/nu7TWDfjsEVWn69xpQzJ/2j
 SvQ6sTyGRkcyPFdoIN8bJ77NvwStUntY8iIBT5kw9970bfPrvJ+hLPYiB6I43h/vQ13AYCQhed4
 j5eUi9tdVGrl9A2qMwGxouwEY7e+u7knQDOtJz8sQvPJDwXm8DywIhMZ/ZfzT543AWycRAKLh4Q
 3lMbpe+g969tOVPJszoYMlrRUTX8IglTjPMw5Yu32P2apBJQpCQPQS+EZ694Ab9NF+oPcmwPLbq
 m+/x7u4iE+G7x4VTIlMfKMZ6UeFuaQ==
X-Proofpoint-ORIG-GUID: Eqw-Bb_E5Q6QSoS6FmAzDbHwJBS22LcC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_05,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 suspectscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511200103
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add check_dtroot() to validate dtroot_t integrity, focusing
 on preventing index/pointer overflows from on-disk corruption. Key checks:
 - freecnt bounded by [0, DTROOTMAXSLOT-1] (slot[0] reserved for header).
 - freelist validity: -1 when freecnt=0; 1~DTROOTMAXSLOT-1 when non-zero, with
 linked list checks (no duplicates, pr [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.166.238 listed in wl.mailspike.net]
X-Headers-End: 1vM6pp-0002MZ-Qe
Subject: [Jfs-discussion] [PATCH] jfs: add dtroot integrity check to prevent
 index out-of-bounds
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

Add check_dtroot() to validate dtroot_t integrity, focusing on preventing
index/pointer overflows from on-disk corruption.

Key checks:
 - freecnt bounded by [0, DTROOTMAXSLOT-1] (slot[0] reserved for header).
 - freelist validity: -1 when freecnt=0; 1~DTROOTMAXSLOT-1 when non-zero,
   with linked list checks (no duplicates, proper termination via next=-1).
 - stbl bounds: nextindex within stbl array size; entries within 0~8, no
   duplicates (excluding idx=0).

Invoked in copy_from_dinode() when loading directory inodes, catching
corruption early before directory operations trigger out-of-bounds access.

This fixes the following UBSAN warning.

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

Signed-off-by: Yun Zhou <yun.zhou@windriver.com>
---
 fs/jfs/jfs_dtree.c | 83 ++++++++++++++++++++++++++++++++++++++++++++++
 fs/jfs/jfs_dtree.h |  2 ++
 fs/jfs/jfs_imap.c  |  4 +++
 3 files changed, 89 insertions(+)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index d9cf2071c41f..e1cbc3a04f3f 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -4316,3 +4316,86 @@ int dtModify(tid_t tid, struct inode *ip,
 
 	return 0;
 }
+
+bool check_dtroot(dtroot_t *p)
+{
+	DECLARE_BITMAP(bitmap, DTROOTMAXSLOT) = {0};
+	int i;
+
+	/* freecnt cannot be negative or exceed DTROOTMAXSLOT-1
+	 * (since slot[0] is occupied by the header).
+	 */
+	if (unlikely(p->header.freecnt < 0 ||
+				p->header.freecnt > DTROOTMAXSLOT - 1)) {
+		jfs_err("Bad freecnt:%d in dtroot\n", p->header.freecnt);
+		return false;
+	} else if (p->header.freecnt == 0) {
+		/* No free slots: freelist must be -1 */
+		if (unlikely(p->header.freelist != -1)) {
+			jfs_err("freecnt=0, but freelist=%d in dtroot\n",
+					p->header.freelist);
+			return false;
+		}
+	} else {
+		int fsi, i;
+		/* When there are free slots, freelist must be a valid slot index in
+		 * 1~DTROOTMAXSLOT-1(since slot[0] is occupied by the header).
+		 */
+		if (unlikely(p->header.freelist < 1 ||
+					p->header.freelist >= DTROOTMAXSLOT)) {
+			jfs_err("Bad freelist:%d in dtroot\n", p->header.freelist);
+			return false;
+		}
+
+		/* Traverse the free list to check validity of all node indices */
+		fsi = p->header.freelist;
+		for (i = 0; i < p->header.freecnt - 1; i++) {
+			/* Check for duplicate indices in the free list */
+			if (unlikely(__test_and_set_bit(fsi, bitmap))) {
+				jfs_err("duplicate index%d in slot in dtroot\n", fsi);
+				return false;
+			}
+			fsi = p->slot[fsi].next;
+
+			/* Ensure the next slot index in the free list is valid */
+			if (unlikely(fsi < 1 || fsi >= DTROOTMAXSLOT)) {
+				jfs_err("Bad index:%d in slot in dtroot\n", fsi);
+				return false;
+			}
+		}
+
+		/* The last node in the free list must terminate with next = -1 */
+		if (unlikely(p->slot[fsi].next != -1)) {
+			jfs_err("Bad next:%d of the last slot in dtroot\n",
+					p->slot[fsi].next);
+			return false;
+		}
+	}
+
+	/* Validate nextindex (next free entry index in stbl)
+	 * stbl array has size 8 (indices 0~7), so nextindex must be within this range
+	 */
+	if (unlikely(p->header.nextindex >= ARRAY_SIZE(p->header.stbl))) {
+		jfs_err("Bad nextindex:%d in dtroot\n", p->header.nextindex);
+		return false;
+	}
+
+	/* Validate index validity of stbl array (8 elements)
+	 * Each entry in stbl is a slot index, with valid range: -1 (invalid) or 0~8 (slot[0]~slot[8])
+	 */
+	for (i = 0; i < p->header.nextindex; i++) {
+		int idx = p->header.stbl[i];
+		if (unlikely(idx < 0 || idx >= 9)) {
+			jfs_err("Bad index:%d of stbl[%d] in dtroot\n", idx, i);
+			return false; /* stbl entry points out of slot array range */
+		}
+
+		/* Check for duplicate valid indices (skip check for idx=0) */
+		if (unlikely(idx && __test_and_set_bit(idx, bitmap))) {
+			jfs_err("Duplicate index:%d in stbl in dtroot\n", idx);
+			return false;
+		}
+	}
+
+    return true;
+}
diff --git a/fs/jfs/jfs_dtree.h b/fs/jfs/jfs_dtree.h
index 1758289647a0..94dc16123c87 100644
--- a/fs/jfs/jfs_dtree.h
+++ b/fs/jfs/jfs_dtree.h
@@ -253,4 +253,6 @@ extern int dtModify(tid_t tid, struct inode *ip, struct component_name * key,
 		    ino_t * orig_ino, ino_t new_ino, int flag);
 
 extern int jfs_readdir(struct file *file, struct dir_context *ctx);
+
+extern bool check_dtroot(dtroot_t *p);
 #endif				/* !_H_JFS_DTREE */
diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 194cb05b42b9..7056c8d6fda2 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -3111,6 +3111,10 @@ static int copy_from_dinode(struct dinode * dip, struct inode *ip)
 
 	if (S_ISDIR(ip->i_mode)) {
 		memcpy(&jfs_ip->u.dir, &dip->u._dir, 384);
+		if (!check_dtroot(&jfs_ip->i_dtroot)) {
+			jfs_err("Corrupt dtroot\n");
+			return -EIO;
+		}
 	} else if (S_ISREG(ip->i_mode) || S_ISLNK(ip->i_mode)) {
 		memcpy(&jfs_ip->i_xtroot, &dip->di_xtroot, 288);
 	} else
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
