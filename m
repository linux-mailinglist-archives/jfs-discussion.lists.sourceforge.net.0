Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 206A9C75154
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Nov 2025 16:45:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pAjTqiYFNu22G20486T++AgF1FWBefoSGWzOZFt/f60=; b=GSmLU+o5xabm3oPTT1phtEweQk
	+p5NCJ+TTffUasJKJdPq/ucNQ2BeZJTUYPkTyHaJcDzROXzhbQlsy39VbhCUBn5lmey5brgPVwF8P
	q9wPAmAkheqzSzrt6c12LM8R6SzDKBBaa0tdvG7Tz8ovP+ZiYOL/uV2j5cNgbNGTJOWI=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vM6q3-0007CZ-CM;
	Thu, 20 Nov 2025 15:44:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=34190f787f=yun.zhou@windriver.com>)
 id 1vM6q2-0007CS-DR for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Nov 2025 15:44:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rO26f2Omac4xoQJyT9Ehp1ex0mERXIZvq25qjo7zG1E=; b=FdTRwsczBuFXRXCko/8lJubvim
 Q8l2eVZr4wkPIElhpO1vwr3KWJuM/0TPjUTe3rcJAZS1fbL6TmsKaJ1Kl1LKIyxl+jI7RFTfvfDwQ
 LTdw29cc8pFxxhFQIZmhAnO/GZMz0xKdI6qX5hpQBPin3q79gIFdYrf01aV88Ng0rbxs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rO26f2Omac4xoQJyT9Ehp1ex0mERXIZvq25qjo7zG1E=; b=k
 RiBLtC/SHkxVUgsKUYsNSJOyXHnUTOckDrnYt0DWJHAIPGwPW2vCXZWExVIQlwhb+AGhA3qSuEnCa
 tZ7qvrRTxiv1VjSfcvES6bE2GjvzWm9tc7usbwTSyoWGbcycGuZGgiz4qqUcy6Q7P9+fVwqqLHXon
 nNkO9niYGbMpXJVw=;
Received: from mx0b-0064b401.pphosted.com ([205.220.178.238])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vM6q1-0002NJ-Lg for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Nov 2025 15:44:50 +0000
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5AKBLLto1396429; Thu, 20 Nov 2025 15:44:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=cc:content-transfer-encoding:content-type:date:from
 :message-id:mime-version:subject:to; s=PPS06212021; bh=rO26f2Oma
 c4xoQJyT9Ehp1ex0mERXIZvq25qjo7zG1E=; b=bwZzsGu7PYMR5znOOZEMz1qdo
 DI5uNZgkSXWd3AT1+HCD66Sk7TBO0Kido8Zs/g6Xu6YszQ9YXZG5vpPBQVUZeMFB
 aQZ4xryOIPe/ZCI4ngh8qHbAQwnQsScjvppVaWW8yfIQC32CJH1IQNDaZQImLaWe
 c95pAg7i3yOgta+nn7LsEmZMFH7fPbQLKnE4GqsA2gUtcpVgvkFvjmi3GluS3ej1
 oa3Y5nTt1JhCGO0fB7sVociBsHHVaFaRGrrfu2fYxfQUfg6Z14wAcN98JTah9ktV
 04uytlPUVI04wPNx0MyPHLGuXYWXOxtSXyB59vCwj7tkiSWR01rm3e5ZLnAqg==
Received: from ala-exchng02.corp.ad.wrs.com ([128.224.246.37])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4ahayrsu6p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 20 Nov 2025 15:44:07 +0000 (GMT)
Received: from ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) by
 ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.61; Thu, 20 Nov 2025 07:44:03 -0800
Received: from pek-lpd-ccm6.wrs.com (10.11.232.110) by
 ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) with Microsoft SMTP Server id
 15.1.2507.61 via Frontend Transport; Thu, 20 Nov 2025 07:44:01 -0800
To: <shaggy@kernel.org>
Date: Thu, 20 Nov 2025 23:44:00 +0800
Message-ID: <20251120154400.1042123-1-yun.zhou@windriver.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: xwOHKPi7LHb5bj0QVLymZTJ4fgEgNCOq
X-Authority-Analysis: v=2.4 cv=EdXFgfmC c=1 sm=1 tr=0 ts=691f3747 cx=c_pps
 a=Lg6ja3A245NiLSnFpY5YKQ==:117 a=Lg6ja3A245NiLSnFpY5YKQ==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=t7CeM3EgAAAA:8
 a=u9DlrU1ZzlIu95ImLY8A:9 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-GUID: xwOHKPi7LHb5bj0QVLymZTJ4fgEgNCOq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDEwMyBTYWx0ZWRfX1JHt3JHClkBF
 N5Jz8vYZRuApXz7aZON5tSJkuECuMz9H8UTB5Ye/+keDSENLDi4Gr6XC2rNTk/eP+9/Mt7/jWk8
 263NST8Pu34vrVStwfRZnwQ1+ZCL5B5Pu16i4OU3QViXnFtc2be87bFDapIWVpRFj3bGvI0giWc
 tmkphJjFBjkl6hGkPeUdKxfSVcDpHliphl7uL//bDNa25tJr8ynsMp6NNwyiUi1f2RR28jMT6WM
 pVCe9jdSQy3tcqB3BJo9Wh1APHrd0DyUPwszXRA4Bo6zGYlBUMSPvwhUVsDsp9mwe76bTzMqGgD
 dNMTDYCsRnqCVP4OVqRvaA9Yg6ITkwhNFLlQ8C+tK5HJg49KQBRcQgS9cqd6kqNENEWY4WsFyWu
 XfJXr6JIbxkJJPbqEXt5i9jsTIy2Kg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_05,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 suspectscore=0 bulkscore=0 impostorscore=0
 phishscore=0 malwarescore=0 clxscore=1015 priorityscore=1501
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
 Content preview:  Add check_dtpage() to validate dtpage_t integrity, focusing
 on preventing index/pointer overflows from on-disk corruption. Key checks:
 - maxslot must be exactly DTPAGEMAXSLOT (128) as defined for dtpage slot
 array. - freecnt bounded by [0, DTPAGEMAXSLOT-1] (slot[0] reserved for header).
 - freelist validity: -1 when freecn [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.178.238 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vM6q1-0002NJ-Lg
Subject: [Jfs-discussion] [PATCH] jfs: add dtpage integrity check to prevent
 index/pointer overflows
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

Add check_dtpage() to validate dtpage_t integrity, focusing on
preventing index/pointer overflows from on-disk corruption.

Key checks:
- maxslot must be exactly DTPAGEMAXSLOT (128) as defined for dtpage
  slot array.
- freecnt bounded by [0, DTPAGEMAXSLOT-1] (slot[0] reserved for header).
- freelist validity: -1 when freecnt=0; 1~DTPAGEMAXSLOT-1 when non-zero,
  with linked list checks (no duplicates, proper termination via next=-1).
- stblindex bounds: must be within range that avoids overlapping with
  stbl itself (stblindex < DTPAGEMAXSLOT - stblsize).
- nextindex bounded by stbl size (stblsize << L2DTSLOTSIZE). stbl entries
  validity: within 1~DTPAGEMAXSLOT-1, no duplicates(excluding invalid
  entries marked as -1).

Invoked when loading dtpage (in BT_GETPAGE macro context) to catch
corruption early before directory operations trigger out-of-bounds access.

Signed-off-by: Yun Zhou <yun.zhou@windriver.com>
---
 fs/jfs/jfs_dtree.c | 108 +++++++++++++++++++++++++++++++++++++++++++--
 fs/jfs/jfs_dtree.h |   2 +
 2 files changed, 106 insertions(+), 4 deletions(-)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index e1cbc3a04f3f..6df4a3ed9043 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -115,10 +115,7 @@ struct dtsplit {
 do {									\
 	BT_GETPAGE(IP, BN, MP, dtpage_t, SIZE, P, RC, i_dtroot);	\
 	if (!(RC)) {							\
-		if (((P)->header.nextindex >				\
-		     (((BN) == 0) ? DTROOTMAXSLOT : (P)->header.maxslot)) || \
-		    ((BN) && (((P)->header.maxslot > DTPAGEMAXSLOT) ||	\
-		    ((P)->header.stblindex >= DTPAGEMAXSLOT)))) {	\
+		if ((BN) && !check_dtpage(P)) {				\
 			BT_PUTPAGE(MP);					\
 			jfs_error((IP)->i_sb,				\
 				  "DT_GETPAGE: dtree page corrupt\n");	\
@@ -4399,3 +4396,106 @@ bool check_dtroot(dtroot_t *p)
 
     return true;
 }
+
+bool check_dtpage(dtpage_t *p)
+{
+	DECLARE_BITMAP(bitmap, DTPAGEMAXSLOT) = {0};
+	const int stblsize = ((PSIZE >> L2DTSLOTSIZE) + 31) >> L2DTSLOTSIZE;
+	int i;
+
+	/* Validate maxslot (maximum number of slots in the page)
+	 * dtpage_t slot array is defined to hold up to DTPAGEMAXSLOT (128) slots
+	 */
+	if (unlikely(p->header.maxslot != DTPAGEMAXSLOT)) {
+		jfs_err("Bad maxslot:%d in dtpage (expected %d)\n",
+				p->header.maxslot, DTPAGEMAXSLOT);
+		return false;
+	}
+
+	/* freecnt cannot be negative or exceed DTPAGEMAXSLOT-1
+	 * (since slot[0] is occupied by the header).
+	 */
+	if (unlikely(p->header.freecnt < 0 ||
+				p->header.freecnt > DTPAGEMAXSLOT - 1)) {
+		jfs_err("Bad freecnt:%d in dtpage\n", p->header.freecnt);
+		return false;
+	} else if (p->header.freecnt == 0) {
+		/* No free slots: freelist must be -1 */
+		if (unlikely(p->header.freelist != -1)) {
+			jfs_err("freecnt=0 but freelist=%d in dtpage\n",
+					p->header.freelist);
+			return false;
+		}
+	} else {
+		int fsi;
+		/* When there are free slots, freelist must be a valid slot index in
+		 * 1~DTROOTMAXSLOT-1(since slot[0] is occupied by the header).
+		 */
+		if (unlikely(p->header.freelist < 1 ||
+					p->header.freelist >= DTPAGEMAXSLOT)) {
+			jfs_err("Bad freelist:%d in dtpage\n", p->header.freelist);
+			return false;
+		}
+
+		/* Traverse the free list to check validity of all node indices */
+		fsi = p->header.freelist;
+		for (i = 0; i < p->header.freecnt - 1; i++) {
+			/* Check for duplicate indices in the free list */
+			if (unlikely(__test_and_set_bit(fsi, bitmap))) {
+				jfs_err("duplicate index%d in slot in dtpage\n", fsi);
+				return false;
+			}
+			fsi = p->slot[fsi].next;
+
+			/* Ensure the next slot index in the free list is valid */
+			if (unlikely(fsi < 1 || fsi >= DTPAGEMAXSLOT)) {
+				jfs_err("Bad index:%d in slot in dtpage\n", fsi);
+				return false;
+			}
+		}
+
+		/* The last node in the free list must terminate with next = -1 */
+		if (unlikely(p->slot[fsi].next != -1)) {
+			jfs_err("Bad next:%d of the last slot in dtpage\n",
+					p->slot[fsi].next);
+			return false;
+		}
+	}
+
+	/* stbl must be little then DTPAGEMAXSLOT */
+	if (unlikely(p->header.stblindex >= DTPAGEMAXSLOT - stblsize)) {
+		jfs_err("Bad stblindex:%d in dtpage (stbl size %d)\n",
+				p->header.stblindex, stblsize);
+		return false;
+	}
+
+	/* nextindex must be little then stblsize*32 */
+	if (unlikely(p->header.nextindex >= (stblsize << L2DTSLOTSIZE))) {
+		jfs_err("Bad nextindex:%d in dtpage (stbl size %d)\n",
+				p->header.nextindex, stblsize);
+		return false;
+	}
+
+	/* Validate stbl entries
+	 * Each entry is a slot index, valid range: -1 (invalid) or [0, nextindex-1] (valid data slots)
+	 * (stblindex and higher slots are reserved for stbl itself)
+	 */
+	for (i = 0; i < p->header.nextindex; i++) {
+		int idx = DT_GETSTBL(p)[i];
+
+		/* Check if index is out of valid data slot range */
+		if (unlikely(idx < 1 || idx >= DTPAGEMAXSLOT)) {
+			jfs_err("Bad stbl[%d] index:%d (stblindex %d) in dtpage\n",
+					i, idx, p->header.stblindex);
+			return false;
+		}
+
+		/* Check for duplicate valid indices (skip -1) */
+		if (unlikely(__test_and_set_bit(idx, bitmap))) {
+			jfs_err("Duplicate index:%d in stbl of dtpage\n", idx);
+			return false;
+		}
+	}
+
+	return true;
+}
diff --git a/fs/jfs/jfs_dtree.h b/fs/jfs/jfs_dtree.h
index 94dc16123c87..dfc87b6690a9 100644
--- a/fs/jfs/jfs_dtree.h
+++ b/fs/jfs/jfs_dtree.h
@@ -255,4 +255,6 @@ extern int dtModify(tid_t tid, struct inode *ip, struct component_name * key,
 extern int jfs_readdir(struct file *file, struct dir_context *ctx);
 
 extern bool check_dtroot(dtroot_t *p);
+
+extern bool check_dtpage(dtpage_t *p);
 #endif				/* !_H_JFS_DTREE */
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
