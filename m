Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 024DCA3D50A
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Feb 2025 10:45:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tl36D-0006PI-14;
	Thu, 20 Feb 2025 09:44:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rand.sec96@gmail.com>) id 1tl36B-0006PB-Is
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 09:44:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BJJaDhjE30elvjUE90iF7FHjBFvFQhwKbe1es1j+S7w=; b=bsyK+fQaIUqcVhFBthaz7foE8F
 X2lGmM7io9BrE4XsMT63kmFYZ98713tdi3GYt2jXAciCwj+p6xXo+8tDbMM3UEFCZC0p+vGDFArOV
 RyZtc8a3eGCuBYBUM9X8uYy8ZdrgRFy8UdW/QwYF5qtBFKjgCUOnBF0sg8P/WRv7WyKE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BJJaDhjE30elvjUE90iF7FHjBFvFQhwKbe1es1j+S7w=; b=K
 DI0FwoVohbcL97K3OlCM8YhQu9xDwejJKl/uNoQHEObBw+k4tAp+5+sBfWjuRMDh2HHLi876GgRML
 yNc9GIgJJq4wpD2TdPPF8GAlrMjOS8Id+6Q7nu3Uv6Bl0TJwTbwbmwdq7wwmSYE6ghGGaanNHL25S
 NdnB1pxBqSDQjnqU=;
Received: from mail-lf1-f51.google.com ([209.85.167.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tl36A-0007MF-AD for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 09:44:02 +0000
Received: by mail-lf1-f51.google.com with SMTP id
 2adb3069b0e04-5461cb12e39so724038e87.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 20 Feb 2025 01:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1740044630; x=1740649430; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=BJJaDhjE30elvjUE90iF7FHjBFvFQhwKbe1es1j+S7w=;
 b=f92kXE+4swBpkLfL3ePukAHBanC1AtGh+wxM0mYFJqLlpQ+DeACgD7Y/V5pvNOTrZ9
 wcItz3HfIg3f5luxMNyK6nP2o9PUcN//ssxNLRZhdm0v8uQJXvQ6GALr8NmI6BNY7TEh
 7dNI+bDzwo4NKTaLxmAL2BrkgHRIl28EeIq2g8I4u7nirRRlAo8Rr9JmuQYVjl2cZGGM
 mk+PgF9PRrnMHQjOrHG7IQwQ+A5dVsctWT9RLtuQkIJce8l9GCDM/liizxumPkRIMpdg
 R5HYfbcJ7mpJxf4epXzctdVDTVn5g+EUjAVvpBLUtXILg6QAOsgg7p26H6jWe7TXmx/7
 sMsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740044630; x=1740649430;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=BJJaDhjE30elvjUE90iF7FHjBFvFQhwKbe1es1j+S7w=;
 b=nKD4j+2C1JXePAwVv1ZULxJbPktZD0IpOY6YENkXeBdkvyVeLZw4DBtpFnblm8opS3
 TBVIcDje6nyITAD5+M5GznvZPjhuieEpg51VTJvbgPNa4T+Uy+PNWJrK0YdXFRWvRrSC
 +ABNCVUmFbdrMyS5rmFaSfYt4buLc6aE6t531Ps3emtSyCm3DUOdr9xS+o6RgDu6cNDK
 93D+feVufFBnQ5fLoR3HBbmt53kh3cV9kNO+TVoEi54s7uH2dyPNL/6Euaz9FtSlpRYv
 +ze5toYRBTbOeEq2FdJylPUzh0TIkLNwN2q3iO0j0VFUzKRxlBceMGK553r4fccsf8S4
 ilzQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXjAdFxjQbcPnt44nWwqwZ9lZ4UVbbYrdjXT4GQfS1TWvvFOrSk18l9/SaxS2KfhZHOaJPY7mqIFYG6xwS3zA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwqZDRhPg4mHI4PCEOIlvEJQv0ixTAoioXNGd62+MifI3206iqX
 0Q4FaIuq7/58FYDUbgZKn+lIsUpqMgaHdIoan+pZx1anqViRXFf6
X-Gm-Gg: ASbGncvlNFORXOpopzGQzCtFfD+zuGrCJD1+fZHfTmBLCjKkWkeILrcoD0D1f18DZco
 ns43sU0gwxom9gAk7BDzRst88LSNIO0U0qx4M1/X45GU6rn81sHdZ6IxC2eNe6GDX0A8Sbw489G
 7bR2MmRMolHr1o3s901i6q0sqXrBzqasNvS83xQ+6UJ7ZCans5wQhy6plRLeWu8y3mtu1QzMqjj
 BAFXnVHNkHl64qzSYe2qu+BUkbXpSl1BD21o5TJqcs1wisrOws+fr0osCxEYUEcxq2czldrLwaP
 igI0oJFlCOfLjZ7/9YZo6Ux7kd938C7TVNMV+QR7X2CXG4sisM8mpR9QtA==
X-Google-Smtp-Source: AGHT+IHbjmlrQKyZa9vOcI3zku2nA08D6JCeRqFIufLZ/yEvKNLBxeThOwDv51mb+aAJjfRscer+Dw==
X-Received: by 2002:ac2:4c46:0:b0:545:bf4:4bc7 with SMTP id
 2adb3069b0e04-547243c348amr811852e87.19.1740044630137; 
 Thu, 20 Feb 2025 01:43:50 -0800 (PST)
Received: from rand-ubuntu-development.dl.local (mail.confident.ru.
 [85.114.29.218]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-546222619d3sm1158816e87.209.2025.02.20.01.43.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2025 01:43:49 -0800 (PST)
To: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Thu, 20 Feb 2025 12:43:49 +0300
Message-Id: <20250220094349.1685195-1-rand.sec96@gmail.com>
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
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.51 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.51 listed in bl.score.senderscore.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [rand.sec96[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rand.sec96[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.51 listed in list.dnswl.org]
X-Headers-End: 1tl36A-0007MF-AD
Subject: [Jfs-discussion] [PATCH] fs/jfs: cast inactags to s64 to prevent
 potential overflow
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
index f9009e4f9ffd..f89f07c9580e 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -3666,8 +3666,8 @@ void dbFinalizeBmap(struct inode *ipbmap)
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
