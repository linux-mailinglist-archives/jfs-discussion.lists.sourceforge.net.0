Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F93030760F
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Oq-0000Oa-Gj; Thu, 28 Jan 2021 12:27:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51TE-0007Af-Vp
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:12:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=244n3xqaFijHt8kzzKUdBKnW+g6eoCJh551aimWFiV0=; b=PBXe/wfhUtJ4wCfDBYGQK4Xz9E
 1ytYfnkiGVjmTU0MUpKvzpRgCzCHwCTevZOqj2MfcuCNLSlEKEBDKzWOFs3u7QjVtyvAiS0XZ+XIA
 TkdoB7MdC5uO9XZugSZ7TTDt6e34WDFYP0SpHP8CxGCkmsk/fQ+JcyR3QPI8qAaGmFc4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=244n3xqaFijHt8kzzKUdBKnW+g6eoCJh551aimWFiV0=; b=j
 DKToUlNwEZ0XMf936kQ5mswjzSZ4e/hAK3B5nIdFn5jvHszJ4FdQiqP+g5qNm6TgYi8613xRixnC9
 SO43pGuqfPCR/npjD8FOH2uJpZ67tryhFeN7rSmH03SjBB24rp5FSF8mjPYmp7jlpKmCsMJsJFC3a
 AvZm+knOFopVi5Gw=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51T4-00DWA0-TI
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:12:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611817910; x=1643353910;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BWhCtPmFmY8SRwjALXcTfESKnsKfTCmOrzddkgcZe24=;
 b=Sa8iRFY00ZLQmDvnkuAAXdceq1YEmb2o5t8G6qPz54/Ewqt31X1cd6k8
 wuV62zfiOd1O2W2vFuEmKjh9XyaxYC2atFX71YBLup1d+e43lSqOKVDWh
 KgOlyVujicXK+ouMZfIIqr9UJ6RTRQX+72H4adXdSDgWaiy3jQj6NbsGp
 eNZ5R4gABshN+fZb2P0HHCS4HIbNAilGI08UqUNpBgWfTDxteT6jMXIbg
 DvKJnTAY8rN5isvVdPZytZkMOXINKYTmsGfsG2JergW37eHioOnYLv0AO
 W4Z6JkN99PZuUh9FnQ6DgphvbXXZ3k1dTfgYEGhjOJi8MniQaoqj6F15p w==;
IronPort-SDR: 3T3aKrbP3SL6JyXYsM/HJL+GnYMEDHC2ShPJJRxPhTgZuNxPngOSDXdQ5WsK0In2/0YUimCAOU
 oJIxJsxemVYOIE70iMoWIp4YaA5ya3AXes0mio7bdMhd3ggRgTZiXS689fcsanmxsiFmEs2SSl
 JuS3CL68iG0yG3/583O64U17viC4DUBtwSHCSI2tUITFhoXl+P969kAJAm0boNT/q7eW6kioUg
 NHGUsxiEV4XFb801/2EHVktFtjqCHmZBee/KqTpUmkDXdZg4xipjeqBTC483cPhRM7lwxNWSmf
 lXI=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="162963077"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:11:38 +0800
IronPort-SDR: 8/0N0lGvdElYj6tyvEVuNkVqH/4qwrN2gSImdIVzCXuNkHvtlt3RjpqVF17w/fGwo9f7iK5vRp
 ujYjnYPimxt0Civwz/LXaMcLjd9ewgcDE9oTnWfWHOEmBliXzYak2bZYtB1+JKl3/NamWpDKWr
 uLgKSQjCB3ttkD2p7Im37byRo1Lu++gG45N4JM+J5qL13rIqDbFip+2s3iWPsATXtnLC1c/rqS
 jqzXV5kCEahWVp9I66gyy1gcefbnqeIFBzGnA2uvWzB8YKG/sBGlDE0IH2AtL7f1fEWu4WOiry
 Y+yk6/YsbToubUa4GO7Drkut
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:55:58 -0800
IronPort-SDR: 61Jf/0E9AfrbFBR+VL+aX9SYCVB0aW8ut/7/jLtTqvhkleWzu7b9JjkuOaGgMYwgMXw5C5Sybl
 VeNQs3LEjTqxDsR0ZyK8GA/cVYEZNMX2maaVF3ljBoeSQOO/ApbWgebfLMlSCkYd12pl+6neKj
 zn8nHOcIOMnNA2IBKV67KMXVLkXTllokNu+jCcdgoa5YFwfQecWL2vYSP5hgldmlqCiXple2ew
 fybG/wLzJMKvqPxvYQ59ATt+ZGQv1DjVDDtxXyNp0NJ+IswNbwLOu8d1uiq12NaSa1/W79MYTO
 wq8=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:11:38 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:10:59 -0800
Message-Id: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l51T4-00DWA0-TI
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:42 +0000
Subject: [Jfs-discussion] [RFC PATCH 00/34] block: introduce bio_new()
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
Cc: shaggy@kernel.org, sergey.senozhatsky.work@gmail.com, snitzer@redhat.com,
 tiwai@suse.de, djwong@kernel.org, gustavoars@kernel.org,
 joseph.qi@linux.alibaba.com, pavel@ucw.cz, alex.shi@linux.alibaba.com,
 hch@lst.de, agk@redhat.com, naohiro.aota@wdc.com, sagi@grimberg.me,
 mark@fasheh.com, osandov@fb.com, ebiggers@kernel.org, ngupta@vflare.org,
 len.brown@intel.com, chaitanya.kulkarni@wdc.com, konrad.wilk@oracle.com,
 hare@suse.de, ming.lei@redhat.com, viro@zeniv.linux.org.uk,
 jefflexu@linux.alibaba.com, jaegeuk@kernel.org, konishi.ryusuke@gmail.com,
 bvanassche@acm.org, axboe@kernel.dk, damien.lemoal@wdc.com, tytso@mit.edu,
 akpm@linux-foundation.org, martin.petersen@oracle.com, rjw@rjwysocki.net,
 philipp.reisner@linbit.com, minchan@kernel.org, tj@kernel.org,
 lars.ellenberg@linbit.com, jth@kernel.org, asml.silence@gmail.com,
 jlbec@evilplan.org, roger.pau@citrix.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi,

This is a *compile only RFC* which adds a generic helper to initialize
the various fields of the bio that is repeated all the places in
file-systems, block layer, and drivers.

The new helper allows callers to initialize non-optional members of bio
such as bdev, sector, op, opflags, max_bvecs and gfp_mask by
encapsulating new bio allocation with bio alloc with initialization
at one place.

The objective of this RFC is to only start a discussion, this it not 
completely tested at all.

-ck                         

Chaitanya Kulkarni (34):
  block: move common code into blk_next_bio()
  block: introduce and use bio_new
  drdb: use bio_new in drdb
  drdb: use bio_new() in submit_one_flush
  xen-blkback: use bio_new
  zram: use bio_new
  dm: use bio_new in dm-log-writes
  dm-zoned: use bio_new in get_mblock_slow
  dm-zoned: use bio_new in dmz_write_mblock
  dm-zoned: use bio_new in dmz_rdwr_block
  nvmet: use bio_new in nvmet_bdev_execute_rw
  scsi: target/iblock: use bio_new
  block: use bio_new in __blkdev_direct_IO
  fs/buffer: use bio_new in submit_bh_wbc
  fscrypt: use bio_new in fscrypt_zeroout_range
  fs/direct-io: use bio_new in dio_bio_alloc
  iomap: use bio_new in iomap_dio_zero
  iomap: use bio_new in iomap_dio_bio_actor
  fs/jfs/jfs_logmgr.c: use bio_new in lbmRead
  fs/jfs/jfs_logmgr.c: use bio_new in lbmStartIO
  fs/jfs/jfs_metapage.c: use bio_new in metapage_writepage
  fs/jfs/jfs_metapage.c: use bio_new in metapage_readpage
  fs/mpage.c: use bio_new mpage_alloc
  fs/nilfs: use bio_new nilfs_alloc_seg_bio
  ocfs/cluster: use bio_new in dm-log-writes
  xfs: use bio_new in xfs_rw_bdev
  xfs: use bio_new in xfs_buf_ioapply_map
  zonefs: use bio_new
  power/swap: use bio_new in hib_submit_io
  hfsplus: use bio_new in hfsplus_submit_bio()
  iomap: use bio_new in iomap_readpage_actor
  mm: use bio_new in __swap_writepage
  mm: use bio_new in swap_readpage
  mm: add swap_bio_new common bio helper

 block/blk-lib.c                     | 34 ++++++++++-------------------
 block/blk-zoned.c                   |  4 +---
 block/blk.h                         |  5 +++--
 drivers/block/drbd/drbd_receiver.c  | 12 +++++-----
 drivers/block/xen-blkback/blkback.c | 20 +++++++++++------
 drivers/block/zram/zram_drv.c       |  5 ++---
 drivers/md/dm-log-writes.c          | 30 +++++++++----------------
 drivers/md/dm-zoned-metadata.c      | 18 +++++----------
 drivers/nvme/target/io-cmd-bdev.c   |  9 +++-----
 drivers/target/target_core_iblock.c |  5 ++---
 fs/block_dev.c                      |  6 ++---
 fs/buffer.c                         | 16 ++++++--------
 fs/crypto/bio.c                     |  5 ++---
 fs/direct-io.c                      |  6 ++---
 fs/hfsplus/wrapper.c                |  5 +----
 fs/iomap/buffered-io.c              | 12 +++++-----
 fs/iomap/direct-io.c                | 11 ++++------
 fs/jfs/jfs_logmgr.c                 | 13 ++++-------
 fs/jfs/jfs_metapage.c               | 15 +++++--------
 fs/mpage.c                          | 18 +++++----------
 fs/nilfs2/segbuf.c                  | 10 ++-------
 fs/ocfs2/cluster/heartbeat.c        |  6 ++---
 fs/xfs/xfs_bio_io.c                 |  7 ++----
 fs/xfs/xfs_buf.c                    |  6 ++---
 fs/zonefs/super.c                   |  6 ++---
 include/linux/bio.h                 | 25 +++++++++++++++++++++
 kernel/power/swap.c                 |  7 +++---
 mm/page_io.c                        | 30 +++++++++++++------------
 28 files changed, 151 insertions(+), 195 deletions(-)

-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
