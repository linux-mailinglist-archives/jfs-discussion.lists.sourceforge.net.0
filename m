Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 62787A34D93
	for <lists+jfs-discussion@lfdr.de>; Thu, 13 Feb 2025 19:25:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tidtI-0001ve-0W;
	Thu, 13 Feb 2025 18:24:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1tidtD-0001vU-Ir
 for jfs-discussion@lists.sourceforge.net;
 Thu, 13 Feb 2025 18:24:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ICtavEwqZ/HQUBOR5OBe539NOrRKsA/eVPbm9dzV1bE=; b=MF6LzHz7bjE1FsgslDHQino15v
 ExvK3qvVK9zMX/uKpHAuuex2TRCOMX/J/W2yx6gIpebACaQ9JAOPj17NGMD9vhzmazqUGhVIgWIO1
 s9gur21CZcgo4G6sHJIfrhH8ye6w7LvcdnMyuSJAk9ecSnkuqEixXR1I63ZjOHeR/Ug4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ICtavEwqZ/HQUBOR5OBe539NOrRKsA/eVPbm9dzV1bE=; b=E
 g+geaeNO2uLIPX8rKkq4OGNsou3kLwESxuj1r6DJ3swzJ5bK9d4Txkb3K3bkKTfvoeBlPJ8uLA36c
 EDiujmePZqDhdnxVyIdnTckzZJ9sXCd1HzyT8YFCjoFiQnE+9FX3Sm4racwShWO29Byut0X8pPqpd
 Y4dN69Irr7aQd50Q=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tidtB-0001zr-Rh for jfs-discussion@lists.sourceforge.net;
 Thu, 13 Feb 2025 18:24:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=ICtavEwqZ/HQUBOR5OBe539NOrRKsA/eVPbm9dzV1bE=; b=pDvYcWzm5/M+7Ez9805JdKQxUX
 hgbtTFx+SRGGUU9Xe1Csc+X08F0od9Tg0sQB4jn1kT5W5+p5grx7HuQcK/o5AXg7Td8llh9RK30E6
 QlBaHx533SgRm6vw0Py+e/dpazhR3Y1bjrc6ER+mxmcTUo2ktEl+feGtEkMhLAlsaLfmwc7M3qy3g
 qZwqLXuwasj3V27bEwb0vdSbYdsw9PFblAWNx5RtqT1stgQTSBtUEot0omyemz6Ztc+qcPcU6vUoJ
 TiV0k6uXViXqCxFJZSAIt5lNUPCX070O2p2F2w2/kEnWVicNVRH60DlE71AKHodbO+gQtGZSPnzPU
 RByXorPg==;
Received: from willy by casper.infradead.org with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tidt5-00000008x5G-03oz; Thu, 13 Feb 2025 18:24:35 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Thu, 13 Feb 2025 18:24:30 +0000
Message-ID: <20250213182432.2133727-1-willy@infradead.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Buffer heads are attached to folios,
 not to pages. Also flush_dcache_page()
 is now deprecated in favour of flush_dcache_folio(). Signed-off-by: Matthew
 Wilcox (Oracle) <willy@infradead.org> --- fs/jfs/super.c | 2 +- 1 file changed,
 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (-1.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [90.155.50.34 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [90.155.50.34 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [90.155.50.34 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1tidtB-0001zr-Rh
Subject: [Jfs-discussion] [PATCH] jfs: Remove reference to bh->b_page
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
Cc: linux-fsdevel@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Buffer heads are attached to folios, not to pages.  Also
flush_dcache_page() is now deprecated in favour of flush_dcache_folio().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/super.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/super.c b/fs/jfs/super.c
index 223d9ac59839..4bb42de33865 100644
--- a/fs/jfs/super.c
+++ b/fs/jfs/super.c
@@ -766,7 +766,7 @@ static ssize_t jfs_quota_write(struct super_block *sb, int type,
 		}
 		lock_buffer(bh);
 		memcpy(bh->b_data+offset, data, tocopy);
-		flush_dcache_page(bh->b_page);
+		flush_dcache_folio(bh->b_folio);
 		set_buffer_uptodate(bh);
 		mark_buffer_dirty(bh);
 		unlock_buffer(bh);
-- 
2.47.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
