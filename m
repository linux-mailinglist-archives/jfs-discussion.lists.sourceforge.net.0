Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD2B2FB6B1
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reS-0000Me-LZ; Tue, 19 Jan 2021 14:06:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jTI-0001hk-9v
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:22:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0rUROlSF2xykEpoGO+g8SGdVhz8hzmIJJCaiS2l/r00=; b=iFjPHjmydQQCSW8j6abH/ZIdf5
 iUmyPDT3JlqfAv7PNgoN5dcWFyXl6ufIOObG80/pQOmLkfj9z6iP6uFl9fPb/k+7+2Xc6l0j/fMO/
 31VFFp3anRBvb6ymg90XdbmOUM3c7vprBU0ITXkReZTZDBw0Jdnw/qhUqIGcNXIbWj1g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0rUROlSF2xykEpoGO+g8SGdVhz8hzmIJJCaiS2l/r00=; b=h
 qjmxHDjLEmQ33WdesEWI5NY0NzsJQ/HURbUAsfKIi1lneDHzgKKmYFgIVGb8bO3i0DehemTj/tfoq
 VLMrZHMNGMccvoQBBdc84V8k6jL99BKFw/yu4diMonhmu36Ls1MxE+OHF2cnW0Ia8E/Vpqz0Z/Khs
 YqNE0tEiiiQyspUk=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jTE-006vgT-B4
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:22:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033744; x=1642569744;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2EwAg85Rl2+jMe62nRnS8RL98bOCXmnfO5riJrV6i0c=;
 b=JNkueyPSnKIHyg/1wME6K6XG0HwmMVCjZfKgRBuv1q8JSR5COt4sQm7B
 YhC9QGUjLiGcrAFi9amai5w/l1ogZoSwksJCFIH0oAeIqRlEmVjm4W2FH
 LnNhwgNF9FdKBI9UfWzWPXWg8cctgZ2g6SE6bqSE5Ajok0Pz5Z3qD7apg
 nXR6fCNS8p+hAh/DuQE5RkJM0Aaa/HaLY+r5+sAdp4zVAqT/iCnptXlO9
 2G+slVpRWFftUYVXVZWhz6JxsP1vaEHxZrbDtgFufJL591FnMlW02LYFG
 wOL/DEHsese7y7B4vdTAPGoAIZpd9SAjhrwV3M0DGnJ07/wt8972NzPoV A==;
IronPort-SDR: uyKVnrTRVURNU4UwtexPKWDFDF2KiiMmMZFAAQJDThQYmpqDBVNt2ErKvToAaBIigiRLUMBRX8
 RKcs1OY7E110N1H44TDbDYY52YM1+R+JECmYefm5fpLvjsOtOWUC+enn+RUg7e0A/TWmatpqaU
 /OKl17OtsuKOu3tuG90iI69ClUWcFCQHRqy3Bf6QkvVrtKy1dQV8xjbASqN2WZZn+AmIyjNHWB
 yEtuABSJ8IHX4PkCL6LLQNV0SB2DfzM7DptGLpSoFlymO553j+979r4zpjRJ2hc2wwNaAUYxXC
 jzA=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="162200862"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:06:34 +0800
IronPort-SDR: PFPsPxbmLv+kdSUpR8vwAKz/+pQDyO8sZwdwcXe53RSMp1zp7bfnTkM0Kz2d/Y6GRztGGTQUe7
 fp7RtIDbUz6BGLyUK6LNY9gLe4ywi+IcknUVc4096b4jEo758It1NrxZMc/B4NUJH1EQ3P0JKK
 jQaORFPYY2BbxtDMT72WI2qs+YTZbGDG6/9gvmJQ/PyfDuWQNVkA0OgowE8mGZBjwayvEPwTZz
 ZnxpqkqOAsCdZzVLNsjgjL3rVtpBB1Q50PbQ8FKx2MD6QFxim7MKRoMktloiT2MeXtme8aSuDr
 xW+QPtu7lbBGCeU04iRQ7DyJ
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:49:09 -0800
IronPort-SDR: w8TQaHPmOf4afpFLhHFiHm4s9YBVvwz1nCheCJ4OBOH8yQ2UY0NC3Tt/JdFHF9KkeR+DlxZGUH
 e7bQB+02ddXqKaR8b/7v1Y7wXKviC9dKqJTPF9aSTC9cHooTn06sxWBBnh6ybRkpJPiq1eaXml
 Li9XSEIsEl1dTBAvxWyxQKBso9dBp+WZiRKxmJUsbAqs+G/qtiWTWXlVZWjYoZKV0OKSYwZfdM
 WxDGvor0MhqHOPvWCUI9b0h4sFeSeNraJk/cdT+mEYZtqS1ubVV2lyl7ZqDz6u2Z/jCzzw/RkG
 Jdo=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:06:34 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:05:54 -0800
Message-Id: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l1jTE-006vgT-B4
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:27 +0000
Subject: [Jfs-discussion] [RFC PATCH 00/37] block: introduce
 bio_init_fields()
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, snitzer@redhat.com,
 gustavo@embeddedor.com, clm@fb.com, dm-devel@redhat.com,
 adilger.kernel@dilger.ca, hch@lst.de, agk@redhat.com, naohiro.aota@wdc.com,
 sagi@grimberg.me, darrick.wong@oracle.com, osandov@fb.com,
 kent.overstreet@gmail.com, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 josef@toxicpanda.com, efremov@linux.com, colyli@suse.de, tj@kernel.org,
 viro@zeniv.linux.org.uk, dsterba@suse.com, bvanassche@acm.org,
 agruenba@redhat.com, axboe@kernel.dk, damien.lemoal@wdc.com, tytso@mit.edu,
 martin.petersen@oracle.com, song@kernel.org, philipp.reisner@linbit.com,
 jefflexu@linux.alibaba.com, rpeterso@redhat.com, lars.ellenberg@linbit.com,
 jth@kernel.org, asml.silence@gmail.com
Content-Type: multipart/mixed; boundary="===============4028966110208315318=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--===============4028966110208315318==
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

Hi,

This is a *compile only RFC* which adds a generic helper to initialize
the various fields of the bio that is repeated all the places in
file-systems, block layer, and drivers.

The new helper allows callers to initialize various members such as
bdev, sector, private, end io callback, io priority, and write hints.

The objective of this RFC is to only start a discussion, this it not 
completely tested at all.                                                                                                            
Following diff shows code level benefits of this helper :-
 38 files changed, 124 insertions(+), 236 deletions(-)

-ck

Chaitanya Kulkarni (37):
  block: introduce bio_init_fields() helper
  fs: use bio_init_fields in block_dev
  btrfs: use bio_init_fields in disk-io
  btrfs: use bio_init_fields in volumes
  ext4: use bio_init_fields in page_io
  gfs2: use bio_init_fields in lops
  gfs2: use bio_init_fields in meta_io
  gfs2: use bio_init_fields in ops_fstype
  iomap: use bio_init_fields in buffered-io
  iomap: use bio_init_fields in direct-io
  jfs: use bio_init_fields in logmgr
  zonefs: use bio_init_fields in append
  drdb: use bio_init_fields in actlog
  drdb: use bio_init_fields in bitmap
  drdb: use bio_init_fields in receiver
  floppy: use bio_init_fields
  pktcdvd: use bio_init_fields
  bcache: use bio_init_fields in journal
  bcache: use bio_init_fields in super
  bcache: use bio_init_fields in writeback
  dm-bufio: use bio_init_fields
  dm-crypt: use bio_init_fields
  dm-zoned: use bio_init_fields metadata
  dm-zoned: use bio_init_fields target
  dm-zoned: use bio_init_fields
  dm log writes: use bio_init_fields
  nvmet: use bio_init_fields in bdev-ns
  target: use bio_init_fields in iblock
  btrfs: use bio_init_fields in scrub
  fs: use bio_init_fields in buffer
  eros: use bio_init_fields in data
  eros: use bio_init_fields in zdata
  jfs: use bio_init_fields in metadata
  nfs: use bio_init_fields in blocklayout
  ocfs: use bio_init_fields in heartbeat
  xfs: use bio_init_fields in xfs_buf
  xfs: use bio_init_fields in xfs_log

 block/blk-lib.c                     | 13 +++++--------
 drivers/block/drbd/drbd_actlog.c    |  5 +----
 drivers/block/drbd/drbd_bitmap.c    |  5 +----
 drivers/block/drbd/drbd_receiver.c  | 11 +++--------
 drivers/block/floppy.c              |  5 +----
 drivers/block/pktcdvd.c             | 12 ++++--------
 drivers/md/bcache/journal.c         | 21 ++++++++-------------
 drivers/md/bcache/super.c           | 19 +++++--------------
 drivers/md/bcache/writeback.c       | 14 ++++++--------
 drivers/md/dm-bufio.c               |  5 +----
 drivers/md/dm-crypt.c               |  4 +---
 drivers/md/dm-log-writes.c          | 21 ++++++---------------
 drivers/md/dm-zoned-metadata.c      | 15 +++++----------
 drivers/md/dm-zoned-target.c        |  9 +++------
 drivers/md/md.c                     |  6 ++----
 drivers/nvme/target/io-cmd-bdev.c   |  4 +---
 drivers/target/target_core_iblock.c | 11 +++--------
 fs/block_dev.c                      | 17 +++++------------
 fs/btrfs/disk-io.c                  | 11 ++++-------
 fs/btrfs/scrub.c                    |  6 ++----
 fs/btrfs/volumes.c                  |  4 +---
 fs/buffer.c                         |  7 ++-----
 fs/erofs/data.c                     |  6 ++----
 fs/erofs/zdata.c                    |  9 +++------
 fs/ext4/page-io.c                   |  6 ++----
 fs/gfs2/lops.c                      |  6 ++----
 fs/gfs2/meta_io.c                   |  5 ++---
 fs/gfs2/ops_fstype.c                |  7 ++-----
 fs/iomap/buffered-io.c              |  5 ++---
 fs/iomap/direct-io.c                | 15 +++++----------
 fs/jfs/jfs_logmgr.c                 | 16 ++++------------
 fs/jfs/jfs_metapage.c               | 16 +++++++---------
 fs/nfs/blocklayout/blocklayout.c    |  8 ++------
 fs/ocfs2/cluster/heartbeat.c        |  4 +---
 fs/xfs/xfs_buf.c                    |  6 ++----
 fs/xfs/xfs_log.c                    |  6 ++----
 fs/zonefs/super.c                   |  7 +++----
 include/linux/bio.h                 | 13 +++++++++++++
 38 files changed, 124 insertions(+), 236 deletions(-)

-- 
2.22.1



--===============4028966110208315318==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4028966110208315318==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============4028966110208315318==--
