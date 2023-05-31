Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1EC717EDE
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:51:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KLy-0006uW-Fo;
	Wed, 31 May 2023 11:50:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KLx-0006uM-Ss for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:50:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YluZ+/Xi9x1Fgj+DRU5BLDV3iMORhYvEbJhB/fZ3bis=; b=KPKtbscVmF/6J2fwsf9c+Q3oKt
 9y5oNZC1ev1JU68yf5W2gHPZoHqTHc/0cKO7q9rJdDEGMOG6h/ITH0Sc2Q6oNoOu+FIdWhP2BG52D
 bE/PRb6idps8J85/voBjjkzPwbXUclR6ZmxEcFd6An78KPrSlv9G+1snNIu1pU3u/bQM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YluZ+/Xi9x1Fgj+DRU5BLDV3iMORhYvEbJhB/fZ3bis=; b=R
 JHi/YuPjiL47duju7i34c7v+COZBKpGViBE88nDF1lk/5U8LhqUzY4NLlPQ2K+LuLGPE3rzbgll4k
 j3KZg1Q/DrcyBZxYNnAxQUYAV6rygcMEhYkvWVTtRUreLk9zLJoKGMnhBsUQXIEVYo4neGSNEOd/e
 4iGfLAnb/etLEg6I=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KLy-007QMk-4y for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:50:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533857; x=1717069857;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XppOqav2UUYGSjNlhAvtpVVy7ou24D/pviKHTMytfKU=;
 b=frqx0rEPrgnNWkyzYDJpu275RBbWWtpy1Q7Vgyo798mqKpWvd+tOHGdx
 3DePxDScI4Y+q08derwQfPMU5QOSjwv2lLqaYw3b+Pz1V4aaqkJ8ACHXr
 vED9Iu4MwMQ/zTbH77OWE/TMqE39mR1G/t09gyA1z2g5uJIdEty7Sfbly
 /5UJu6WkwieqQM/GM3tmog2qIl+jC5FIZnbQ21OdAh7rJuiQnHj1J6p1Z
 MVSGPkVCXKCdbEbteg+XZcbPI5RQRprWviyFI9wWAGPJr3q8CK8c+S75y
 V2H3Mb4qJllV9lPe2c0Df+ZAynaURwPVUJPRA14tDwIn8/oQTg+EA9qwy Q==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="344179870"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:50:52 +0800
IronPort-SDR: 4Mc8pohnQOxEIV+MgRAVIqrqzZgXnTJfR3W1Zm+sGzp7MPKK1jmpIjhN8rOt30GmHmP/KtXj0l
 1pGd6X3RCOc2g0rAdQ1ifZsYNw59YV7y4BScpn8vkzOdgqYomA4ErQmRhiIpMCDIDnXcidwnpT
 zYa+EiyPWo98mRdKJwcb5cWU4bqEcu/6zi+LC/uFQtSohHOd4X53ADN2Wl9006FYLQA0j2VO6y
 PwBRi9AbjL9xQAvWY6EVx/BI8a+Z7Ox9BHXeCKrfv12T4oqtggTsz6WgBKtafjYXx1V+dlVzpj
 em0=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 04:05:45 -0700
IronPort-SDR: aBaTXHI9fG0yLOBPINz8tPsC3r6YDYfSeFUWj/Rk8jWbMTPrTXRa0vH3bKfIpcAQLPGli7lgPR
 YLSb9OcFMBlrCkosi2CpTFqsECBkzuv5p5Jrd02pxOPrTfbsnU9RLpQTpyompRRhsaJ47h6uI4
 HFFmIaUfh+yjrEGq8krGyD9f3JlGVP2BCq1uoUGxpapj3rkHXsTVQ9vJNkzdRx+/vCDcwtZ89Q
 47IpAVAdH8zdPYJjyDmKkai9L/bnaYPqkDkBF4KWaJslks1l4UWdEo5lNDduud2gkMCfqFjV9d
 oWk=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:50:50 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:50:23 -0700
Message-Id: <cover.1685532726.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  We have two functions for adding a page to a bio,
 __bio_add_page()
 which is used to add a single page to a freshly created bio and bio_add_page()
 which is used to add a page to an existing bio. While __bio_add_page() is
 expected to succeed, bio_add_page() can fail. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q4KLy-007QMk-4y
Subject: [Jfs-discussion] [PATCH v7 00/20] bio: check return values of
 bio_add_page
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
From: Johannes Thumshirn via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Cc: linux-raid@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 cluster-devel@redhat.com, Chaitanya Kulkarni <kch@nvidia.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Song Liu <song@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 Mikulas Patocka <mpatocka@redhat.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, gouha7@uniontech.com,
 Christoph Hellwig <hch@lst.de>, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

We have two functions for adding a page to a bio, __bio_add_page() which is
used to add a single page to a freshly created bio and bio_add_page() which is
used to add a page to an existing bio.

While __bio_add_page() is expected to succeed, bio_add_page() can fail.

This series converts the callers of bio_add_page() which can easily use
__bio_add_page() to using it and checks the return of bio_add_page() for
callers that don't work on a freshly created bio.

Lastly it marks bio_add_page() as __must_check so we don't have to go again
and audit all callers.

Changes to v6:
- Incorporated comments from Mike and Christoph
- Collected Reviewed-bys

Changes to v5:
- Rebased onto latest Linus' master
- Removed now superfluous BUG_ON() in fs/buffer.c (Gou)
- Removed dead cleanup code in dm-crypt.c (Mikulas)

Changes to v4:
- Rebased onto latest Linus' master
- Dropped already merged patches
- Added Sergey's Reviewed-by

Changes to v3:
- Added __bio_add_folio and use it in iomap (Willy)
- Mark bio_add_folio must check (Willy)
- s/GFS/GFS2/ (Andreas)

Changes to v2:
- Removed 'wont fail' comments pointed out by Song

Changes to v1:
- Removed pointless comment pointed out by Willy
- Changed commit messages pointed out by Damien
- Colledted Damien's Reviews and Acks

Johannes Thumshirn (20):
  swap: use __bio_add_page to add page to bio
  drbd: use __bio_add_page to add page to bio
  dm: dm-zoned: use __bio_add_page for adding single metadata page
  fs: buffer: use __bio_add_page to add single page to bio
  md: use __bio_add_page to add single page
  md: raid5-log: use __bio_add_page to add single page
  md: raid5: use __bio_add_page to add single page to new bio
  jfs: logmgr: use __bio_add_page to add single page to bio
  gfs2: use __bio_add_page for adding single page to bio
  zonefs: use __bio_add_page for adding single page to bio
  zram: use __bio_add_page for adding single page to bio
  floppy: use __bio_add_page for adding single page to bio
  md: check for failure when adding pages in alloc_behind_master_bio
  md: raid1: use __bio_add_page for adding single page to bio
  md: raid1: check if adding pages to resync bio fails
  dm-crypt: use __bio_add_page to add single page to clone bio
  block: mark bio_add_page as __must_check
  block: add bio_add_folio_nofail
  fs: iomap: use bio_add_folio_nofail where possible
  block: mark bio_add_folio as __must_check

 block/bio.c                      |  8 ++++++++
 drivers/block/drbd/drbd_bitmap.c |  4 +---
 drivers/block/floppy.c           |  2 +-
 drivers/block/zram/zram_drv.c    |  2 +-
 drivers/md/dm-crypt.c            |  3 +--
 drivers/md/dm-zoned-metadata.c   |  6 +++---
 drivers/md/md.c                  |  4 ++--
 drivers/md/raid1-10.c            | 11 ++++++-----
 drivers/md/raid1.c               |  7 +++++--
 drivers/md/raid10.c              | 20 ++++++++++----------
 drivers/md/raid5-cache.c         |  2 +-
 drivers/md/raid5-ppl.c           |  4 ++--
 fs/buffer.c                      |  3 +--
 fs/gfs2/ops_fstype.c             |  2 +-
 fs/iomap/buffered-io.c           |  6 +++---
 fs/jfs/jfs_logmgr.c              |  4 ++--
 fs/zonefs/super.c                |  2 +-
 include/linux/bio.h              |  8 ++++++--
 mm/page_io.c                     |  8 ++++----
 19 files changed, 59 insertions(+), 47 deletions(-)


base-commit: 48b1320a674e1ff5de2fad8606bee38f724594dc
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
