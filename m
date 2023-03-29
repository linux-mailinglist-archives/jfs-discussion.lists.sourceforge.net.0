Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 298986CF02F
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Mar 2023 19:06:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phZFr-0001Wd-CJ;
	Wed, 29 Mar 2023 17:06:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=445a3f1bb=johannes.thumshirn@wdc.com>)
 id 1phZFl-0001WG-DQ for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q0vXrB3YpVAqkHmAwqjSYymJe2xmB6NI0kEVCyloRK4=; b=H3Mk1aV+kF0vHhy2lLUkoiHAYp
 9YgYaBeoz2/bdmPuYKI7ficm+fdb0+dJz6k17w4vE3CijwwbhIlbuUL6mKyuKhPvLfNMNynf7tbnW
 ICm16G7l069kglWsyzaisWs1GVVIMcozr0TPfPFjMDajluGhLqG4lyeA2n2CMQdV5EY4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Q0vXrB3YpVAqkHmAwqjSYymJe2xmB6NI0kEVCyloRK4=; b=j
 m+FI+qCTNol/Nq73M8HFVBE7z8Pgbs4SWqVmTweZx3doJVcLoUdt9aJOKyISducmZOTbf1jWgafoK
 AT4XdmmFW6ccKpxDUtbYBYwOSUQDYQ57yLiU5o8jv1ZtpmZ5sZEkcrbTs3YV90l8xWdPfltzngByj
 h6Hd2XwhOsjq4HB8=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phZFj-008aXc-F5 for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680109587; x=1711645587;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+NnexQOsAOUbE/augeQOa8oyAzkSCsYrdZjdeoHBcjs=;
 b=fhSDj1yP2xtT0wkVLu2RYyyDJjy65fXLTq1IBL1aerZ30/MKG9e94E0B
 TzflQp5/iy9gfEWoCwfZIhbhwSbkykAA7aagkjay4EqpZY1716AHIxCgB
 06wSqlnPI/PZu/qHU7QgkNHqU0KchnlhpQaI8rcbuIMssTpWeB8Jj+dz4
 /yyw9ivGoidot9H+o47nfJMhgR/iajuOXdrpq6W+Bz15kzIh7hSVpRTHb
 NfHxVl8c65bv6k28uLGH+tk/zogMrblSEK/9RaY868RRIvpaOGN5WvcB0
 wM0Yk/vepiTr3TOlRg5acugg7HJ7gseGNVzFhqrJsZCOa21qiM+Cw6u9E Q==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226806998"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 01:06:21 +0800
IronPort-SDR: Ndsalz95ee8/tXHOxpDzz71NkZei+3KGXUj5Fqpf/2Whf6W8XmZmm0w4Sdf+58oP1MBRRdi1Xd
 iqkXca0yEW2IFv34elz1MAdW5jOX9MY/k1w1BusXkOH3FmYu6UnIe/3YIcyPsdrM6oZkCDnEHK
 XusOEKakzJIFaTD5xyvCEh504VoM7SOOH9NE21HYdlPgeoDJ8N6IAe6f0JdDTITuX88NTjGI3j
 klwMLe6l4+igb6J6QKDvQdVfetDD04Z7VVzirtci/i8JE8wxUn7N2xaYjV1R1fE4RQncrY7EcQ
 Mdc=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 09:22:30 -0700
IronPort-SDR: 5o43zE44ApvlLKedTs27i6ZN/lELa7pMrmIJQK40gUpdn2C4UtQdcwlIfjiKh1n/bPpGX2YXq8
 YJJVJzgPqspxZi96lPe0WBzcRw9V0Z9BQK2DV4YAFsTQkHP1VrCBf6vXbgxIZ7J5vpxE0lTn/0
 xSGPZVtghIG7ljFrff33/jPHtv9RuCOmJLd+y2rtbDipZfTukm+09qiddbRkAF472QN1YGPAI9
 JwRocCI6ASGu/e1WbcS3qvfbyDLv4KkKB37h7xOPvZEpnFh7bqGxuER/H3ZfH5Gd/fUWjoHgjr
 ZXs=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Mar 2023 10:06:20 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 29 Mar 2023 10:05:46 -0700
Message-Id: <cover.1680108414.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
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
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1phZFj-008aXc-F5
Subject: [Jfs-discussion] [PATCH 00/19] bio: check return values of
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
 David Sterba <dsterba@suse.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-btrfs@vger.kernel.org, Bob Peterson <rpeterso@redhat.com>
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

Johannes Thumshirn (19):
  swap: use __bio_add_page to add page to bio
  drbd: use __bio_add_page to add page to bio
  dm: dm-zoned: use __bio_add_page for adding single metadata page
  fs: buffer: use __bio_add_page to add single page to bio
  md: use __bio_add_page to add single page
  md: raid5-log: use __bio_add_page to add single page
  md: raid5: use __bio_add_page to add single page to new bio
  btrfs: repair: use __bio_add_page for adding single page
  btrfs: raid56: use __bio_add_page to add single page
  jfs: logmgr: use __bio_add_page to add single page to bio
  gfs: use __bio_add_page for adding single page to bio
  zonefs: use __bio_add_page for adding single page to bio
  zram: use __bio_add_page for adding single page to bio
  floppy: use __bio_add_page for adding single page to bio
  md: check for failure when adding pages in alloc_behind_master_bio
  md: raid1: use __bio_add_page for adding single page to bio
  md: raid1: check if adding pages to resync bio fails
  dm-crypt: check if adding pages to clone bio fails
  block: mark bio_add_page as __must_check

 drivers/block/drbd/drbd_bitmap.c |  8 +++++---
 drivers/block/floppy.c           |  2 +-
 drivers/block/zram/zram_drv.c    |  2 +-
 drivers/md/dm-crypt.c            |  9 ++++++++-
 drivers/md/dm-zoned-metadata.c   |  6 +++---
 drivers/md/md.c                  |  4 ++--
 drivers/md/raid1-10.c            |  7 ++++++-
 drivers/md/raid1.c               |  5 +++--
 drivers/md/raid10.c              | 12 ++++++++++--
 drivers/md/raid5-cache.c         |  2 +-
 drivers/md/raid5-ppl.c           |  4 ++--
 fs/btrfs/bio.c                   |  2 +-
 fs/btrfs/raid56.c                |  2 +-
 fs/buffer.c                      |  2 +-
 fs/gfs2/ops_fstype.c             |  2 +-
 fs/jfs/jfs_logmgr.c              |  4 ++--
 fs/zonefs/super.c                |  2 +-
 include/linux/bio.h              |  2 +-
 mm/page_io.c                     |  8 ++++----
 19 files changed, 54 insertions(+), 31 deletions(-)

-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
