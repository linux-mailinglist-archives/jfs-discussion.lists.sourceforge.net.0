Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CE4A3B24C
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Feb 2025 08:26:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tkeSW-000764-Kb;
	Wed, 19 Feb 2025 07:25:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rand.sec96@gmail.com>) id 1tkeSV-00075w-Gw
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 07:25:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A0ENxof8Q6q1VLO8ooi6Pw3i7LqiiqkWgEE8OJsU2qc=; b=AIhMcFdgh/c4Y+5jMlR4hR6c5v
 cYxtcqK/tikN/V3iR79IsYg0RFktRedSGcBcak2rMNWOxHX1H/B1vRcDMdepzYpLmYHL2B7weJ3Rg
 PAjAZAiiornvwPatrb5LX0VmRLftRJdWTwz4VkhH2WVoa1P+wjJShkUrTO11FCabLJzs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=A0ENxof8Q6q1VLO8ooi6Pw3i7LqiiqkWgEE8OJsU2qc=; b=O
 SqYcxHj9q8w1M/1XiRtskxiEcvH3DLb9vjVpx2bWLrNSK7vPJO/0IR4J8BUQKwE+8RxDoBVfWe+Ju
 B/zSBd2DY6Sa5LIivVy0B28zflsvl+rhSYKFpR13Atq8jg9UpkMbC7dCcH9f8zYZImlYQNN6ar3kp
 mJHik81tl+8Q/ftI=;
Received: from mail-lf1-f50.google.com ([209.85.167.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tkeSU-0001LE-7i for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 07:25:26 +0000
Received: by mail-lf1-f50.google.com with SMTP id
 2adb3069b0e04-543cc81ddebso6648656e87.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 18 Feb 2025 23:25:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739949914; x=1740554714; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=A0ENxof8Q6q1VLO8ooi6Pw3i7LqiiqkWgEE8OJsU2qc=;
 b=JVcr48lJF0N7TV1XnABB1uTUoWW/kRD2f43hdu+mAK1QS4spnLwA3d2lOj8F8YtLjH
 7jzPwUvhSSYhivDe/bmJHw3PYq03EVTqYC/G3GWugSfxPFbnLcVwdYeyJC0m2WhhYYDN
 hp1Xevm6EqxsUbLu6M+BuhhCU8V3rZNx0sYzCu2Sv25lTCdfdPA3ADgM7mr/jyu/2Mmp
 NdoUnCiMJiSyFwdvMLrcRkQ4NG2JnyVnQNmUCKcP2EE6dI494Z/fBkKiBuPsZF79S4LD
 hHpSdPN4l9Cd52gPrAfIhUMGilTTAoIHLJxtq6pIM3aORXFxqXNH57Wcmo3VNX08km9F
 sT/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739949914; x=1740554714;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=A0ENxof8Q6q1VLO8ooi6Pw3i7LqiiqkWgEE8OJsU2qc=;
 b=IQ3LjJQvBy+0Ce47ejEV3MfzXMw6spgvIe2YBjS6zx3R8IFMIPqfYdr4nDNbroUrHO
 XAnpGX02aWh5DRtOvVJ95BPDoGOATBB18aHXGDR6QkpHUrqT6IRhGCin5TterRKJ2Dux
 +GS9I0/fdL3KgiYDZX/OSlZtudROtfukn9WOSK+ay7FfhJtG9sSRmMY829u8SfwlsQoB
 ZWjy2ihmnQVC7GfL4Hf3MthnMg4EDRDs8lAcYXTy2LcJAXP6cWcDxwCAfJXd24Kd5GRG
 k8uDdTnrH5KBuLtOjeY3gOp8ln3pK2sb05x85Mh++qM8ceWXaU0RjxjhUNQeJA3FMvPP
 LZnw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWu9kmahK4Uc96KLnL7hnsK7Z10ZyY8Sb71hFqOg3Bd6wKNZskKKHXiESWl2ZMfjYFytDYT4JEG+7ZRhq+NLQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxB3wQrQ54U8pMa/WHJyXlRct7JR39Y3EdJ8xG2c1cCsLP4/6W0
 F0zb8VyegnJtvdqw1lztP9hp2XJ5YuT0H2sM5P6ZrWlUYcCnUehb
X-Gm-Gg: ASbGncsTzjAfKWaFz90dV+3hNLk3uJJVslL+q+qVj5CKZ64ZKeG7XxTDXTOWcEp6wfI
 dd9hX7/2SOOpEiQ1eUFjevFHvmtzzegL9gjZRJHOklv7CfR68h4ZB0BZwJ2Hic+Wv/Z316O0zyc
 FDxeMYnWii5UE9GSHRvgqshVh3/gV2eEUIt7XasmvRMv/zkYe+zoSZ0X/3QtmfuoaaSFLWah3hM
 BXW4L6ObrBsAkeevzlb5lBFuPwTxWaC3cPoRau3WfQid8nQAtwN3ydpzrgkMGbn8gtc/CzHk3GN
 CernF06u5DuaYShXFKsuwdNP1/vMHcsEil9/QGCYPIrehMBI6nu5BjGhMg==
X-Google-Smtp-Source: AGHT+IFg1nLj71evBy1252P5sjW+JPjU9JtEN4hRisyCPSebyAyUpOGhScMn16nbqjWJJiQwgMCMEA==
X-Received: by 2002:a05:6512:1593:b0:545:e2e:8425 with SMTP id
 2adb3069b0e04-5452fe904b8mr6084517e87.39.1739949914311; 
 Tue, 18 Feb 2025 23:25:14 -0800 (PST)
Received: from rand-ubuntu-development.dl.local (mail.confident.ru.
 [85.114.29.218]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5461ca6f722sm1129423e87.71.2025.02.18.23.25.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2025 23:25:14 -0800 (PST)
To: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Wed, 19 Feb 2025 10:25:04 +0300
Message-Id: <20250219072504.1655151-1-rand.sec96@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The expression "inactags << bmp->db_agl2size" in the function
 dbFinalizeBmap() is computed using int operands. Although the values (inactags
 and db_agl2size) are derived from filesystem parameters and [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [rand.sec96[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.50 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.50 listed in bl.score.senderscore.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rand.sec96[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.50 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tkeSU-0001LE-7i
Subject: [Jfs-discussion] [PATCH 5.10.y] fs/jfs: cast inactags to s64 to
 prevent potential overflow
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
From: Rand Deeb via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Rand Deeb <rand.sec96@gmail.com>
Cc: voskresenski.stanislav@confident.ru, deeb.rand@confident.ru,
 lvc-project@linuxtesting.org, Rand Deeb <rand.sec96@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The expression "inactags << bmp->db_agl2size" in the function
dbFinalizeBmap() is computed using int operands. Although the
values (inactags and db_agl2size) are derived from filesystem
parameters and are usually small, there is a theoretical risk that
the shift could overflow a 32-bit int if extreme values occur.

According to the C standard, shifting a signed 32-bit int can lead
to undefined behavior if the result exceeds its range. In our
case, an overflow could miscalculate free blocks, potentially
leading to erroneous filesystem accounting.

To ensure the arithmetic is performed in 64-bit space, we cast
"inactags" to s64 before shifting. This defensive fix prevents any
risk of overflow and complies with kernel coding best practices.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Signed-off-by: Rand Deeb <rand.sec96@gmail.com>
---
 fs/jfs/jfs_dmap.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index eedea23d70ff..3cc10f9bf9f8 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -3728,8 +3728,8 @@ void dbFinalizeBmap(struct inode *ipbmap)
 	 * system size is not a multiple of the group size).
 	 */
 	inactfree = (inactags && ag_rem) ?
-	    ((inactags - 1) << bmp->db_agl2size) + ag_rem
-	    : inactags << bmp->db_agl2size;
+	    (((s64)inactags - 1) << bmp->db_agl2size) + ag_rem
+	    : ((s64)inactags << bmp->db_agl2size);
 
 	/* determine how many free blocks are in the active
 	 * allocation groups plus the average number of free blocks
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
