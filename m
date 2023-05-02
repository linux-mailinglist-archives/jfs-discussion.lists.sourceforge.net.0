Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 545396F41C3
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:36:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptnMm-0004DA-TZ;
	Tue, 02 May 2023 10:36:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptnMl-0004D4-MY for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:36:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HDBjoLulABTheyKrWr7XsSnx3EvQ1uLPMFh4LOtyNAE=; b=elheTm8chGog1gQm5P2XQFE9rK
 m9+5PiijAa5rawFcKxL06DVzlTpoSYzxirrycyjNqLZT2OJcJnRSFSvDXJGoH80Kux0YZxe/kepd5
 FsSnDLXN2rQ5x9PdQNtscX7c9lsmDDbJ0KaeTdNcSaK2yBqXrUcODQG2YsPsGNm8z3Sg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HDBjoLulABTheyKrWr7XsSnx3EvQ1uLPMFh4LOtyNAE=; b=P
 GN7Reu/se5K/225cz1ZFmFd/mem+Ik2ZODMLTCPuxlGTdcLkfcKGBS4fk27rrKWQCsWR4HMBTLE/b
 AQYExKKyXvTwwl9VIjoECzyZovgNDh8oWfLp0BrzEwEAy3MOcLbkCQmBRO8Bpaf2a36+83rvzC+V9
 hlhQfbnQNPDQZfCM=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptnMl-00056p-0i for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:36:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683023774; x=1714559774;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jN2uhwv5m+CE8gDQC4BYKQ6UTcUdO1Yo6AhgEOdVjMw=;
 b=r3UlDSRzrqULtqarP3zFZI6Mo4VyRXMarAf0jIVwPwB54anNxwZN25I5
 3sWZhmN7Y/nrcBBRHAb5MF7C8z7Gd5G9dUrT+lsGsv2Tna49urC2h5ipn
 JzBK3/5LAAy37B9TT829A8CMRFvC9eIgNYZWSifGCKfNwegV+VN2MqSfn
 rh9d3CSJunGPBQL2blIZ2cyGkEUPya6YGJ+xkBk75J6XWbMXZ/+VsF3ZA
 ccnKSTNf+Mss3JxI38PR/El7AGri9iO7/DAouIeggxmmarhwgs6wnTJeX
 jldhEAbbqZQ/hnXRP3hV+k2eBLDvG8C1qb26qy3R7BO2YQtzPoXorGvo9 A==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="334136123"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:20:35 +0800
IronPort-SDR: a4eiUEXZq98n23yeYsXUEGUQv2a6XYEs4el4T0Vtw6xLQUh383OnQCazI/JUGjtDvA3At5F1vs
 0eU2e0vS4Z3RdzLQq7GAv7ctglN+tZsdNFmGzHM7k/qQ6LikUVoC4FkoREtNOWcKWxNeKUgjZQ
 to1lyeXlz3dvegm+mGiFht7n0aGMVRZZ7cwsXGGuTvdiDYr5sPQW3gux23wq7oNmlWt8WgRh8i
 /CD8bd6bIsc3vLv2SqFWakVDZsJXQRblRJvk9e++GXDJVTeVWh30Ove92yvDSyZ6PzJshmyJZ4
 9h4=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:36:03 -0700
IronPort-SDR: II0VPVGqsVVzFv+CDBgRTuszrP/jrhnqWD28hz4KmIk0OWZ9iuuunBJznbIJJEWysUomM83PbW
 tHpIqF+Wkzt60j425jkVHSTfRN97pvpj4qRJGP1XK/rYUtVFMFwW07KYIR+NBQHS3CcgY7qgcQ
 QoPqPucc39VmFll8EWhRke9TeNwUD/RetNk6TeKPQdBhijuGDl8aTzuwdYvSvt9Rua9BZLT2+I
 uqumhMLeAhgcuUfutHNKva+v42l5kJ3gIfcZswnraO/ApNiUR1Ze30swYPZMzn8zkEyKLhcsrU
 NTE=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:20:32 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:14 +0200
Message-Id: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ptnMl-00056p-0i
Subject: [Jfs-discussion] [PATCH v5 00/20] bio: check return values of
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
Cc: linux-block@vger.kernel.org, damien.lemoal@wdc.com, kch@nvidia.com,
 agruenba@redhat.com, shaggy@kernel.org, song@kernel.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, snitzer@kernel.org,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org, ming.lei@redhat.com,
 cluster-devel@redhat.com, linux-mm@kvack.org, dm-devel@redhat.com,
 hare@suse.de, linux-fsdevel@vger.kernel.org, linux-raid@vger.kernel.org,
 hch@lst.de, rpeterso@redhat.com
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
  dm-crypt: check if adding pages to clone bio fails
  block: mark bio_add_page as __must_check
  block: add __bio_add_folio
  fs: iomap: use __bio_add_folio where possible
  block: mark bio_add_folio as __must_check

 block/bio.c                      |  8 ++++++++
 drivers/block/drbd/drbd_bitmap.c |  4 +---
 drivers/block/floppy.c           |  2 +-
 drivers/block/zram/zram_drv.c    |  2 +-
 drivers/md/dm-crypt.c            |  9 ++++++++-
 drivers/md/dm-zoned-metadata.c   |  6 +++---
 drivers/md/md.c                  |  4 ++--
 drivers/md/raid1-10.c            | 11 ++++++-----
 drivers/md/raid1.c               |  7 +++++--
 drivers/md/raid10.c              | 20 ++++++++++----------
 drivers/md/raid5-cache.c         |  2 +-
 drivers/md/raid5-ppl.c           |  4 ++--
 fs/buffer.c                      |  2 +-
 fs/gfs2/ops_fstype.c             |  2 +-
 fs/iomap/buffered-io.c           |  6 +++---
 fs/jfs/jfs_logmgr.c              |  4 ++--
 fs/zonefs/super.c                |  2 +-
 include/linux/bio.h              |  5 +++--
 mm/page_io.c                     |  8 ++++----
 19 files changed, 63 insertions(+), 45 deletions(-)


base-commit: 865fdb08197e657c59e74a35fa32362b12397f58
-- 
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
