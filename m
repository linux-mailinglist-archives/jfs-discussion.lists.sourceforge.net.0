Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63283780E7C
	for <lists+jfs-discussion@lfdr.de>; Fri, 18 Aug 2023 17:01:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qX0yQ-0001au-EE;
	Fri, 18 Aug 2023 15:01:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <colin.i.king@gmail.com>) id 1qX0yO-0001an-Kq
 for jfs-discussion@lists.sourceforge.net;
 Fri, 18 Aug 2023 15:01:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oUObAblvfLP9rsjJtUMFKffZ4hlMmB39YapsTL/V6WI=; b=g1djykeAJHwuHaTD9/ycb81F6u
 z5GFSOjQqroNv+ABJt7qL4pe2ohqvatdWBM/jnmtV1E90ZD1hNFHVHOHa39llWcm+zhdzOr6Ijtz9
 ukFvNA0ibAT8n0p/npyPli79B307SbJ2rfGOsWXP8byeU+blBq6MCIvRVmAT8R+ptwFM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oUObAblvfLP9rsjJtUMFKffZ4hlMmB39YapsTL/V6WI=; b=M
 eSDSq4EoW3HRWlGmh6l45NvpebH806GOHJ1t2F26vPiNQdXanXDUFqeQJvGBuDmkfluZkKfcEPpan
 GUhg21CDt0YRu9ZhOEvpo8t5t4sQ+koBPzsfMThihLEaAK/rH8wS5Vo13FPUeHqB/byZcjX4mCzAQ
 6Dl5W61gzKUzUsGw=;
Received: from mail-wm1-f48.google.com ([209.85.128.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qX0yL-0002Mu-FK for jfs-discussion@lists.sourceforge.net;
 Fri, 18 Aug 2023 15:01:12 +0000
Received: by mail-wm1-f48.google.com with SMTP id
 5b1f17b1804b1-3fe4ad22e36so9847235e9.2
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 18 Aug 2023 08:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1692370863; x=1692975663;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=oUObAblvfLP9rsjJtUMFKffZ4hlMmB39YapsTL/V6WI=;
 b=nZXdFutToZq80kEOn11H6ZYPz8AR+EzTzNEfIhgp7it6KkiyIV0Kw6gMS3xug+HfIT
 w1DvhAxv9Pgr8UzTD3fr/zI1d+6E9ANqoF02bfvrWmnx6gN29uUNe1A6JYXwc5virlzD
 ixFt/loVmT9NHMkvV6ejgBo9HHl8I1Eq8hyIdR3c826NdYDISQjCkiC97YtgqKUtGe5I
 Q7ZWVBQne2gGTiFOpZbNCs20ZF8I7U3GKMOobtFZE2DFzIufVvUJoe5PW5XAl//7HxbS
 QDwjgl7jA1a+OgR8c4qlHX5vSvakt1I2zw9Z3XO6tRBqmuX0BCQq9loI5dMr8xRQFmGc
 F/zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692370863; x=1692975663;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=oUObAblvfLP9rsjJtUMFKffZ4hlMmB39YapsTL/V6WI=;
 b=Ua5Zbzl5DMDRgEr2PlKoWHPTvNazffvAnuiHtxJ0Zu1pV7RFHhbpwn1MWqrVqKmWOL
 GaiKaltBkt4Sj7cmKWLO9N7/f5RilqQ3lj9uhSgn+oMr/tera7qeVu4yoMAzGQFqiapw
 HojUoy9mdslCDZbSmLK8XOj/f9eJduJf0M4U7vzULOhvFZzaxX2RUQs/jFZbSGWjXb9O
 uXresW7V/3p9L3YDSLDDGzSyCv4DGXvZH6h+Juai3Aqn2iHbVaJHJtpXqcMn1V7GXeq0
 m3JVFMuOB8t8R+3ap7adq404vtnwwq+ymnrg1V4MDKlCuzo5p1gvJAJgqNY0qEnvQxRf
 dZRA==
X-Gm-Message-State: AOJu0Yz4CBgDbGOmY+1deRSfe84O6XMLjjPRq0o7CjO9slXEHTF0kNe7
 p4lqYv5EnlxXh954Z2go9KI=
X-Google-Smtp-Source: AGHT+IGyxcmhl/x938ugMTqpE1VDJ2270Rjbn4jaudhCg6XnlS+PAwhNXyHUs8VD7ParQwRdv1W9Dg==
X-Received: by 2002:adf:e985:0:b0:313:ecd3:7167 with SMTP id
 h5-20020adfe985000000b00313ecd37167mr2145149wrm.42.1692370862804; 
 Fri, 18 Aug 2023 08:01:02 -0700 (PDT)
Received: from localhost (cpc154979-craw9-2-0-cust193.16-3.cable.virginm.net.
 [80.193.200.194]) by smtp.gmail.com with ESMTPSA id
 z7-20020a5d4d07000000b00317afc7949csm3070116wrt.50.2023.08.18.08.01.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Aug 2023 08:01:01 -0700 (PDT)
To: Christian Brauner <brauner@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 jfs-discussion@lists.sourceforge.net
Date: Fri, 18 Aug 2023 16:01:00 +0100
Message-Id: <20230818150100.1208648-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pointer ip is being uninitialized with a value that is
 never read, it is being re-assigned later on. The assignment is redundant
 and can be removed. Cleans up clang scan warning: fs/jfs/namei.c:886:16:
 warning: Value stored to 'ip' during its initialization is never read
 [deadcode.DeadStores]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [colin.i.king[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.48 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1qX0yL-0002Mu-FK
Subject: [Jfs-discussion] [PATCH][next] jfs: remove redundant initialization
 to pointer ip
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
From: Colin Ian King via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Colin Ian King <colin.i.king@gmail.com>
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The pointer ip is being uninitialized with a value that is never read, it
is being re-assigned later on. The assignment is redundant and can be
removed.  Cleans up clang scan warning:

fs/jfs/namei.c:886:16: warning: Value stored to 'ip' during its
initialization is never read [deadcode.DeadStores]

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 fs/jfs/namei.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
index 029d47065600..57d7a4300210 100644
--- a/fs/jfs/namei.c
+++ b/fs/jfs/namei.c
@@ -883,7 +883,7 @@ static int jfs_symlink(struct mnt_idmap *idmap, struct inode *dip,
 	struct component_name dname;
 	u32 ssize;		/* source pathname size */
 	struct btstack btstack;
-	struct inode *ip = d_inode(dentry);
+	struct inode *ip;
 	s64 xlen = 0;
 	int bmask = 0, xsize;
 	s64 xaddr;
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
