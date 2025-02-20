Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC17DA3D573
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Feb 2025 10:53:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tl3Ek-00026T-8j;
	Thu, 20 Feb 2025 09:52:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rand.sec96@gmail.com>) id 1tl3Ej-00026K-8t
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 09:52:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oYeH3hsiujJqSPD+ca7uJNb/p23dTbfjFDyBF22SX3c=; b=M5b4kuuzll5QCUy9xnx490nD9b
 37vyQBoHEaL7RGLRQD7lpXfxda9v8r4Ytibz1/N9jj/H/JBNycXM8QVhnoTCefrsHVcExWi/IENDF
 H9zUzIjS+b4HdQXx7OdE1Be318QkVsWOY4T1CYAmivWqk9ZAKdNcsbeId4opv0HkUU7M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oYeH3hsiujJqSPD+ca7uJNb/p23dTbfjFDyBF22SX3c=; b=h
 dzEfN0okKX1RbuvUIA9G9cmCiYvh7NamY8LuKOqOeAQweqy8o6yEA86qbpRjvnMNoR4xSE85gt+XV
 raZROqbBvp8P2ainVdVI+zJzWwd14oveLqex15Y3WBdDhvAX2+hhWkmJNl7diMertvBeQ9hz/vTIX
 z8Ludd+tlXNEwlxk=;
Received: from mail-ej1-f45.google.com ([209.85.218.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tl3Ej-00087L-3Y for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 09:52:53 +0000
Received: by mail-ej1-f45.google.com with SMTP id
 a640c23a62f3a-abba1b74586so113288866b.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 20 Feb 2025 01:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1740045166; x=1740649966; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=oYeH3hsiujJqSPD+ca7uJNb/p23dTbfjFDyBF22SX3c=;
 b=EGRdbLqxzVA0ILCe4anjBZrXVKbkdWuswDre7qrTnf8Tuo7sOD6eVb5Bs8HtbGc1WS
 4C5LX8yvbBNrh3Yj1wXHB4Wl7H4YyvP0bf4CCBXkKHuRusRJQ5/sFnL2cAp+EBp7Hxtf
 o3jyJZLKJKuM8jPWLb6WkI16bap86G/k6o18KiXuDIZy0IKHgXng4FuTAes/KeuD+H1G
 0vDS6RJPMtB1aahCfpO5xcFGWxFBlw3I2YOlHA8x6+iAfBUULriURuPgrzEt2BLd9osK
 bUUK9Vc3TbkiOYcmwjsDQzqIdDYuVAO8YhB1I5G5ajybTdoS/OKtuZZwDjFm+lvo/rDV
 DLNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740045166; x=1740649966;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=oYeH3hsiujJqSPD+ca7uJNb/p23dTbfjFDyBF22SX3c=;
 b=QGmemPH/ddafFicQIYGQHTg7L8q7rJhJy8fJuMBw/T0seHPRrZXoTXUeXf0RoA6zMe
 asQOMY/v/KC3Snex2X05U6Rn/o3yFTS9+iRHJ/ACTTEj4SFxvUX/1RluJwfXsuhuvdId
 qbCcwPx0OWJrvTVDxDacFW303w1a5khq8rIlGAuI96gVg5DVhNcN2pyQcSjEheiSAZeI
 LYkOogZJWEBHe1+Zo1mVnufByF41wbfH1oWkKCXp/Ne4oXGvMJsFIaaIC1cNW9gylx3M
 85K34e9/tAOF38kT099X3mBfoMI2Mdv0Zmrb2EJC1M2Uuh+4CoPcDlFfmdnogHE9ee+e
 qsRQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUXv7PCtYSU9bhlcZjzlhyOPlzJ0o7hafI8DV8ath8/y6hG1y4O/qcHlmlj617qi2Nw+W9/kiyrcY/G0zzifg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yyc8YvfCg9ID/MoZa3ady64Zk4lGxkoiLs20wTE4Kum+TtatfNL
 LnPt4TrlgpSv+i5XSrobnPq/8Zz09VEZJPdxpdL2+6+nck9Kwbpm/kOmJ2/lYytfKA==
X-Gm-Gg: ASbGncv2M29F6yI7jrKqFU0Nv0FQbAJe69TtWMN2/dBflZTSg+15UJ0rksGdu8qbjYw
 +nYD/fudlSn4EHm6Zjss/eEJzhKlFhLk/haqDGeqaD+WIaSlQGsNgOM6yYQijtjyUVJZkhYo62U
 PQ8OReIS+gCxxiQQ7Zw6dFxxQ3QkkfFfE37gOo7+VnDd0CjLGl3o+2nHhgeAsIyi3XHODfJChim
 ao6BN+LESEySrJ19TL2KRQoKlZVTyL4UYbakzTSrDs/s1j5z56y3AJtHCGfJ6C3iYH6TWFqcdTn
 DDw/cjbySpwRUvkZglBD2zIeMpLuig+6NHm7oPk0/BZ/9s6PRlCStQ03Wg==
X-Google-Smtp-Source: AGHT+IEs1WdJOsowbPu0y6P5M0ykiG0ZNKvSxS8Q3SxhJOnODBOR4GHwarRnsfe4nv6Bt0HQ2krh5Q==
X-Received: by 2002:a05:6512:3dab:b0:545:11fa:caf0 with SMTP id
 2adb3069b0e04-5452fe26518mr7080901e87.6.1740045156197; 
 Thu, 20 Feb 2025 01:52:36 -0800 (PST)
Received: from rand-ubuntu-development.dl.local (mail.confident.ru.
 [85.114.29.218]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-545304defb0sm1741428e87.6.2025.02.20.01.52.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2025 01:52:35 -0800 (PST)
To: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Thu, 20 Feb 2025 12:52:31 +0300
Message-Id: <20250220095231.1686611-1-rand.sec96@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The JFS filesystem calculates allocation group (AG) size
 using
 1 << l2agsize in dbExtendFS(). When l2agsize exceeds 31 (possible with >2TB
 aggregates on 32-bit systems), this 32-bit shift operation ca [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.218.45 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.218.45 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rand.sec96[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [rand.sec96[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.45 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.45 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tl3Ej-00087L-3Y
Subject: [Jfs-discussion] [PATCH] fs/jfs: Prevent integer overflow in AG
 size calculation
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

The JFS filesystem calculates allocation group (AG) size using 1 <<
l2agsize in dbExtendFS(). When l2agsize exceeds 31 (possible with >2TB
aggregates on 32-bit systems), this 32-bit shift operation causes undefined
behavior and improper AG sizing.

On 32-bit architectures:
- Left-shifting 1 by 32+ bits results in 0 due to integer overflow
- This creates invalid AG sizes (0 or garbage values) in
sbi->bmap->db_agsize
- Subsequent block allocations would reference invalid AG structures
- Could lead to:
  - Filesystem corruption during extend operations
  - Kernel crashes due to invalid memory accesses
  - Security vulnerabilities via malformed on-disk structures

Fix by casting to s64 before shifting:
bmp->db_agsize = (s64)1 << l2agsize;

This ensures 64-bit arithmetic even on 32-bit architectures. The cast
matches the data type of db_agsize (s64) and follows similar patterns in
JFS block calculation code.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Signed-off-by: Rand Deeb <rand.sec96@gmail.com>
---
 fs/jfs/jfs_dmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index f9009e4f9ffd..edb22cf9521a 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -3403,7 +3403,7 @@ int dbExtendFS(struct inode *ipbmap, s64 blkno,	s64 nblocks)
 	oldl2agsize = bmp->db_agl2size;
 
 	bmp->db_agl2size = l2agsize;
-	bmp->db_agsize = 1 << l2agsize;
+	bmp->db_agsize = (s64)1 << l2agsize;
 
 	/* compute new number of AG */
 	agno = bmp->db_numag;
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
