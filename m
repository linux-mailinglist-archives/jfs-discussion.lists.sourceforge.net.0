Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B61AC5B04CB
	for <lists+jfs-discussion@lfdr.de>; Wed,  7 Sep 2022 15:11:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oVupw-0005ng-Pm;
	Wed, 07 Sep 2022 13:11:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wangdeming@inspur.com>) id 1oVlHK-00021e-UA
 for jfs-discussion@lists.sourceforge.net;
 Wed, 07 Sep 2022 02:59:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6ToamWCmr9aHW8XRAmTh801xHTKX3f7fWU4DgDaIsqg=; b=ZIywQlP1tNPRrG/NcUb6L9rid8
 TtMm1THwhXVceCGyP5fWstwBeZqhurApQr9NJdfgnig2kopS2AqLeP0ULuEKr9VYgSbqrvrN+K8dW
 xeePAKScmfxCExDX2z6syKQUWwF1+dXdyCgucwEcFykYhRnxXuQNFvjjqTPqPeOuCCdM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6ToamWCmr9aHW8XRAmTh801xHTKX3f7fWU4DgDaIsqg=; b=m
 L/yAO5xqbFhrWvfx09fqtVGLTKoETFrE1fid9yk8MKv5o04RM29kpFW35QtrRFawAduttUDGIEAXj
 MfWThePQ+w4rIzPFJhgZpUDNI9JjV8hHEwnZgEkM0jeprnenwvbi3xtbD1bWViHHPaP0zL0a0tB5F
 9kToCczY4TVliZ1M=;
Received: from 186.whitelist.crbl.net ([162.243.126.186])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oVkib-000NYu-2O for jfs-discussion@lists.sourceforge.net;
 Wed, 07 Sep 2022 02:23:13 +0000
Received: from ([60.208.111.195])
 by unicom145.biz-email.net ((D)) with ASMTP (SSL) id BBV00010;
 Wed, 07 Sep 2022 10:14:10 +0800
Received: from localhost.localdomain (10.200.104.82) by
 jtjnmail201619.home.langchao.com (10.100.2.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.12; Wed, 7 Sep 2022 10:14:09 +0800
From: Deming Wang <wangdeming@inspur.com>
To: <shaggy@kernel.org>
Date: Tue, 6 Sep 2022 09:28:29 -0400
Message-ID: <20220906132829.4028-1-wangdeming@inspur.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Originating-IP: [10.200.104.82]
X-ClientProxiedBy: Jtjnmail201613.home.langchao.com (10.100.2.13) To
 jtjnmail201619.home.langchao.com (10.100.2.19)
tUid: 20229071014103d860835a9885e491b19db54d3284683
X-Abuse-Reports-To: service@corp-email.com
Abuse-Reports-To: service@corp-email.com
X-Complaints-To: service@corp-email.com
X-Report-Abuse-To: service@corp-email.com
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Modify the maxiumum to maximum. Signed-off-by: Deming Wang
 <wangdeming@inspur.com> --- fs/jfs/jfs_xattr.h | 2 +- 1 file changed,
 1 insertion(+), 
 1 deletion(-) diff --git a/fs/jfs/jfs_xattr.h b/fs/jfs/jfs_xattr.h index
 c50167a7bc50..0d33816d251d 100644 --- a/fs/jfs/jfs_xattr.h +++
 b/fs/jfs/jfs_xattr.h
 @@ -25,7 +25,7 @@ struct jfs_ea_list { struct jfs_ea ea[] [...] 
 Content analysis details:   (0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1oVkib-000NYu-2O
X-Mailman-Approved-At: Wed, 07 Sep 2022 13:11:21 +0000
Subject: [Jfs-discussion] [PATCH] jfs: Fix spelling typo in comment.
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
Cc: jfs-discussion@lists.sourceforge.net, Deming Wang <wangdeming@inspur.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Modify the maxiumum to maximum.

Signed-off-by: Deming Wang <wangdeming@inspur.com>
---
 fs/jfs/jfs_xattr.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_xattr.h b/fs/jfs/jfs_xattr.h
index c50167a7bc50..0d33816d251d 100644
--- a/fs/jfs/jfs_xattr.h
+++ b/fs/jfs/jfs_xattr.h
@@ -25,7 +25,7 @@ struct jfs_ea_list {
 	struct jfs_ea ea[];	/* Variable length list */
 };
 
-/* Macros for defining maxiumum number of bytes supported for EAs */
+/* Macros for defining maximum number of bytes supported for EAs */
 #define MAXEASIZE	65535
 #define MAXEALISTSIZE	MAXEASIZE
 

base-commit: 840126e36e8ff272cb63158646433fa1324533d9
-- 
2.27.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
