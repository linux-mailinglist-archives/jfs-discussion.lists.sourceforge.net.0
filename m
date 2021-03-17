Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F21333F16B
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Mar 2021 14:47:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lMWWA-0007Mg-A6; Wed, 17 Mar 2021 13:47:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <zuoqilin1@163.com>) id 1lMQL5-0003Lq-Qq
 for jfs-discussion@lists.sourceforge.net; Wed, 17 Mar 2021 07:11:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pH7nhpaleJ/7ukwCP8E2DXBfIB5ssIKEREx9oLsDBpo=; b=RXEGt+a9aDQC4bhAvKm6XHohUR
 dpLGQfrCqm1bg2EfAEd54QmR4RPcf2K0GbjdlXJHaTfWTVbkf/cVXmxklQTcI1rvqqayUH+PJYrDx
 /i3NWBCeviyTP1nR8S3WRSkYu7pbzR0+YHxYEhdht61pdRLz5RrlLsfOO01dlaObRyjU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pH7nhpaleJ/7ukwCP8E2DXBfIB5ssIKEREx9oLsDBpo=; b=A
 Fq5VwKJd++oLDiyVgkPkQ0KAaI/LCZXO1XbJm79FVWxuP4YwUyCp6EIG/RgyVZHDnSmnTSCTy7eSh
 VBC0jK5xIgMQUBGyXct/Ei1Ruwc4cX5NfMbbZrRWC8XGAEB/1Z6beIfIDIeoDSSsGmj4MRDz9tECk
 betZhjPbIX+Ba1gA=;
Received: from m12-16.163.com ([220.181.12.16])
 by sfi-mx-2.v28.lw.sourceforge.com with smtp (Exim 4.92.3)
 id 1lMQKx-0007Qe-NB
 for jfs-discussion@lists.sourceforge.net; Wed, 17 Mar 2021 07:11:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=pH7nh
 paleJ/7ukwCP8E2DXBfIB5ssIKEREx9oLsDBpo=; b=QuvsY0XtbcbcZmmMU8kny
 x4hbCtMqedR6nlLBCT6Cco9QFozJi5C+xJBkH0GznwEyYMfcDYDp4B6D2Lq2bl1K
 54tuhCGxqU8tz59nAnhLYu3gF+NExi4hlFkB0MXmK72WMO98HpSJB7vrFWxlNF3T
 LNRKvSHEcYAcYsGVdlEgAc=
Received: from COOL-20201210PM.ccdomain.com (unknown [218.94.48.178])
 by smtp12 (Coremail) with SMTP id EMCowAAXHSFxq1FgnVAehA--.23334S2;
 Wed, 17 Mar 2021 15:10:45 +0800 (CST)
From: zuoqilin1@163.com
To: shaggy@kernel.org
Date: Wed, 17 Mar 2021 15:10:52 +0800
Message-Id: <20210317071052.1101-1-zuoqilin1@163.com>
X-Mailer: git-send-email 2.28.0.windows.1
MIME-Version: 1.0
X-CM-TRANSID: EMCowAAXHSFxq1FgnVAehA--.23334S2
X-Coremail-Antispam: 1Uf129KBjvdXoWruFy8Jr45Zr13WrW7XFy3twb_yoWxtwc_Ca
 n7Ar48WayrXayUur1fXrs5Kryq9rW8urn8urWDJFZIkryqyrnxJrs7Cr47XryDKrZ0kryk
 Zw18KryrurykWjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU0j2NtUUUUU==
X-Originating-IP: [218.94.48.178]
X-CM-SenderInfo: 52xr1xpolqiqqrwthudrp/xtbBRQ1YiVPAKjBU8QADs2
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (zuoqilin1[at]163.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [220.181.12.16 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [220.181.12.16 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: yulong.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (zuoqilin1[at]163.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lMQKx-0007Qe-NB
X-Mailman-Approved-At: Wed, 17 Mar 2021 13:45:58 +0000
Subject: [Jfs-discussion] [PATCH] fs: Fix typo issue
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
Cc: zuoqilin <zuoqilin@yulong.com>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: zuoqilin <zuoqilin@yulong.com>

Change 'inacitve' to 'inactive'.

Signed-off-by: zuoqilin <zuoqilin@yulong.com>
---
 fs/jfs/jfs_dmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 7aee156..91f4ec93 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -3660,7 +3660,7 @@ void dbFinalizeBmap(struct inode *ipbmap)
 	 * (the leftmost ag with average free space in it);
 	 */
 //agpref:
-	/* get the number of active ags and inacitve ags */
+	/* get the number of active ags and inactive ags */
 	actags = bmp->db_maxag + 1;
 	inactags = bmp->db_numag - actags;
 	ag_rem = bmp->db_mapsize & (bmp->db_agsize - 1);	/* ??? */
-- 
1.9.1




_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
