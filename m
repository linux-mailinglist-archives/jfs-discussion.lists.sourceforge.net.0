Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E83547F0B
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Jun 2022 07:38:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1o0cls-0001le-Ol; Mon, 13 Jun 2022 05:37:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+6ef1cfbcd5439e194ca7+6868+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1o0clp-0001lF-Cm
 for jfs-discussion@lists.sourceforge.net; Mon, 13 Jun 2022 05:37:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4iGKXCdzOSBsnfT6PGZIBueRKnuIrW79kSxrD8/D1F8=; b=HuTTC8aI+9UXsRt9uYNsHYeBpw
 IZ962/VH1xBqRTz69ZIOR3fzbVy8vJpX2kOA8XZN++tzhF6XI1atMzQ9MrPOB+QR1L1uKSh57/NDJ
 Odi/U1+y5VPDWCVlC4jdarbXnNj2hS2TK+EpXjCqMahoulWvRB4bNJstyNFrX6iAr1so=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4iGKXCdzOSBsnfT6PGZIBueRKnuIrW79kSxrD8/D1F8=; b=e
 CnGUgpucELHQ2hubL0kVazJhp2GzOZF4WK24nVMnBv8+yON+JFf/zCTgb/dIgW9igSHf8D0KlUpFj
 VH3+VCYoVuQAOciowobJeiVV293qQ/053s/UINxP1A3hbdfN6yp3/0j/ZeOrmFVDEfCcsfu7rCc/A
 Q1BPa816mwozdiP0=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0cld-00026G-SE
 for jfs-discussion@lists.sourceforge.net; Mon, 13 Jun 2022 05:37:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=4iGKXCdzOSBsnfT6PGZIBueRKnuIrW79kSxrD8/D1F8=; b=uG9AbDJFexhlocyTyg+u6QlAcS
 jLR0WwJwLc8R94lZ9B+cgiQgZWVTwWDfzpDN6WNFTjR+boyCwOLrj5CwUXutcpi/4NTV3Sg/cjoOi
 hL5MGvekXsVnmFWTvNr/RNN4MgLaLV8ltHN76cLX3aImpifyv6JdE6LegXbGct3LgrJEEjWjanKz7
 FBeWsxWYPCIOxECEToVhO9OXdggtbDGKwcTG2/7ZE/9uoSyWZ2yQL19ZGLZ5lXK6MadXjMX8DR/lX
 ispGKTd8K4aMvDpiFl3uYXsvFo3GcNKByDM/OqwWrM4f8VDUS7TfcNJvLK0g91cSwll0ugbulHdIV
 GaaRcHnQ==;
Received: from [2001:4bb8:180:36f6:f125:c38b:d3d6:ae6c] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1o0clK-001V3f-Up; Mon, 13 Jun 2022 05:37:19 +0000
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>, Jan Kara <jack@suse.com>,
 Dave Kleikamp <shaggy@kernel.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Date: Mon, 13 Jun 2022 07:37:09 +0200
Message-Id: <20220613053715.2394147-1-hch@lst.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi all, this series (against the pagecache for-next branch)
 removes the nobh helpers which are a variant of the "normal" buffer head
 helpers with special tradeoffs for machines with a lot of highmem, and thus
 [...] Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1o0cld-00026G-SE
Subject: [Jfs-discussion] remove the nobh helpers v2
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
 linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org,
 ntfs3@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi all,

this series (against the pagecache for-next branch) removes the nobh
helpers which are a variant of the "normal" buffer head helpers with
special tradeoffs for machines with a lot of highmem, and thus rather
obsolete.  They pass xfstests, or in case of jfs at least get as far
as the baseline.

This might not be as nice as an actual iomap conversion, but already
removes some hairy code in the way of removing ->writepage.

Changes since v1:
 - handle non-resident data in ->writepages in ntfs3 properly

Diffstat:
 Documentation/filesystems/ext2.rst |    2 
 fs/buffer.c                        |  324 -------------------------------------
 fs/ext2/ext2.h                     |    1 
 fs/ext2/inode.c                    |   51 -----
 fs/ext2/namei.c                    |   10 -
 fs/ext2/super.c                    |    6 
 fs/jfs/inode.c                     |   18 +-
 fs/mpage.c                         |   47 -----
 fs/ntfs3/inode.c                   |    8 
 include/linux/buffer_head.h        |    8 
 include/linux/mpage.h              |    2 
 11 files changed, 32 insertions(+), 445 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
