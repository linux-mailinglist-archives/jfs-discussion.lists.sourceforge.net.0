Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 755CC7B47F4
	for <lists+jfs-discussion@lfdr.de>; Sun,  1 Oct 2023 16:21:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qmxJd-0002mc-VW;
	Sun, 01 Oct 2023 14:21:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wedsonaf@gmail.com>) id 1qmS76-0002lH-2M
 for jfs-discussion@lists.sourceforge.net;
 Sat, 30 Sep 2023 05:01:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CvbjOndp8aI/Ez6XwF4rShTXeRhZbI/GoEOOUYLU6ao=; b=ktnE2/wZTCDmtraxJpd6AIoxbW
 3Hmwvm6A00DCvNQLnXBSsq6rmoDDUTtDPhb0QJTV2SztDUP7596b6Bciv/GlhM6bzvkyPTYPEeqB4
 t/amhiA5e0YLGCqW1P2yP6cRIbISWo1FbGiHeqPO+EIt0tA5b3IkyyZoM81dnKFxdMG8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CvbjOndp8aI/Ez6XwF4rShTXeRhZbI/GoEOOUYLU6ao=; b=N0vSTHaZl11I/Pfvgdh/JFTCB6
 1zk8h1bHaYGH3PL9y9nFnuga67bnmBuUOwfWXfV3tFClICvle4ZvCNKAZ03txAp3yzUpTAXq6R33j
 6v8h0wDtpAB7oEtUKzl0jMkozOpDH7gc/d0aSkknWBjd5VjccDrQ624RjJSfqH5nA1+U=;
Received: from mail-pg1-f179.google.com ([209.85.215.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qmS70-0004oV-6C for jfs-discussion@lists.sourceforge.net;
 Sat, 30 Sep 2023 05:01:58 +0000
Received: by mail-pg1-f179.google.com with SMTP id
 41be03b00d2f7-5859a7d6556so1300972a12.0
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 29 Sep 2023 22:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696050109; x=1696654909; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CvbjOndp8aI/Ez6XwF4rShTXeRhZbI/GoEOOUYLU6ao=;
 b=OpQmGcjK7kgrdfp2xIv8LhN/2Q192lS5I6KtQUxxBuTa3sOyTWkSkkbxpfvjjzJ6HP
 CHqLLK4z6X07X8pcsL4r+UgjDhe6feqZYmlkqvX3eA3mfV2QzlXPo409VOrZwaCzu9KU
 QpAS+UTH6T2a0hRdCAfKkTBrImWTm1GLdDmc7FRLnLCrZ8hq2A2ma+lQDZSD2uJxLQzE
 Lhus1QfaUXCb0dHPwaG7esuq0xUCELO9xZSm38Mx4dMkQBnL409Rzpbk+d2WKoBnnzec
 akH/zYDJwH4BggJQWPxRHXlW9n50wnEu24jGOXfQpmK5ANDE0ZQjQSQzvNdSYLkyesre
 jEIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696050109; x=1696654909;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=CvbjOndp8aI/Ez6XwF4rShTXeRhZbI/GoEOOUYLU6ao=;
 b=rSCE1q/ketp1rGCdFC3uRF2GDfxgQVDg72JdO/9cRuFEGxAcxeIP34xRkfCibAlYaF
 udDcMWuCgoA/y8r4+8SwyNwWVxxST9SeF0vogao2Xsz2UMFkxoNUjU+6SESi4B2RXLMS
 d3BppbZg1B6X57xYnekC33wHFR8v01oSF9j5GK8ruG44CN0+zXdLq7hzrX7XYZo7k0d8
 Sxd6uNBUiGwBpLfU8SYYY8rolEZqmVq/45EtMezCaKcXUhlbz9jOyY+UFrvH8DGgGeQQ
 NDZ/XqyYpVjF4klUIFkamwLlHhvF1ghg+w+iAhusGslHdXWJ8hNPF4ORZuwPIfsOvyug
 oxIQ==
X-Gm-Message-State: AOJu0YxuhLddJn/2TIWzdCpWTYFZLKqrVHksHCnAk7LQQ8JFQOONJZk8
 dF8Tul8QuqhwjNILjIstYgs=
X-Google-Smtp-Source: AGHT+IFTzTQoRrKBld3Z91Gl5//4DNU0err+xEbo2c8EVErnKUHrrks4dyaYIyT3+SlvU/O84IrtVw==
X-Received: by 2002:a05:6a21:4985:b0:160:7679:90 with SMTP id
 ax5-20020a056a21498500b0016076790090mr6093121pzc.56.1696050108746; 
 Fri, 29 Sep 2023 22:01:48 -0700 (PDT)
Received: from wedsonaf-dev.home.lan ([189.124.190.154])
 by smtp.googlemail.com with ESMTPSA id
 y10-20020a17090322ca00b001c322a41188sm392136plg.117.2023.09.29.22.01.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Sep 2023 22:01:48 -0700 (PDT)
To: Alexander Viro <viro@zeniv.linux.org.uk>,
 Christian Brauner <brauner@kernel.org>, linux-fsdevel@vger.kernel.org
Date: Sat, 30 Sep 2023 02:00:20 -0300
Message-Id: <20230930050033.41174-17-wedsonaf@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230930050033.41174-1-wedsonaf@gmail.com>
References: <20230930050033.41174-1-wedsonaf@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Wedson Almeida Filho This makes it harder for
 accidental
 or malicious changes to jfs_xattr_handlers at runtime. Cc: Dave Kleikamp
 Cc: jfs-discussion@lists.sourceforge.net Signed-off-by: Wedson Almeida Filho
 --- fs/jfs/jfs_xattr.h | 2 +- fs/jfs/xattr.c | 2 +- 2 files changed,
 2 insertions(+), 2 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.179 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wedsonaf[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.179 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qmS70-0004oV-6C
X-Mailman-Approved-At: Sun, 01 Oct 2023 14:21:01 +0000
Subject: [Jfs-discussion] [PATCH 16/29] jfs: move jfs_xattr_handlers to
 .rodata
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
From: Wedson Almeida Filho via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Wedson Almeida Filho <wedsonaf@gmail.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Wedson Almeida Filho <walmeida@microsoft.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Wedson Almeida Filho <walmeida@microsoft.com>

This makes it harder for accidental or malicious changes to
jfs_xattr_handlers at runtime.

Cc: Dave Kleikamp <shaggy@kernel.org>
Cc: jfs-discussion@lists.sourceforge.net
Signed-off-by: Wedson Almeida Filho <walmeida@microsoft.com>
---
 fs/jfs/jfs_xattr.h | 2 +-
 fs/jfs/xattr.c     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_xattr.h b/fs/jfs/jfs_xattr.h
index 0d33816d251d..ec67d8554d2c 100644
--- a/fs/jfs/jfs_xattr.h
+++ b/fs/jfs/jfs_xattr.h
@@ -46,7 +46,7 @@ extern int __jfs_setxattr(tid_t, struct inode *, const char *, const void *,
 extern ssize_t __jfs_getxattr(struct inode *, const char *, void *, size_t);
 extern ssize_t jfs_listxattr(struct dentry *, char *, size_t);
 
-extern const struct xattr_handler *jfs_xattr_handlers[];
+extern const struct xattr_handler * const jfs_xattr_handlers[];
 
 #ifdef CONFIG_JFS_SECURITY
 extern int jfs_init_security(tid_t, struct inode *, struct inode *,
diff --git a/fs/jfs/xattr.c b/fs/jfs/xattr.c
index 931e50018f88..001c900a2b4d 100644
--- a/fs/jfs/xattr.c
+++ b/fs/jfs/xattr.c
@@ -985,7 +985,7 @@ static const struct xattr_handler jfs_trusted_xattr_handler = {
 	.set = jfs_xattr_set,
 };
 
-const struct xattr_handler *jfs_xattr_handlers[] = {
+const struct xattr_handler * const jfs_xattr_handlers[] = {
 	&jfs_os2_xattr_handler,
 	&jfs_user_xattr_handler,
 	&jfs_security_xattr_handler,
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
