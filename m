Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8E01CB090
	for <lists+jfs-discussion@lfdr.de>; Fri,  8 May 2020 15:35:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jX39w-00078P-QB; Fri, 08 May 2020 13:35:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gustavoars@kernel.org>) id 1jWlcL-0004LG-8t
 for jfs-discussion@lists.sourceforge.net; Thu, 07 May 2020 18:51:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jtypifITs4jz30YSDwn730jf/jq8oxYXcUXFUR1cG8I=; b=dpNUpko3Za27MmOJlxyuvPWBaa
 /wRt0218cvJWjr3jh7tucnbMU/FmLv0xueHVWOVrbVDWjVhZlKxHowmPq4a2c7XQQOIFkYUaqkA4C
 qHXStXTXUeh6I7HChDa3VAljoSzJfkRZ8iXE8C9xtBM6Com1zFSzPR2BCVfUgeH1mX98=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jtypifITs4jz30YSDwn730jf/jq8oxYXcUXFUR1cG8I=; b=e
 IwDhZw3/SSH1gGPY/2PtCds0CdgO4ql5iN5vm6QkSAcglSYFalTOyx1ZzqGsSDAlFuekiHvjWM/Pz
 4lThnfogHn8Z7UYPLtK8fxIUMmCxRjNqAblxlmgeiqA/2xhGjUSbf/Zaj4FHibIpTjYUQZvwymEOY
 Qa9dZrBf5Z9PWRs0=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jWlcJ-00EYfI-W3
 for jfs-discussion@lists.sourceforge.net; Thu, 07 May 2020 18:51:33 +0000
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9977A2495D;
 Thu,  7 May 2020 18:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588877483;
 bh=kMFA0b6aS1twModq1yHlIZlHwtdzbcyRe3/MvSJiG0s=;
 h=Date:From:To:Cc:Subject:From;
 b=JCrk0uwwkhfkTLux/mgp5WxUeHMtQt5a6q0bHSOxYvZT8vyTogP0sJafOoEk4JRXW
 PIZOaa/Q+GYFBzbxJk0/szjg53/lf2XEHowx2S/TdV4GAH2+FlRSOj6KMgpcKOOm5s
 BsUeOg5xzmGksQMqfqO+76ntwhcL9D3rLq42GPKE=
Date: Thu, 7 May 2020 13:55:50 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Dave Kleikamp <shaggy@kernel.org>
Message-ID: <20200507185550.GA14715@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jWlcJ-00EYfI-W3
X-Mailman-Approved-At: Fri, 08 May 2020 13:35:21 +0000
Subject: [Jfs-discussion] [PATCH] JFS: Replace zero-length array with
 flexible-array
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

sizeof(flexible-array-member) triggers a warning because flexible array
members have incomplete type[1]. There are some instances of code in
which the sizeof operator is being incorrectly/erroneously applied to
zero-length arrays and the result is zero. Such instances may be hiding
some bugs. So, this work (flexible-array member conversions) will also
help to get completely rid of those sorts of issues.

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 fs/jfs/jfs_dtree.c |    2 +-
 fs/jfs/jfs_xattr.h |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 3acc954f7c04..837d42f61464 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -2964,7 +2964,7 @@ struct jfs_dirent {
 	loff_t position;
 	int ino;
 	u16 name_len;
-	char name[0];
+	char name[];
 };
 
 /*
diff --git a/fs/jfs/jfs_xattr.h b/fs/jfs/jfs_xattr.h
index f0558b3348da..c50167a7bc50 100644
--- a/fs/jfs/jfs_xattr.h
+++ b/fs/jfs/jfs_xattr.h
@@ -17,12 +17,12 @@ struct jfs_ea {
 	u8 flag;	/* Unused? */
 	u8 namelen;	/* Length of name */
 	__le16 valuelen;	/* Length of value */
-	char name[0];	/* Attribute name (includes null-terminator) */
+	char name[];	/* Attribute name (includes null-terminator) */
 };			/* Value immediately follows name */
 
 struct jfs_ea_list {
 	__le32 size;		/* overall size */
-	struct jfs_ea ea[0];	/* Variable length list */
+	struct jfs_ea ea[];	/* Variable length list */
 };
 
 /* Macros for defining maxiumum number of bytes supported for EAs */



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
