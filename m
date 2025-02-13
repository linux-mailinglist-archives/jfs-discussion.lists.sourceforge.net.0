Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E08C0A33569
	for <lists+jfs-discussion@lfdr.de>; Thu, 13 Feb 2025 03:18:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tiOnb-0007dd-Rl;
	Thu, 13 Feb 2025 02:17:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <qasdev00@gmail.com>) id 1tiMyP-0005Qq-Sn
 for jfs-discussion@lists.sourceforge.net;
 Thu, 13 Feb 2025 00:20:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X84lYtUnaPKcu+sxp9VlxXdEt5jePr1I7AgWIclWzJo=; b=J2G0COjJg4ZmexFLSCHGFA2mrD
 3wipA6lNLjFRpTwQ3eJebDKaOKcSgjpjnny66lrDWhPkz7u0bNYzDwHWAkRr9DfATGhU7fpoJMaNr
 VHMDq8So+u5/uHibSE/ZZIEckos8aqb8n50gvl916tJq1RIBCuf04c2dslA8O5JmYnL0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=X84lYtUnaPKcu+sxp9VlxXdEt5jePr1I7AgWIclWzJo=; b=O
 dqmsOlCwdgB1jTcEJRWUTAuPWGO9MGXKujAuXFhWABq/KOciQrf4ZeR46Ae/rRrbhm0XXeOglX05c
 hnqjXM4S1d9ADZE2WwknauFY5nsQxN5cRCJPHk/jmYbrNAgpGyqUCMhLR09sLMHdP4VMc5zIw9HeL
 PySOER/0alMfALE4=;
Received: from mail-wr1-f49.google.com ([209.85.221.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tiMyO-0005ls-JM for jfs-discussion@lists.sourceforge.net;
 Thu, 13 Feb 2025 00:20:57 +0000
Received: by mail-wr1-f49.google.com with SMTP id
 ffacd0b85a97d-38f1e8efe82so310916f8f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 12 Feb 2025 16:20:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739406045; x=1740010845; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=X84lYtUnaPKcu+sxp9VlxXdEt5jePr1I7AgWIclWzJo=;
 b=ProutzjeuBwUrHt8wjdOW8KtZVHdHMqMMfuhz7x0pLwY1JxQqBUz16DHf0DQfDovKL
 zF6+X4S91bAnWT/65L7KoLciA/h6UcB0Y4Lu3L6ojylj6+9anFW1EdWt3BdbjuA3u9wk
 GyhOWL6phn337T7ttAe7gbmucr93sPCUUooTd8Iq64WX3n/roK0QYkENfBw8da8+kiCr
 yzuifTeAnQgDdjG81gmastIWpfOdtJsSbdEWSnInqhUGzdc+Lxy4taCM/9lT5a+CY1rS
 +9PKcPpNxHgGboSK8n2Qpyuv1GCdD80q0xqWkWH5wrZ1moNSn+wrJvyjqLgyCitD5dMS
 pCoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739406045; x=1740010845;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=X84lYtUnaPKcu+sxp9VlxXdEt5jePr1I7AgWIclWzJo=;
 b=R6smepFmlPVDIAowrzRWjXwWshItIanFbuG1eyKynfdLsD6KKo1EdejCfpTmWid/Ec
 4Nd5JA8wCm8ILheHhpHcStWy/agVgqs04gQPU1dknVR6BGorrCxe4QZ6FL3jlKcFqZMd
 W0Oc7URcSz1bQ3pGCW4xU2Uln0xsygOa56NZ06RboAQ9grO78yiQPtfCT0mAV0FQwaOf
 wvZHSGTr46/sYFWzOnnUEfHO9I0SW85wYubgNy8zSsmZB1mzMZHQUlkfFfwArC7Hp+sC
 txXxqD2Yl+os4pTFElM975RJJnUTyNa55UAWwgwc9OGtp+iswlipXwcfQFXV74fr+1bW
 zMgA==
X-Gm-Message-State: AOJu0Yz6aJ9pRhNawVJHzmXEEIfNwxRspiV7BxYlpRV8k+SSWh2PdnYj
 0KjtTn25CzoIz3dG5XJsDNuOWKQlPV8+VUk0z5UxyFpvxVTJY2E2
X-Gm-Gg: ASbGncul+D2QJ+klUGYSXVOU0Q9YPsgcEApWthKrVjAkyILqOJ+p4HGaMSyOhy7TYdB
 Bf0GWhGtfD5IbZP53IXdwvW3RA2couUPFUH4nk0JrgKN0rWttoxtYGG0e4iOLiK7jxVy9YUaPze
 6mTCKrLpunWqW5p5T+1TG9gEgbnxRQ7Wp53C1lbIV1oMx+UVuDx6MDuLxVEt/97kFDiOSnnH93h
 vdUqomT3xqP4AsD3g4W0knYKsczbzsrh68H78uDea5Fp6FhdSwyIm1DJ86ZxFqsr9llENmdzAYh
 AglGWpmm9rJiT49q
X-Google-Smtp-Source: AGHT+IF9zrFLHKVKmPSx9KGxXSoCk0hMnf8jkpOryo17zak+fTnqo0TeSRGwZkokpw4GpxYL4MZ87g==
X-Received: by 2002:a5d:588a:0:b0:38f:2073:14a7 with SMTP id
 ffacd0b85a97d-38f24526be2mr1294596f8f.47.1739406044857; 
 Wed, 12 Feb 2025 16:20:44 -0800 (PST)
Received: from qasdev.Home ([2a02:c7c:6696:8300:a5eb:311f:6a00:dedb])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38f2591570esm332014f8f.59.2025.02.12.16.20.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2025 16:20:43 -0800 (PST)
To: shaggy@kernel.org, zhaomengmeng@kylinos.cn, llfamsec@gmail.com,
 gregkh@linuxfoundation.org, ancowi69@gmail.com
Date: Thu, 13 Feb 2025 00:20:25 +0000
Message-Id: <20250213002025.6602-1-qasdev00@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  During the "size_check" label in ea_get(), the code checks
 if the extended attribute list (xattr) size matches ea_size. If not, it logs
 "ea_get: invalid extended attribute" and calls print_hex_dump(). 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.221.49 listed in sa-accredit.habeas.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.49 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.221.49 listed in bl.score.senderscore.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [qasdev00[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [qasdev00[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.49 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1tiMyO-0005ls-JM
X-Mailman-Approved-At: Thu, 13 Feb 2025 02:17:54 +0000
Subject: [Jfs-discussion] [PATCH] jfs: fix slab-out-of-bounds read in
 ea_get()
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
From: Qasim Ijaz via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Qasim Ijaz <qasdev00@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net,
 syzbot <syzbot+4e6e7e4279d046613bc5@syzkaller.appspotmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

During the "size_check" label in ea_get(), the code checks if the extended 
attribute list (xattr) size matches ea_size. If not, it logs 
"ea_get: invalid extended attribute" and calls print_hex_dump().

Here, EALIST_SIZE(ea_buf->xattr) returns 4110417968, which exceeds 
INT_MAX (2,147,483,647). Then ea_size is clamped:

	int size = clamp_t(int, ea_size, 0, EALIST_SIZE(ea_buf->xattr));

Although clamp_t aims to bound ea_size between 0 and 4110417968, the upper 
limit is treated as an int, causing an overflow above 2^31 - 1. This leads 
"size" to wrap around and become negative (-184549328).

The "size" is then passed to print_hex_dump() (called "len" in 
print_hex_dump()), it is passed as type size_t (an unsigned 
type), this is then stored inside a variable called 
"int remaining", which is then assigned to "int linelen" which 
is then passed to hex_dump_to_buffer(). In print_hex_dump() 
the for loop, iterates through 0 to len-1, where len is 
18446744073525002176, calling hex_dump_to_buffer() 
on each iteration:

	for (i = 0; i < len; i += rowsize) {
		linelen = min(remaining, rowsize);
		remaining -= rowsize;

		hex_dump_to_buffer(ptr + i, linelen, rowsize, groupsize,
				   linebuf, sizeof(linebuf), ascii);
	
		...
	}
	
The expected stopping condition (i < len) is effectively broken 
since len is corrupted and very large. This eventually leads to 
the "ptr+i" being passed to hex_dump_to_buffer() to get closer 
to the end of the actual bounds of "ptr", eventually an out of 
bounds access is done in hex_dump_to_buffer() in the following 
for loop:

	for (j = 0; j < len; j++) {
			if (linebuflen < lx + 2)
				goto overflow2;
			ch = ptr[j];
		...
	}

To fix this we should validate "EALIST_SIZE(ea_buf->xattr)" 
before it is utilised.

Reported-by: syzbot <syzbot+4e6e7e4279d046613bc5@syzkaller.appspotmail.com>
Tested-by: syzbot <syzbot+4e6e7e4279d046613bc5@syzkaller.appspotmail.com>
Closes: https://syzkaller.appspot.com/bug?extid=4e6e7e4279d046613bc5
Fixes: d9f9d96136cb ("jfs: xattr: check invalid xattr size more strictly")
Signed-off-by: Qasim Ijaz <qasdev00@gmail.com>
---
 fs/jfs/xattr.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/fs/jfs/xattr.c b/fs/jfs/xattr.c
index 24afbae87225..7575c51cce9b 100644
--- a/fs/jfs/xattr.c
+++ b/fs/jfs/xattr.c
@@ -559,11 +555,16 @@ static int ea_get(struct inode *inode, struct ea_buffer *ea_buf, int min_size)
 
       size_check:
 	if (EALIST_SIZE(ea_buf->xattr) != ea_size) {
-		int size = clamp_t(int, ea_size, 0, EALIST_SIZE(ea_buf->xattr));
-
-		printk(KERN_ERR "ea_get: invalid extended attribute\n");
-		print_hex_dump(KERN_ERR, "", DUMP_PREFIX_ADDRESS, 16, 1,
-				     ea_buf->xattr, size, 1);
+		if (unlikely(EALIST_SIZE(ea_buf->xattr) > INT_MAX)) {
+			printk(KERN_ERR "ea_get: extended attribute size too large: %u > INT_MAX\n",
+			       EALIST_SIZE(ea_buf->xattr));
+		} else {
+			int size = clamp_t(int, ea_size, 0, EALIST_SIZE(ea_buf->xattr));
+
+			printk(KERN_ERR "ea_get: invalid extended attribute\n");
+			print_hex_dump(KERN_ERR, "", DUMP_PREFIX_ADDRESS, 16, 1,
+				       ea_buf->xattr, size, 1);
+		}
 		ea_release(inode, ea_buf);
 		rc = -EIO;
 		goto clean_up;
-- 
2.39.5



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
