Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6FD9B076C
	for <lists+jfs-discussion@lfdr.de>; Fri, 25 Oct 2024 17:13:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t4Lzm-0003nv-8x;
	Fri, 25 Oct 2024 15:12:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zoo868e@gmail.com>) id 1t4LmJ-00017v-Hs
 for jfs-discussion@lists.sourceforge.net;
 Fri, 25 Oct 2024 14:59:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GmnpJhJhZ+H4a0YQJ0NmfUt9oLEgwDhsqXS0+70xNtM=; b=YTc23iTk6lvt5JSy8JSSS9iY/9
 moLKFc2qKlsireqEJjV9NRYtAgKk8eRPl91bXSA6H3wr4bBQHahhvDCF1taopUz2WTtrydMRxcMff
 apDmLk0XYLNIBYzeqO9Ebsec++uokt2+3Ffs6gJiBC2LL926NBIpBlhZ3k3J9fZog3KI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GmnpJhJhZ+H4a0YQJ0NmfUt9oLEgwDhsqXS0+70xNtM=; b=F
 EFCUemUoy5weSrrz2ZHfj9IvoNubRgeeXb5g9GH4GTtxRhAVERjpT2kz8J8C1eYMmWcRSXKe5CZ7T
 tkfozoq0fvo/s8GUekZO00s3EKpKXvfomidEQ66sFAQPeNRiOGeyJDoDcbSZqggYAFQ9/q4N9BHcj
 Vre0FiWh4joWy7GM=;
Received: from mail-pf1-f172.google.com ([209.85.210.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1t4LmI-0007V9-W2 for jfs-discussion@lists.sourceforge.net;
 Fri, 25 Oct 2024 14:59:03 +0000
Received: by mail-pf1-f172.google.com with SMTP id
 d2e1a72fcca58-7205646f9ebso539806b3a.0
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 25 Oct 2024 07:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729868332; x=1730473132; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=GmnpJhJhZ+H4a0YQJ0NmfUt9oLEgwDhsqXS0+70xNtM=;
 b=hd61ieC1gXjqvxInLZFCkUMfPVtENi+5jCgXDyo7GV8iKo1NJ2jhPDlkGEx/ihrpG8
 2WOztC5LmFLp/84U5jlgo9u5JPOq+w5LwnaGtqpDcKPu4M6QgM0qQuVDrQNAZzaEyGLZ
 AkyOK+quSKsl22XtwcQnFCrouT/nX3DnPkLRl2hupoj7uHE2D+cKHP9KsDaeOu5nts1P
 +EXjZ36ghxf5zJ9As6lU4rg3CHapDR+hoONY1wG/mjFpRKUwgLamAvswlOQTwNaOTKNp
 woiRf0+y77v1LIPvGTYNIdN6bQI4LTNlxPkFbKdwbk7eta5jEpyczPA1Q88AJ2w2lXt2
 OjRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729868332; x=1730473132;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=GmnpJhJhZ+H4a0YQJ0NmfUt9oLEgwDhsqXS0+70xNtM=;
 b=M7td3V6ApmDMRycVBmKNvK3J8NMHLfEy92BGLLUSQ6rd80k0LI2GHc6ZksKDRQZhNm
 t8HGcMfVmLA9D4oNNb6d8wAJusPAS2gsaHhSSCdUnv2xbPt0tRC9ayEcuZp4uEutEf+a
 iwrWASEcOSfdNOabyGnVl2M0JOICtR5meNe4xVcs7iUAE0jOvRNIHoAOi5vSzeONenlo
 c9zF8QT90gRuQCieFq4QJhoCCKM5Iwnipq4xzCWGg3+wiHglvqGXvJFTY2fg/QyEtnxO
 dPzQhWS7zBNP8vK4A80eBFpmWpbxuF2alodW3yKaYdpzBa6JOnrYZ/mD7mT5AZIQk88D
 M8fA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXA95bre6Fbp1pxK5xz36JS/MXorSH4LdptkZ5ysSm4mbqgbfjPdI/ElaqS8m/bD3zQMWXjpVyVkwvpXgIHbg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yxkg2LiiG83JZsdxeUW+8m8u5rd/LboL5c9Lv5gxwjPeUjn2w1H
 UC1ORRiIxidw7dNMA3EQhsn8BiSIil1f0p5OEp4C0XfqlSHEstE+
X-Google-Smtp-Source: AGHT+IF7KtDeQ31S7AxZo2zL9s4UHqylhFu64vx6lAS8Pc9c0Lk5OAwAOuV3oQjRkjuiXO9mwWNDKg==
X-Received: by 2002:a05:6a00:cc9:b0:71e:5a6a:94ca with SMTP id
 d2e1a72fcca58-72030b7c2f4mr14573433b3a.19.1729868332106; 
 Fri, 25 Oct 2024 07:58:52 -0700 (PDT)
Received: from TW-MATTJAN1.eu.trendnet.org (219-87-142-18.static.tfn.net.tw.
 [219.87.142.18]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7205792198fsm1154200b3a.26.2024.10.25.07.58.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2024 07:58:51 -0700 (PDT)
To: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>
Date: Fri, 25 Oct 2024 22:58:20 +0800
Message-Id: <20241025145820.96761-1-zoo868e@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The starting bit number of free bits should not be >= 32 as
 it is 0-indexed.Assert that the number of bits is < 32, or if it is 32, the
 input word must be 0. Signed-off-by: Matt Jan --- fs/jfs/jfs_dmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (-1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zoo868e[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.172 listed in list.dnswl.org]
 -1.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.172 listed in wl.mailspike.net]
X-Headers-End: 1t4LmI-0007V9-W2
X-Mailman-Approved-At: Fri, 25 Oct 2024 15:12:56 +0000
Subject: [Jfs-discussion] [PATCH] jfs: UBSAN: shift-out-of-bounds in
 dbFindBits
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
From: Matt Jan via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Matt Jan <zoo868e@gmail.com>
Cc: Matt Jan <zoo868e@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The starting bit number of free bits should not be >= 32 as it is
0-indexed.Assert that the number of bits is < 32, or if it is 32, the
input word must be 0.

Signed-off-by: Matt Jan <zoo868e@gmail.com>
---
 fs/jfs/jfs_dmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 974ecf5e0d95..b9eccf8900eb 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -3015,7 +3015,7 @@ static int dbFindBits(u32 word, int l2nb)
 	/* get the number of bits.
 	 */
 	nb = 1 << l2nb;
-	assert(nb <= DBWORD);
+	assert(nb < DBWORD || (nb == DBWORD && !word));
 
 	/* complement the word so we can use a mask (i.e. 0s represent
 	 * free bits) and compute the mask.
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
