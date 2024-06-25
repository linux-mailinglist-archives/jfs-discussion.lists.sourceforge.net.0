Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F31B916E4F
	for <lists+jfs-discussion@lfdr.de>; Tue, 25 Jun 2024 18:43:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sM9GN-0000XQ-0V;
	Tue, 25 Jun 2024 16:43:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <peili.dev@gmail.com>) id 1sM9FV-0001nz-3z
 for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Jun 2024 16:42:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gJYda0ZTUkWw1q6d9Psi0GAgd/bxpCi7wNXv0O0kijw=; b=DCv9B/Sq30w6aJgT3NirXvtrDO
 SERPY7RghoyYF7OrTHBwORwMiUdrD/ohP0C7zUzWYpKcZGvyGnE4UPUFA3mwNGdnIscDMQKLR50zi
 +2UrW0zNYjLnEadw8Q5kQSO7b/DkpXfOAEsGaq0MDKjicU7DavNQ9q79vpFQ+iuIDM4Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=gJYda0ZTUkWw1q6d9Psi0GAgd/bxpCi7wNXv0O0kijw=; b=h
 AejJX6WzFFIbtBFP4+dXVZauI4M/l9zhSXmVsm+YHUbmmmcxT6TFBYJMBVoJqqlriGBqyTakkYtqh
 n9GIXEF2PUPbke/rHG6728mdk+ulmH6CHoo0dR/hR+XAKUi5lV15XT3uccbU6xjklMhIVf19V0Pqk
 WmAXbmJ62g4/0Hd0=;
Received: from mail-yw1-f182.google.com ([209.85.128.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sM9FU-0002Mk-In for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Jun 2024 16:42:28 +0000
Received: by mail-yw1-f182.google.com with SMTP id
 00721157ae682-6454660553eso22267767b3.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 25 Jun 2024 09:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1719333737; x=1719938537; darn=lists.sourceforge.net;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:from:to:cc:subject:date:message-id:reply-to;
 bh=gJYda0ZTUkWw1q6d9Psi0GAgd/bxpCi7wNXv0O0kijw=;
 b=gzCf86oO1WK6a2ptCtg9OclX6WbirGB73aivkpHrQYZYN4zE7RUqaLkrbl+OB13wnf
 YSgMVC3sNJCNSh11XiB05iJZ9rbfX9Dh7+vBmk1J5SgA5hmPhQxnIyUllBFuuy6TMr/E
 a1iTnBD5tUEl+/VDkgt8dM+YkyhvTFJg4VdqM55L3NVuPsM4sWIwDzWG43Y7A+V0R4J+
 N2GUgOWL5+B1GtkSFr1zuJpBu7obL6cFMLvLpd7GOT40Kv9RAie2+Faeva0eIJpUo8Yn
 htlbfLQuYEZLc+0mFMk0Ruk9c687PLZ7r8R/6H7Rsdq6yIvrJrIy/QgEQzC7eyOT3lDK
 LqWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1719333737; x=1719938537;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=gJYda0ZTUkWw1q6d9Psi0GAgd/bxpCi7wNXv0O0kijw=;
 b=T/fpTGdsk0/rc8MrzTFuo4I3oT/HUn1OGwIEU6aYc+o8JYRPT2shB4go8cks7YDe5O
 AJN67PFYbuP/dwcY6pktbFHhmtlV+ZtFNIvZ8FD5BiouDFf42r9dmf4w7NTzL5uS+yA/
 /PaAhvu7yDfaNKOYRniJw+W8OX3eoBslooI+WD6t43AOs9Gr/7d/E3YQrtuUNSU89oOr
 vfx1BWwP8aQVIVm7ZBQs6eXRxcMNAR8waUGEvB5EHwHYczQ6ntXzOQlzm2vhBMe563mT
 OXfTn0bGgYHWXbIfnoiF87EdubJDU+ZDOu6keuLRzCk0/SUKdej/iZBH62ZmAZRPGa99
 hRKg==
X-Gm-Message-State: AOJu0YzJ0VIE+jJIGe1/KwOQsfYFV9V0DpMiCBLH140b8qXDGcyMo83t
 SkjyLZY689ozwAZeRJCHoIdJkyhJZLBWFdKTecK7lTH/iTw+C8qY6iWr21N+
X-Google-Smtp-Source: AGHT+IHmv54640JtdzVgVBjNMW3oCfT6iQTauLr2MlR8ij38PaWAvmUXPYq6zM09d8NDYmlZcgoGLQ==
X-Received: by 2002:a05:690c:ed2:b0:643:9333:9836 with SMTP id
 00721157ae682-64393339b44mr102451277b3.38.1719333736635; 
 Tue, 25 Jun 2024 09:42:16 -0700 (PDT)
Received: from [127.0.1.1] (107-197-105-120.lightspeed.sntcca.sbcglobal.net.
 [107.197.105.120]) by smtp.gmail.com with ESMTPSA id
 00721157ae682-63f14c265f7sm35548717b3.81.2024.06.25.09.42.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jun 2024 09:42:16 -0700 (PDT)
Date: Tue, 25 Jun 2024 09:42:05 -0700
MIME-Version: 1.0
Message-Id: <20240625-bug0-v1-1-fcee34ac00a7@gmail.com>
X-B4-Tracking: v=1; b=H4sIAFzzemYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDMyNT3aTSdANdQ8NUC0uDNBMTy8Q0JaDSgqLUtMwKsDHRsbW1AOG2xBt
 WAAAA
To: Dave Kleikamp <shaggy@kernel.org>
X-Mailer: b4 0.15-dev-13183
X-Developer-Signature: v=1; a=ed25519-sha256; t=1719333735; l=1360;
 i=peili.dev@gmail.com; s=20240625; h=from:subject:message-id;
 bh=FyiCzW6XIb2gfdf8H6OEDN9PU6g+1OS/36+lF7aFa08=;
 b=RHhyssi0fbYov9jrA3a91QuJwBYuK5ttGQw7Q+tUA71JkjGPbQqu+8lbVfowuUcM9Av9AQw13
 NAh7gfVjZdTBfHeo1WTFpunsWiqiIUhGhod/tNPKklDpQROSelUGrG0
X-Developer-Key: i=peili.dev@gmail.com; a=ed25519;
 pk=I6GWb2uGzELGH5iqJTSK9VwaErhEZ2z2abryRD6a+4Q=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When searching for the next smaller log2 block, BLKSTOL2()
 returned 0, causing shift exponent -1 to be negative. This patch fixes the
 issue by exiting the loop directly when negative shift is found. Reported-by:
 https://syzkaller.appspot.com/bug?extid=61be3359d2ee3467e7e4 Signed-off-by:
 Pei Li --- Syzbot reported the following error: UBSAN: shift-out-of-bounds
 in fs/jfs/jfs_dmap.c:1629:18 shi [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.182 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.128.182 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.128.182 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.182 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peili.dev[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1sM9FU-0002Mk-In
X-Mailman-Approved-At: Tue, 25 Jun 2024 16:43:22 +0000
Subject: [Jfs-discussion] [PATCH] jfs: Fix shift-out-of-bounds in dbDiscardAG
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
From: Pei Li via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Pei Li <peili.dev@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net,
 syzbot+61be3359d2ee3467e7e4@syzkaller.appspotmail.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 peili.dev@gmail.com, skhan@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

When searching for the next smaller log2 block, BLKSTOL2() returned 0,
causing shift exponent -1 to be negative.

This patch fixes the issue by exiting the loop directly when negative
shift is found.

Reported-by: syzbot+61be3359d2ee3467e7e4@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=61be3359d2ee3467e7e4
Signed-off-by: Pei Li <peili.dev@gmail.com>
---
Syzbot reported the following error:
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:1629:18
shift exponent -1 is negative

If BLKSTOL2() returned 0, the shift exponent will be -1.

The solution is to check the exponent and if it is smaller than 0,
exit the loop directly.
---
 fs/jfs/jfs_dmap.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index cb3cda1390ad..5713994328cb 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1626,6 +1626,8 @@ s64 dbDiscardAG(struct inode *ip, int agno, s64 minlen)
 		} else if (rc == -ENOSPC) {
 			/* search for next smaller log2 block */
 			l2nb = BLKSTOL2(nblocks) - 1;
+			if (unlikely(l2nb < 0))
+				break;
 			nblocks = 1LL << l2nb;
 		} else {
 			/* Trim any already allocated blocks */

---
base-commit: 2ccbdf43d5e758f8493a95252073cf9078a5fea5
change-id: 20240625-bug0-11e890f449af

Best regards,
-- 
Pei Li <peili.dev@gmail.com>



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
