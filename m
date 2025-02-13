Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1A6A35029
	for <lists+jfs-discussion@lfdr.de>; Thu, 13 Feb 2025 22:07:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tigQ3-0001sc-SD;
	Thu, 13 Feb 2025 21:06:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <qasdev00@gmail.com>) id 1tigQ2-0001sW-0p
 for jfs-discussion@lists.sourceforge.net;
 Thu, 13 Feb 2025 21:06:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V4SxlfpmEUW0FnLcr8a0midof5G/rcbn5Skbhr1r78A=; b=XxQJCkqaYqkc+5MMLeShZVxhqf
 D+5ZS1bV1wK/GMsc3qeOjFL47TKKKiJCiqBryOZtQ5HXwXz4McFXAi4PFeCwaIeMLO962dYkpMM7G
 e4TCDJXfYHG3vHrp7/r8+nU4I/SDoN0ycpq9fuWSft+XnD6YMw9mdvx/aKLQX1AZQ7Vk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=V4SxlfpmEUW0FnLcr8a0midof5G/rcbn5Skbhr1r78A=; b=Q
 E1vVrEE9tKEfcRvRnRZB/k2b1vrs5FZdhMIrDYgxvvwj32OgHW+lxEfGztV1QrFZswl11TVUUvY6o
 ZedLh0LaXI1utJ9lNf/HFnV2lkSd0Sh5/m4B0FXYHjGTsPj1FmHCRijcLgBglFQiyVBgaDvrgCQBM
 1QoWfkTbiqqDfaZM=;
Received: from mail-wm1-f50.google.com ([209.85.128.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tigQ1-0001BY-Oz for jfs-discussion@lists.sourceforge.net;
 Thu, 13 Feb 2025 21:06:46 +0000
Received: by mail-wm1-f50.google.com with SMTP id
 5b1f17b1804b1-4395817a7f2so9223935e9.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 13 Feb 2025 13:06:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739480799; x=1740085599; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=V4SxlfpmEUW0FnLcr8a0midof5G/rcbn5Skbhr1r78A=;
 b=I8Ii+sAM/hj0/QougP54Tht4baG4ZaE6R3m9iBk1vnjrJTSSzPlgxhX1zEXDt7BkRQ
 F4Y1xMfFjrsBtNYFHtoJX5lDDvLqUNbfOp4SIyoR8kh0IGiGH9Zcv+Fs7ADFYxJlB+b8
 IiMhTPdSy2PyV9RqfJUhG6iuwP8FlWuZbc+m1Zo1Ekjb7EwFBb1xzWWzJl9AI5ZCuoIO
 BFZmcrmfmRqLEgwBSDHgi4MEeCgCtSENH+HW0dz+TS5TdZeD79uUNn+xQdAysDhRbWAR
 rNw4Kli7v+RQ4gtkrxV8yRsmwCf+WFSUArJ7MRpx0a22PTa588/g1E/+njJ/LPxLk9Dy
 gWSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739480799; x=1740085599;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=V4SxlfpmEUW0FnLcr8a0midof5G/rcbn5Skbhr1r78A=;
 b=R4jMH6FV1BrBNNj8sHPKx85Ba8+p0o8c+jf0xIWvcsldNHb1C2onOrRz6zMOZrmiBT
 IwuOeiSRymFSgCh9+HCkRU9qheEC/tiA/T7LGam4OW1o9u6w27/S9eQDhKPBo6aPCUCj
 s5675F8aKfVjeg/KRqxDZ1xsQlSnA45Jce2QdHz/r3N/dBcsBIiu3DxUC5BTO6FOJAG+
 G6S+bTOrR3iAbKrv35wVyjjgiIq1EiH/QzOq8Hwp+8Qp4c1AeRPvlxgAkLz13Vm+luH7
 enMxQlC3gsk7x4ywteVj4CjEHN9fB9Xz31Lv4Mow+1uOTqaBWQbSzHtOD0SAxQhT6vFe
 snsw==
X-Gm-Message-State: AOJu0YxpxCkcZpIHPKV+R4ZRsGrEE3WmmcdEHi1GwhkwSR2Qmz2eRBWD
 eZhZfXQk8fjxu0INjHE467yHTHnwTQ0pf/rQsyzvV8vZHeqrTwtW
X-Gm-Gg: ASbGncvlCg75XV/WhKzrxJYkXQUDSe7mEXfz2a6/8o75ouDn6uXvGJcsePMgTC05/9P
 xL5TnAOh1BMvp8UNjLm6Qa7yiSStMmkpxRl4mrRAyakLSkAG16wwqh452E3b3+tOHXtTnHjOzMt
 DXZqAdi95psjDf6C2UIBg0GZjwqpiknwrjQDeGikTn86aR5KSoa0znUN8Xjd4/ooHPHqon0T1+2
 BEahtTAHOcw8kl7WSjXzXwFNHfAHUhG5s9u4QfdWs4HWK7w+z4KhPRYLEOkOliN16RNQ9okBjWY
 GUSYqTOjJaO2ojZ/
X-Google-Smtp-Source: AGHT+IF7u7hR4wJ9MUECIOlUfhxo/vYJ/M4oO5lTySXwILQOrrh7aVaRI3hMredeSbdzBUL62uyBnw==
X-Received: by 2002:a05:600c:1d88:b0:439:574c:bf77 with SMTP id
 5b1f17b1804b1-439601799b2mr65697825e9.8.1739480798965; 
 Thu, 13 Feb 2025 13:06:38 -0800 (PST)
Received: from qasdev.Home ([2a02:c7c:6696:8300:594f:c4b7:a2b1:c822])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4395a04ee48sm59038735e9.3.2025.02.13.13.06.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2025 13:06:37 -0800 (PST)
To: shaggy@kernel.org, zhaomengmeng@kylinos.cn, llfamsec@gmail.com,
 gregkh@linuxfoundation.org, ancowi69@gmail.com
Date: Thu, 13 Feb 2025 21:05:53 +0000
Message-Id: <20250213210553.28613-1-qasdev00@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.50 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [qasdev00[at]gmail.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.128.50 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.128.50 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [qasdev00[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.50 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1tigQ1-0001BY-Oz
Subject: [Jfs-discussion] [PATCH v2] jfs: fix slab-out-of-bounds read in
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
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
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
Cc: stable@vger.kernel.org
Signed-off-by: Qasim Ijaz <qasdev00@gmail.com>
---
 v2:
- Added Cc stable tag

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
