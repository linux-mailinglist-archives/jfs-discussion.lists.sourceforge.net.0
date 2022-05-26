Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B053E5353F7
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 May 2022 21:29:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nuJB0-0006YI-KA; Thu, 26 May 2022 19:29:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1nuJAx-0006Xq-4x
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9JqXy0lBEg/MQdfYlCAme5LYG4YIOIwkBWQxllmFD7g=; b=gVMOAFdDs78XGyLVsNp/Xc1LDQ
 ip3WlePdle96vrakZ6DSQAzUXnRhkim9ZAhMc35Gy8Cxn19U+tZuzDYRRU7n6P5zpamGNmDI8kzHK
 6UFo1FaJ4O+Gns7zWlAXERUT41Z0X+GWzFcDTG1PmqfmD+5DNaHoTJWnp+kq7SwCbxes=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9JqXy0lBEg/MQdfYlCAme5LYG4YIOIwkBWQxllmFD7g=; b=G13m6v4ndUVyOQdj8Uy35nDprj
 EPKQzzUNmxO9/pNnu1xbFiM1YGR8pZR3oEC7FP4hPS+oLieX25l+avnXVZP1mqW4QIDZ++1l8PoWC
 VjrJb5F4/8h9rOPENotgXKrg6aeFan9krlnE8RRo3SnBs8OVPtN9k90nYbstQelrozLk=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuJAr-0000t7-Fr
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=9JqXy0lBEg/MQdfYlCAme5LYG4YIOIwkBWQxllmFD7g=; b=h7sSKXwy3S78KgTISdtMXLUu9x
 ZCioesmSNcyQUHNaOZT0wXzUfvKfCA9+Ug7IWhiBpPLE51fn0Qgf0doWNmVOtlleQumu11CLhLr3W
 OUXPLQ2eFB+LLySV/2l2yTSC4XvfOeujput/gY/qzARIEUc4aMQ1DBslMgdsklfu9jWdwn3Gih6I8
 Rc68nSesgYSGP/lhjKTbTC1NZtYKMd/fbFGCFPNV7kiUPgMBtayVomaG9kGWsPoEqHv6mrI2iceWJ
 G1UQi0l0rJlo+HUA05nXsJfNJxx3DRyu4pA3KpjQ2aXvZXN+PqaGTjeJA/xt+XHH5lBsz6LnzCyQR
 ifqIl2nw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nuJAa-001UuB-Et; Thu, 26 May 2022 19:29:16 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: jfs-discussion@lists.sourceforge.net,
	linux-fsdevel@vger.kernel.org
Date: Thu, 26 May 2022 20:29:02 +0100
Message-Id: <20220526192910.357055-2-willy@infradead.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220526192910.357055-1-willy@infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Al's patch. Signed-off-by: Matthew Wilcox (Oracle)
 <willy@infradead.org>
 --- fs/iomap/direct-io.c | 3 ++- include/linux/iomap.h | 6 ++++++ 2 files
 changed, 8 insertions(+), 1 deletion(-) diff --git a/fs/iomap/direct-io.c
 b/fs/iomap/direct-io.c index 370c3241618a..6a361131080f 100644 ---
 a/fs/iomap/direct-io.c
 +++ b/fs/iomap/direct-io.c @@ -548,7 +548,8 @@ __iomap_dio_rw(struct kiocb
 * [...] Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nuJAr-0000t7-Fr
Subject: [Jfs-discussion] [RFC PATCH 1/9] IOMAP_DIO_NOSYNC
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
Cc: Christoph Hellwig <hch@infradead.org>,
 "Darrick J . Wong" <djwong@kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Al's patch.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/iomap/direct-io.c  | 3 ++-
 include/linux/iomap.h | 6 ++++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/fs/iomap/direct-io.c b/fs/iomap/direct-io.c
index 370c3241618a..6a361131080f 100644
--- a/fs/iomap/direct-io.c
+++ b/fs/iomap/direct-io.c
@@ -548,7 +548,8 @@ __iomap_dio_rw(struct kiocb *iocb, struct iov_iter *iter,
 		}
 
 		/* for data sync or sync, we need sync completion processing */
-		if (iocb->ki_flags & IOCB_DSYNC)
+		if (iocb->ki_flags & IOCB_DSYNC &&
+		    !(dio_flags & IOMAP_DIO_NOSYNC))
 			dio->flags |= IOMAP_DIO_NEED_SYNC;
 
 		/*
diff --git a/include/linux/iomap.h b/include/linux/iomap.h
index e552097c67e0..c8622d8f064e 100644
--- a/include/linux/iomap.h
+++ b/include/linux/iomap.h
@@ -353,6 +353,12 @@ struct iomap_dio_ops {
  */
 #define IOMAP_DIO_PARTIAL		(1 << 2)
 
+/*
+ * The caller will sync the write if needed; do not sync it within
+ * iomap_dio_rw.  Overrides IOMAP_DIO_FORCE_WAIT.
+ */
+#define IOMAP_DIO_NOSYNC		(1 << 3)
+
 ssize_t iomap_dio_rw(struct kiocb *iocb, struct iov_iter *iter,
 		const struct iomap_ops *ops, const struct iomap_dio_ops *dops,
 		unsigned int dio_flags, void *private, size_t done_before);
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
