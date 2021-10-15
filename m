Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C7842F744
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 Oct 2021 17:49:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mbPRy-0000XT-Re; Fri, 15 Oct 2021 15:48:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <anton@tuxera.com>)
 id 1mbOJq-00043Y-1z; Fri, 15 Oct 2021 14:36:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CVH9cSWFGTY9eNZm3f5hs83Fbk5f+pR7kVpDTI7VzyQ=; b=KsxN7ah7KSjxVRkf6RkG6s0uAQ
 b0464GcmKMjA3WxMGW5WY6rWac1gwc61vM5DIO6SWUdQwLTvYYU0qDOLr5SM1wFwfBz0IhmQltOio
 bFFn3AKs1AGNy8mcouvX5nx1o/xe8INFV5MktJOdl9U7iZ3RxeG7ytnZZ3V2r3nIZygA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CVH9cSWFGTY9eNZm3f5hs83Fbk5f+pR7kVpDTI7VzyQ=; b=PgQbLdxGXSCgA+iapmZoQXHotx
 H8FOidnFNv+TotOPC5hCp3snQ7SOsluu37aI5fzynajzi2GlgvQdQZrW0bEdm+ns9CICFTuPW9yFM
 MOt4vyJ3/33SG1ngOcDAXPFWx6lsZ/I8ZYPpGQFHUnVA0OofH6WPHBULTAf8eIvbrves=;
Received: from mgw-01.mpynet.fi ([82.197.21.90])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mbOJn-0008OT-Je; Fri, 15 Oct 2021 14:36:21 +0000
Received: from pps.filterd (mgw-01.mpynet.fi [127.0.0.1])
 by mgw-01.mpynet.fi (8.16.0.43/8.16.0.43) with SMTP id 19FEWINE065735;
 Fri, 15 Oct 2021 17:35:41 +0300
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
 by mgw-01.mpynet.fi with ESMTP id 3bqa6fr1mk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 15 Oct 2021 17:35:41 +0300
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.23; Fri, 15 Oct 2021 17:35:40 +0300
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.023; Fri, 15 Oct 2021 17:35:40 +0300
From: Anton Altaparmakov <anton@tuxera.com>
To: Christoph Hellwig <hch@lst.de>
Thread-Topic: [PATCH 28/30] ntfs: use sb_bdev_nr_blocks
Thread-Index: AQHXwch+sOYTA5n1EU2k5d07nGAE/6vT7f2A
Date: Fri, 15 Oct 2021 14:35:40 +0000
Message-ID: <7644804B-2081-4A1E-A40D-9A5C7BF72E2E@tuxera.com>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-29-hch@lst.de>
In-Reply-To: <20211015132643.1621913-29-hch@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [109.154.241.177]
Content-ID: <3668CC17B52D274985AE4DAF6C11620E@ex13.tuxera.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: 4ZKrI-UQqOuYdNTfa7YqNKQX-GuzVYXg
X-Proofpoint-GUID: 4ZKrI-UQqOuYdNTfa7YqNKQX-GuzVYXg
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.790
 definitions=2021-10-15_04:2021-10-14,
 2021-10-15 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 phishscore=0
 mlxlogscore=999
 bulkscore=0 malwarescore=0 mlxscore=0 spamscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110150089
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Christoph, Looks good, thank you. Best regards, 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tuxera.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [82.197.21.90 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1mbOJn-0008OT-Je
X-Mailman-Approved-At: Fri, 15 Oct 2021 15:48:49 +0000
Subject: Re: [Jfs-discussion] [PATCH 28/30] ntfs: use sb_bdev_nr_blocks
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
Cc: Dave Kleikamp <shaggy@kernel.org>, "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>, Mike Snitzer <snitzer@redhat.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, Konstantin
 Komarov <almaz.alexandrovich@paragon-software.com>, Song Liu <song@kernel.org>,
 "dm-devel@redhat.com" <dm-devel@redhat.com>,
 "target-devel@vger.kernel.org" <target-devel@vger.kernel.org>,
 "reiserfs-devel@vger.kernel.org" <reiserfs-devel@vger.kernel.org>,
 "drbd-dev@lists.linbit.com" <drbd-dev@lists.linbit.com>,
 "linux-nilfs@vger.kernel.org" <linux-nilfs@vger.kernel.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "linux-ext4@vger.kernel.org" <linux-ext4@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 Coly Li <colyli@suse.de>,
 "linux-raid@vger.kernel.org" <linux-raid@vger.kernel.org>,
 "linux-bcache@vger.kernel.org" <linux-bcache@vger.kernel.org>,
 David Sterba <dsterba@suse.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, Jens Axboe <axboe@kernel.dk>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nfs@vger.kernel.org" <linux-nfs@vger.kernel.org>,
 Theodore Ts'o <tytso@mit.edu>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 Jan Kara <jack@suse.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Phillip Lougher <phillip@squashfs.org.uk>,
 "ntfs3@lists.linux.dev" <ntfs3@lists.linux.dev>,
 "linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi Christoph,

Looks good, thank you.

Best regards,

	Anton

> On 15 Oct 2021, at 14:26, Christoph Hellwig <hch@lst.de> wrote:
> 
> Use the sb_bdev_nr_blocks helper instead of open coding it and clean up
> ntfs_fill_super a bit by moving an assignment a little earlier that has
> no negative side effects.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Acked-by: Anton Altaparmakov <anton@tuxera.com>

> ---
> fs/ntfs/super.c | 8 +++-----
> 1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
> index 0d7e948cb29c9..5ae8de09b271b 100644
> --- a/fs/ntfs/super.c
> +++ b/fs/ntfs/super.c
> @@ -2772,13 +2772,12 @@ static int ntfs_fill_super(struct super_block *sb, void *opt, const int silent)
> 	ntfs_debug("Set device block size to %i bytes (block size bits %i).",
> 			blocksize, sb->s_blocksize_bits);
> 	/* Determine the size of the device in units of block_size bytes. */
> -	if (!i_size_read(sb->s_bdev->bd_inode)) {
> +	vol->nr_blocks = sb_bdev_nr_blocks(sb);
> +	if (!vol->nr_blocks) {
> 		if (!silent)
> 			ntfs_error(sb, "Unable to determine device size.");
> 		goto err_out_now;
> 	}
> -	vol->nr_blocks = i_size_read(sb->s_bdev->bd_inode) >>
> -			sb->s_blocksize_bits;
> 	/* Read the boot sector and return unlocked buffer head to it. */
> 	if (!(bh = read_ntfs_boot_sector(sb, silent))) {
> 		if (!silent)
> @@ -2816,8 +2815,7 @@ static int ntfs_fill_super(struct super_block *sb, void *opt, const int silent)
> 			goto err_out_now;
> 		}
> 		BUG_ON(blocksize != sb->s_blocksize);
> -		vol->nr_blocks = i_size_read(sb->s_bdev->bd_inode) >>
> -				sb->s_blocksize_bits;
> +		vol->nr_blocks = sb_bdev_nr_blocks(sb);
> 		ntfs_debug("Changed device block size to %i bytes (block size "
> 				"bits %i) to match volume sector size.",
> 				blocksize, sb->s_blocksize_bits);
> -- 
> 2.30.2
> 



-- 
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
