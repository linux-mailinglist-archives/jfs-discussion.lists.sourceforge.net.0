Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E14CA3A030
	for <lists+jfs-discussion@lfdr.de>; Tue, 18 Feb 2025 15:42:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tkOnG-0004Rz-RJ;
	Tue, 18 Feb 2025 14:41:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rand.sec96@gmail.com>) id 1tkMz3-0004nl-D5
 for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Feb 2025 12:45:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BjM/WutdghfOa1rqYy4L0lCjsN+xham0bipKmB62Pf4=; b=T1vtWSd+4VrxKvJf2x9hSorrkH
 XsL5uGediXkZykx49VzVL/R5M4X5GWoWOuuDKfjUksj4p8Obsp4kM9xiIFpR8PQTBINM8jH7CyHbH
 7nW79ck+x1Vo2YKdlJaiGVEvhUXEMHkpQ1rk9qYwovrcW7n9oPmL7DiKdwNpzc6uv8io=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BjM/WutdghfOa1rqYy4L0lCjsN+xham0bipKmB62Pf4=; b=E
 2XLIN5oSTd1elEes3E5gwdzbKQfKjwYs39sxOESJSxo5m+dJt2YoCVKOaVicKq3QlX6wHb8oOPS5I
 fqgU0WA4CaV95EXZMVpJEkx5fgfpCuv+bzxHCZv/viBtPgQ1N9bNyN1y4j/0DLMTAeazyTdLbJbPa
 lbauEiJZ10zzZLWc=;
Received: from mail-lj1-f170.google.com ([209.85.208.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tkMz3-0007Kj-2A for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Feb 2025 12:45:53 +0000
Received: by mail-lj1-f170.google.com with SMTP id
 38308e7fff4ca-30a2594435dso22643791fa.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 18 Feb 2025 04:45:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739882741; x=1740487541; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=BjM/WutdghfOa1rqYy4L0lCjsN+xham0bipKmB62Pf4=;
 b=Ls06xBqdEF/tG1vX/tcW8atP+MPuK35hWbcI9TZS4mlXXM7cJbc1hfx9JeIUw7k8yO
 VHJdNZoho06qA2wSJm2NFzqpXLS/Y96m0Kl87tn05JJyNkTV8Szl6AGiLMRCvOY0lNxt
 GcEoWmNfGuFsfevIkmn66lh6a83FE+fNyYPBH119hgn6koJN33AJvTK+COyS5tkCRS6Q
 BkwSXuJtbwA28+crBAR5G44qL9Jl7rKfqZywVFd9Q97MhVs/jlu42Eq+T+gj4ApZi275
 vR1J1KRPguHxuOvTXAjlx0DyW4sH8jGjx0JUx2wa/1YgXijqWlIDkgElwDCH3EVhgqO/
 fpsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739882741; x=1740487541;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=BjM/WutdghfOa1rqYy4L0lCjsN+xham0bipKmB62Pf4=;
 b=WLwEV6gXzko8FclkDRjKpmMivXsAx4tompMGy2DG2Z1dk56oBxtQINFnHEBHTUtIWB
 EpRpXY18ibbPA//a8LI/hma6yFhEgWqLSKe56PmG6cH8GimJZjiePa7RRnKuP3Oya2a8
 qnLuIg2xfXj9f4QseI/rchzcjd3L+ien1OzDAar9kTPEYDaj+N1xTooB5RDdWiNCd4rX
 qlbSORpm67dXbYvCuzctoSUY/yXDnMi0AAeNJcQZAms9OUrYiYGei3ZB80oz0ziMEdpK
 MBLqcBxrKVv+Qa1W2P0WZf2MjbcOijiHcfcMBN0WP5D/kVd83sOa/47HgEFOLOQ6kRfU
 wx4A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWzWwY6WFAayfdNqSnTMBH5pHlg/2jTkyhq+a636Ta2L+LthjprL70ukPWx8BWJ4WP+bCvCprgn5bs6TVtKRg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yzli3v2GkYQSqBZVonRFd7fzZZKa1dP9BCRSsaU5Vd80/STMIPm
 DuE5ggHSM+9vfdN+/pdkO8ZjI+4c73OmwzbU+cfBM7gN53ftB+SY
X-Gm-Gg: ASbGncscawAoYfixxqTELu94zddQrCIHxh/zvCMSgjxX4tXa6p8oJmyMb4Lc2dG0r4b
 YAmjTRO0Br7iI3Ft5+NIps3wTpw3LLS5cy2T69U0es3yYrgY+wLWWMG7v5Yy7u0x4oV+1guLmuu
 CGzw3iRlMR4QU795TeHwiAK/IPHVIlwKXNNoRu87tFNnPStce/+SA+ragKTg/9ppJwlmLL2+j1j
 3HKdCx2QIUkm925pTAsoPNShU6OL7H68JfmHOI2v3c0JtsAINIladZ1D+7dw5tJZ7aPSSACMtOf
 Xu48KhVmHQpmr2DWBeAi+tu6NmOaOLni716Kp5Hx7gO455CWru4bWHJd0w==
X-Google-Smtp-Source: AGHT+IENyW2umSDB5pOJx7840FOiWwuBpfLSj8lgmLXbWx7P6AbWicT9TJtBU9iAjWywalwJYLCE5A==
X-Received: by 2002:a2e:918e:0:b0:308:e9ae:b5b1 with SMTP id
 38308e7fff4ca-309288dd513mr39040061fa.9.1739882740962; 
 Tue, 18 Feb 2025 04:45:40 -0800 (PST)
Received: from rand-ubuntu-development.dl.local (mail.confident.ru.
 [85.114.29.218]) by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-309259213e0sm14449281fa.58.2025.02.18.04.45.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2025 04:45:40 -0800 (PST)
To: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Tue, 18 Feb 2025 15:44:28 +0300
Message-Id: <20250218124428.1638816-1-rand.sec96@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.208.170 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.208.170 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [rand.sec96[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rand.sec96[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.170 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.170 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tkMz3-0007Kj-2A
X-Mailman-Approved-At: Tue, 18 Feb 2025 14:41:48 +0000
Subject: [Jfs-discussion] [PATCH 5.10.y] fs/jfs: Prevent integer overflow in
 AG size calculation
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
index ef220709c7f5..eedea23d70ff 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -3465,7 +3465,7 @@ int dbExtendFS(struct inode *ipbmap, s64 blkno,	s64 nblocks)
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
