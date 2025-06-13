Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FBEAD81A8
	for <lists+jfs-discussion@lfdr.de>; Fri, 13 Jun 2025 05:30:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=soH9p0WAhjtmAbcSeQFJYZFP5hrI9KwSVfAeZ8IZAhM=; b=HvFp3vMbI/nw+8ntV1E8A1LnYY
	3MxM3Oifr5DsjEkAArl/fAFn8lmgyFL1RtpkxA4G3KgR6zXRfkMfHA3u1JcVI67pLubqPZ4W0fRhY
	mdGTW7isMeREu1IFlM9OoHyj5D6EheEPjQWPXOTinDiNwSmfFosMW2GfFbm7ROyuOHT0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uPv7O-0005Xr-Hq;
	Fri, 13 Jun 2025 03:30:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=8259500018=lizhi.xu@windriver.com>)
 id 1uPv7L-0005Xj-5t for jfs-discussion@lists.sourceforge.net;
 Fri, 13 Jun 2025 03:30:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RTm82ICkFQf0wVERrENhULUhbSZK9JAcLb3GLayTXik=; b=TdMue/g2Ds1z+19UGvd3B1/7zJ
 EInCPmZQLzgVNOHCE9d6PW3dCIiR6dmklUcHVUbYC1fk4vqhZLjCBHU3gowo6dBI5G7dw0lB8cpnK
 aNbZQ4UmcLO7NBsGQwFg2tUIPxC//6yoWZYL4krZ2W5UXw420XakYOrAGqA8cqR4ekcg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RTm82ICkFQf0wVERrENhULUhbSZK9JAcLb3GLayTXik=; b=evpounDIT1E6jIzJ2KtLj1/cDM
 cIjqLVWsumHmibjLhyUvuyucObZIFO9/PWHDKeJIRq+7WRfjtBJKUxOXVN6TBqyezvlhja1jRcBeD
 tcoN72Y/rOtmI5kBr3LME+WcZ5QjGUDUomT+czUD5POqbolojQqhYtwJpf1f5Cg6Rsu8=;
Received: from mx0a-0064b401.pphosted.com ([205.220.166.238])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uPv7J-0003nr-MB for jfs-discussion@lists.sourceforge.net;
 Fri, 13 Jun 2025 03:30:10 +0000
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55D29EYw003800;
 Thu, 12 Jun 2025 20:05:38 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com
 [147.11.82.252])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 474mxm668r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 12 Jun 2025 20:05:38 -0700 (PDT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.57; Thu, 12 Jun 2025 20:05:36 -0700
Received: from pek-lpd-ccm6.wrs.com (147.11.136.210) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.57 via Frontend Transport; Thu, 12 Jun 2025 20:05:35 -0700
To: <syzbot+6e516bb515d93230bc7b@syzkaller.appspotmail.com>
Date: Fri, 13 Jun 2025 11:05:34 +0800
Message-ID: <20250613030534.3839793-1-lizhi.xu@windriver.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <684abfc1.a00a0220.e7731.0015.GAE@google.com>
References: <684abfc1.a00a0220.e7731.0015.GAE@google.com>
MIME-Version: 1.0
X-Proofpoint-GUID: rpBkP97mikXmUsFQz-CFm1qnQyEayrAh
X-Authority-Analysis: v=2.4 cv=L74dQ/T8 c=1 sm=1 tr=0 ts=684b9582 cx=c_pps
 a=/ZJR302f846pc/tyiSlYyQ==:117 a=/ZJR302f846pc/tyiSlYyQ==:17
 a=6IFa9wvqVegA:10 a=edf1wS77AAAA:8 a=hSkVLCK3AAAA:8 a=t7CeM3EgAAAA:8
 a=iYHks2O19Bam7npcOOMA:9 a=DcSpbTIhAlouE1Uv7lRv:22
 a=cQPPKAXgyycSBL8etih5:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEzMDAyMiBTYWx0ZWRfX1VlUeqgmaFu0
 JR7ghSj0kpQUbvddwLmPIFzFMPScRopH/OsRXGZiAnJ1vOrY+BSyKyYBMJL5KTAgBHMYzOm78bv
 jT3HPuzPg8Isa9JNMr36CriVJUZdQRKSz0NOiu95ZXxVvQiRIhYzPBnWl2PfWq98d9IvrM4l2k4
 h7gWf6tLc1Fsq76KscpGPVqwrASEz9tRVSSrJvvKiE8OJcGx5+c3C5ej8pGgS2znOBlw1OgMwsi
 4gZDHGnh5o5SAqcLkTSe6S8S5Akc/mNoEd4On37rxHcP6scTa7aDn5+m4WcisvX4rpcdKjGzNEn
 uzF8D9urSZx2jBbte1CrxVANon+1JDXMGUofiyXL4n/fOasNoWpMfyUqResTtEe6FBw31spIPcO
 aqKtt1xvymNRJkbJJWpebOJOK8zifHbEscN0IomUAnEo8rVxxgPhUBF6BAd6HNWPiYFsyB4O
X-Proofpoint-ORIG-GUID: rpBkP97mikXmUsFQz-CFm1qnQyEayrAh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-12_10,2025-06-12_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 priorityscore=1501 mlxlogscore=921 adultscore=0 spamscore=0 suspectscore=0
 mlxscore=0 lowpriorityscore=0 clxscore=1011 malwarescore=0 phishscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.21.0-2505280000
 definitions=main-2506130022
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The fileset value of the inode copy from the disk by the
 reproducer
 is AGGR_RESERVED_I. When executing evict, its hard link number is 0, so its
 inode pages are not truncated. This causes the bugon to [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.166.238 listed in wl.mailspike.net]
X-Headers-End: 1uPv7J-0003nr-MB
Subject: [Jfs-discussion] [PATCH] jfs: truncate good inode pages when hard
 link is 0
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
From: Lizhi Xu via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Lizhi Xu <lizhi.xu@windriver.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The fileset value of the inode copy from the disk by the reproducer is
AGGR_RESERVED_I. When executing evict, its hard link number is 0, so its
inode pages are not truncated. This causes the bugon to be triggered when
executing clear_inode() because nrpages is greater than 0.

Reported-by: syzbot+6e516bb515d93230bc7b@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=6e516bb515d93230bc7b
Signed-off-by: Lizhi Xu <lizhi.xu@windriver.com>
---
 fs/jfs/inode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index 60fc92dee24d..81e6b18e81e1 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -145,9 +145,9 @@ void jfs_evict_inode(struct inode *inode)
 	if (!inode->i_nlink && !is_bad_inode(inode)) {
 		dquot_initialize(inode);
 
+		truncate_inode_pages_final(&inode->i_data);
 		if (JFS_IP(inode)->fileset == FILESYSTEM_I) {
 			struct inode *ipimap = JFS_SBI(inode->i_sb)->ipimap;
-			truncate_inode_pages_final(&inode->i_data);
 
 			if (test_cflag(COMMIT_Freewmap, inode))
 				jfs_free_zero_link(inode);
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
