Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE884780E88
	for <lists+jfs-discussion@lfdr.de>; Fri, 18 Aug 2023 17:02:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qX0zg-0006A0-3o;
	Fri, 18 Aug 2023 15:02:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <colin.i.king@gmail.com>) id 1qX0zZ-00069s-4N
 for jfs-discussion@lists.sourceforge.net;
 Fri, 18 Aug 2023 15:02:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zJHlyZzft6x6dnuuBVxn9Ii0k2/HjUEQPD+5O6t3C00=; b=QM8W2lhA0/MZzDyvT1Si64a/GU
 4bSEt85E4Xens/yjUmFM+OhN9PYF8PZQAtYWW6o/ux74az5g8GMPNwyjRD1XrOHaHiAL9XFVuwlba
 Xx22UeAGDh9fxVJbXyZyaZZ+hL6ke9hWzu28sQmJOHr9zQUfkfzKV6WJ8cE2fT+Av7II=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zJHlyZzft6x6dnuuBVxn9Ii0k2/HjUEQPD+5O6t3C00=; b=M
 A/rTg8u0ScC4hKCAe22Dq6XYP9ugDukc0zxhbAOTP9TzKqjNoduiiVu5GbCFFFDwS61tivkGM7NeF
 QmgIWUadkKmVr5GGcjmR33W5QB9T/z7J+F6h1AAyAameuWKJ/L72Pozuv9mG6T5qqTx0uBqHmzci5
 6vXYuFAOoY1lgXwg=;
Received: from mail-wm1-f49.google.com ([209.85.128.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qX0zT-008muR-Hc for jfs-discussion@lists.sourceforge.net;
 Fri, 18 Aug 2023 15:02:21 +0000
Received: by mail-wm1-f49.google.com with SMTP id
 5b1f17b1804b1-3fed963273cso1751375e9.1
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 18 Aug 2023 08:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1692370933; x=1692975733;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=zJHlyZzft6x6dnuuBVxn9Ii0k2/HjUEQPD+5O6t3C00=;
 b=ClpemFziK9wgtXZmFtabx4yCanw5kv62zUa2AoBVF/sVwNtcp9/gQX/jMsarS/1bwD
 y0laLAq9Xk3Rr+RTy5yb6zhQrdl4NvuapT/NQaU1xfwnLYuDCw/JwvB7yYmzzoNZzROD
 AOote0PLtBPLe6+uVOL9f8EnS7Rr3EhRpc7dPQPpSwDgX7bzXKhiRvbbM3PQc+YQKFRP
 Rsu2em6iiFsKkt5dViXRb9PsSjDqxwSp21DgqbGBBjG5d/Y29k7nUATUeDhmrCLQh+KZ
 yrwLKvvkwnRW7N1IBKpOSxIcx88oL479Mz3tjhCy1UEkiGKRHLeCqGArmdc6BbZflKbC
 lNNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692370933; x=1692975733;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=zJHlyZzft6x6dnuuBVxn9Ii0k2/HjUEQPD+5O6t3C00=;
 b=S4OK81wA20++mU8EKjjk+I9u/O99Zjevu3G32SVYQf8eLRJsTZUQMzm3485zYNu0TP
 +fujo7PymYg+I8vDPVmiAS2heBh+Jd6kDk2beYp+APPd6X7+MHB2QB9kloSy9v88R7dM
 KOuAPUkyuywK6F73+faznRbJD5+XW/LwhHBW0m+Nezf0VW0DilOiFPXU3I9RNcKnqBph
 eNLnOYtGSwECBFU7kLgMFY9yde3EAVir+FpWQLfgFZG5WrfNQvI1cGzf7M03aqzlURxE
 mVHIHuRPdIywvhrdI5YtR9d1hiA2qO50l3s3d1DuE+WGiF16V16qX3iZipYlwYquYJQi
 Idpw==
X-Gm-Message-State: AOJu0YwvAsOndTcQwrqK9hkeAj5094WVIVvM0yF+mOo4FSaOR8FHJWbT
 zct1FfDf4JajvumTbj4Rlxo=
X-Google-Smtp-Source: AGHT+IE+MuOg7mP0WA9aTQK/GskX/8rO9PO2TLBbAuMp98i0Ofh2O1gm7nR4FrZBFoOfi+LH5Dh21g==
X-Received: by 2002:a5d:4b8f:0:b0:317:4bde:9e72 with SMTP id
 b15-20020a5d4b8f000000b003174bde9e72mr1782210wrt.10.1692370932811; 
 Fri, 18 Aug 2023 08:02:12 -0700 (PDT)
Received: from localhost (cpc154979-craw9-2-0-cust193.16-3.cable.virginm.net.
 [80.193.200.194]) by smtp.gmail.com with ESMTPSA id
 y17-20020adfe6d1000000b003176eab8868sm3046181wrm.82.2023.08.18.08.02.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Aug 2023 08:02:11 -0700 (PDT)
To: Christian Brauner <brauner@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 jfs-discussion@lists.sourceforge.net
Date: Fri, 18 Aug 2023 16:02:10 +0100
Message-Id: <20230818150210.1208746-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The pointer ip is being initialized with a value that is
 never
 read, it is being re-assigned later on. The assignment is redundant and can
 be removed. Cleans up clang scan warning: fs/jfs/namei.c:886:16: warning:
 Value stored to 'ip' during its initialization is never read
 [deadcode.DeadStores]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [colin.i.king[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.49 listed in wl.mailspike.net]
X-Headers-End: 1qX0zT-008muR-Hc
Subject: [Jfs-discussion] [PATCH][next][V2] jfs: remove redundant
 initialization to pointer ip
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

The pointer ip is being initialized with a value that is never read, it
is being re-assigned later on. The assignment is redundant and can be
removed.  Cleans up clang scan warning:

fs/jfs/namei.c:886:16: warning: Value stored to 'ip' during its
initialization is never read [deadcode.DeadStores]

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---

V2: fix commit message "uninitialized" -> "initialized"

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
