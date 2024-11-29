Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4749DEB29
	for <lists+jfs-discussion@lfdr.de>; Fri, 29 Nov 2024 17:37:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tH3zE-0002ID-N3;
	Fri, 29 Nov 2024 16:36:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=2063358e96=lizhi.xu@windriver.com>)
 id 1tGqSQ-0006O2-8a for jfs-discussion@lists.sourceforge.net;
 Fri, 29 Nov 2024 02:10:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Es53Ar/8n7bD+rCPN80zv5R9iEqSnekoPTtYQknfRco=; b=ZSMnbamj7OonGH5IAMPFsV9GXR
 dkAQo3R1CW2RIWsj20f4eHJq+HnFmrpWACEwukX7YvfAM/q2t5oS4XBrH0RxTQ4exrhFCcI/uXA9B
 qbWQtCI429Ajj9NMY/+Gy7wCP9RXCK/msUtAjE9wA6HGVUCJXQIiIAvJoGbZD+sG+cTE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Es53Ar/8n7bD+rCPN80zv5R9iEqSnekoPTtYQknfRco=; b=NNrXSSTKboPdC3Ro5HU3BHzBLe
 NzfaqbMwhCi3wUQPvP87WfNHUI29IUXB7NXLUVzIRf8Jp38/TPrVCvl/QC6sZemX3D3tuh9LRwdjE
 tSSOwF1t5OF1xiHA2n9/vSi8gfm/oJWKpx1Q4jLjETeNLKa//OHmzthfUOjITegl5XiU=;
Received: from mx0b-0064b401.pphosted.com ([205.220.178.238])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tGqSP-00065C-7C for jfs-discussion@lists.sourceforge.net;
 Fri, 29 Nov 2024 02:10:10 +0000
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AT1ptD3023424;
 Fri, 29 Nov 2024 01:51:55 GMT
Received: from ala-exchng02.corp.ad.wrs.com (ala-exchng02.wrs.com
 [147.11.82.254])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 43671asmpu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Fri, 29 Nov 2024 01:51:54 +0000 (GMT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.43; Thu, 28 Nov 2024 17:51:53 -0800
Received: from pek-lpd-ccm6.wrs.com (147.11.136.210) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.43 via Frontend Transport; Thu, 28 Nov 2024 17:51:52 -0800
To: <syzbot+99491d74a9931659cf48@syzkaller.appspotmail.com>
Date: Fri, 29 Nov 2024 09:51:51 +0800
Message-ID: <20241129015151.595085-1-lizhi.xu@windriver.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <6748fb32.050a0220.253251.0098.GAE@google.com>
References: <6748fb32.050a0220.253251.0098.GAE@google.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: 4QdDx8t6nd9agFYw3vw9XzV8y3REYqTI
X-Authority-Analysis: v=2.4 cv=TIS/S0la c=1 sm=1 tr=0 ts=67491e3a cx=c_pps
 a=K4BcnWQioVPsTJd46EJO2w==:117 a=K4BcnWQioVPsTJd46EJO2w==:17
 a=VlfZXiiP6vEA:10 a=DYonKS4zpEWGQCKFvHwA:9
X-Proofpoint-GUID: 4QdDx8t6nd9agFYw3vw9XzV8y3REYqTI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-11-28_20,2024-11-28_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0
 suspectscore=0 malwarescore=0 mlxlogscore=717 adultscore=0 clxscore=1011
 priorityscore=1501 bulkscore=0 impostorscore=0 lowpriorityscore=0
 mlxscore=0 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.21.0-2411120000 definitions=main-2411290013
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The index of the slot maybe out of bound, add a check for
 it. #syz test diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c index
 8f85177f284b..71463ad751c2
 100644 --- a/fs/jfs/jfs_dtree.c +++ b/fs/jfs/jfs_dtree.c @@ -1994,6 +1994,9
 @@ static int dtSplitRoot(tid_t tid, 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.178.238 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.178.238 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.178.238 listed in sa-trusted.bondedsender.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.178.238 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tGqSP-00065C-7C
X-Mailman-Approved-At: Fri, 29 Nov 2024 16:36:54 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in dtSplitRoot (2)
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

The index of the slot maybe out of bound, add a check for it.

#syz test

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 8f85177f284b..71463ad751c2 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -1994,6 +1994,9 @@ static int dtSplitRoot(tid_t tid,
 
 		stbl = DT_GETSTBL(rp);
 		for (n = 0; n < rp->header.nextindex; n++) {
+			if (stbl[n] >= ARRAY_SIZE(rp->slot))
+				continue;
+
 			ldtentry = (struct ldtentry *) & rp->slot[stbl[n]];
 			modify_index(tid, ip, le32_to_cpu(ldtentry->index),
 				     rbn, n, &mp, &lblock);


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
