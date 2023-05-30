Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D2B71678B
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:49:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q41bO-0007zx-B5;
	Tue, 30 May 2023 15:49:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=507b913ec=johannes.thumshirn@wdc.com>)
 id 1q41bM-0007zr-OI for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:49:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jnhclB6/ARA+cGJTOMmmcadsSQD4Ywu/u90r/VIgeuo=; b=cEb/y64HGMfDM2SckAYvVvd6FI
 hPmzXHwjwhdFQUE41wrncXaeHaaF0mDv9nG+r5vx8/C0SnvYUSrndDI/aYddXFWSh4L96oSNrK/tq
 IIJ73Bbj7EzL0oJLxvOw0xF1dNCowPBZbqkGDD+GxAMH8On8tZCgaDtNass00qdeTzlo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jnhclB6/ARA+cGJTOMmmcadsSQD4Ywu/u90r/VIgeuo=; b=A
 6ZEsthikdGHnKyYL3CYc1nmvftjJu20Dm4l5hnHubX34NEWpVjI0rMWWgcjjBRluCDtws+B4izylJ
 IQmE2CTgPWJIlAXXQauBFzavn9Dpzz2m/ONYIUSBwkorPy30LoKqz3O+gnWYQL1oOUYp41dowo0bd
 qn0sRnhi2KL0o4ms=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q41bM-00040q-1I for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:49:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685461775; x=1716997775;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LvvitQpZZtAL6oj1gqbFnc01A5MrDrOWTWrqLbLHBtg=;
 b=NSiARg2um1k5/6w3Rn9alDPGIRNcJzE2+uiTLVlW2rBaaSteZlIU4XIA
 ejkwHIZHMDp/dq14m7oEZdkoPZHCXnjXWRTc7EAW5GuTOz7/tm/Z/yZuX
 GWgYNsTjW1ZeN764kq0G+gv/2gjmFlVy97U2419w8P5mC0n/ehonjcBNr
 7Tx17igT2oj9lY7T6oTH0DHl/W/CJIAefVCg8BDZtrLuqKjJEGYey39g1
 3kHaOjcoOErrxsvqfdx0VSt3x9gijJ03/twGD6knhTHkJc+FrOaCQoaIb
 PlfzvVL0st+rWQsFVPMsgdOcMKkcPcyM3+t5nIJV+vZFf2/OLfamWyM8h Q==;
X-IronPort-AV: E=Sophos;i="6.00,204,1681142400"; d="scan'208";a="344096275"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2023 23:49:29 +0800
IronPort-SDR: o+ph3W0zHot0+mf0O7iTguzCOcZATGRafMAZOrr0XMUGecmgiD5ypLRbfNdlgAa+vPoU5l0ETH
 PI3vilQTItOgGwDsF3AqZIi68qSEKi0htrLz6hCeUrnd5AgNWAj5ZX1K661Cdo7dhl9MjJWkr9
 L1R3fX53Y8h0Gc/U+ij5Mz33Xn6/D+y1DCWEtno9SwNcTR+9KHAUei0s0lboEeHpKkg6saxKWu
 e89x/5CxW/GEUjyjKbEaNnNmFF7U2fCSsyZbhviNxENrdjbzPtgvSouk5HbFlkQ6NJaJVwIs2d
 ztI=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 May 2023 08:04:23 -0700
IronPort-SDR: UZ8AC9JVcWItXvBURdFJfv2biVq9H2WKi13hcXxNmWmdGCl2msIehsW5OQj1211e+TheiYsP0z
 f/u4ZWFf/I1HZ2VD7ZgIa4wS+N2+wjgThSQMa1tPWp1wb3hH2n3ospDXQkzLVPAAbhWcu2/tEI
 SBqKpnvb6T+sxHwXStTtNJyZxUdL6nv8qHGMBJ3g70NYauvzNiwuU67Q4Y1/R+PJCILKB5A8CO
 jEOWy50NKKPkI9VlZ2fe3M709Dt9/hM2gbd5kOLisv33sJeeo1JhbeqNpeDbTlV5YHAtNPTvrC
 PxQ=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 May 2023 08:49:26 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 30 May 2023 08:49:03 -0700
Message-Id: <cover.1685461490.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
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
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q41bM-00040q-1I
Subject: [Jfs-discussion] [PATCH v6 00/20] bio: check return values of
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
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, gouhao@uniontech.com,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 Mikulas Patocka <mpatocka@redhat.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Bob Peterson <rpeterso@redhat.com>
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
  dm-crypt: check if adding pages to clone bio fails
  block: mark bio_add_page as __must_check
  block: add __bio_add_folio
  fs: iomap: use __bio_add_folio where possible
  block: mark bio_add_folio as __must_check

 block/bio.c                      |  8 ++++++++
 drivers/block/drbd/drbd_bitmap.c |  4 +---
 drivers/block/floppy.c           |  2 +-
 drivers/block/zram/zram_drv.c    |  2 +-
 drivers/md/dm-crypt.c            |  5 ++++-
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
 include/linux/bio.h              |  5 +++--
 mm/page_io.c                     |  8 ++++----
 19 files changed, 59 insertions(+), 46 deletions(-)

-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
