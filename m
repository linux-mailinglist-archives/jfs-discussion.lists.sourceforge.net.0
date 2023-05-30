Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F001716854
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:59:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q41kJ-0008ND-DM;
	Tue, 30 May 2023 15:58:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1q41kH-0008N7-SJ
 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:58:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EUJdk2OGgUYJbM7BmoV5F94DUj/831NQN7PcTKWML48=; b=ZQIwRvZ6Z8Gxuc+UMBkPEmn90u
 h8gvbvohkiWFZyY+K6//U8Qdbwb1H0f6MKkOQmvIU4o+0Ei4ApwiiqqFslHo+xYTXFZ/INQHCjPYn
 LSPvRdaPT2Kpu8chZwtFOC9kWa9gEsQSwKV7PhZcQrsfILxn6U4ighJq+hEC1ZCXwyo4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EUJdk2OGgUYJbM7BmoV5F94DUj/831NQN7PcTKWML48=; b=KztmgIn9lNgiib/ik5yocZypRY
 C2Twzv88JbarJZyOvITgQsvUF+z+mQTqB0fKmnaNgNLplL1DgoedJ0OBSq9p6eIl7lnLy0Jrk1G6i
 zPYrm6UvmkA5EfJEbvS0BDKZGvz0KWgg+PKVoERHb7XSMyBfgjCuio06DmPwiuwOW5DA=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q41kD-006gIP-U6 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:58:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=EUJdk2OGgUYJbM7BmoV5F94DUj/831NQN7PcTKWML48=; b=SSu8+OpjAo2ajEkOK4POBQyXCY
 JN1wwFHIkkL3uMddb18Zc5+VXZ7uyMtRV4X9zsVmk3+eQZZAfEaFbJL7205MEU+lGCLcWgfVmpW4D
 jCTRfP8MZ2OJ0VdCw8Zw3+nTsOpzA92cd0uhxfyDKFDL5VHdYcvSi48J5MlXZed1diym25y0XTonS
 wdSys2Gdqf7M5aq/o6OnWYTqn5snKIE5ls7lMK6fKyjCeSgl0IIFFy4FKuhPRBYtGvgQKUA7OGvbT
 P745kiX8CuDHjJDwAhN+iXdmq78PbmMezGcxKyvS/cnqd93GT2NTz0Xd/9QQPmnYKOfGby1jLJ0hp
 f86ws4yQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1q41jS-006QJ8-NA; Tue, 30 May 2023 15:57:58 +0000
Date: Tue, 30 May 2023 16:57:58 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Message-ID: <ZHYdBvHI2AAyTZxv@casper.infradead.org>
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
 <5a142a7663a4beb2966d82f25708a9f22316117c.1685461490.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5a142a7663a4beb2966d82f25708a9f22316117c.1685461490.git.johannes.thumshirn@wdc.com>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, May 30, 2023 at 08:49:21AM -0700, Johannes Thumshirn
 wrote: > Just like for bio_add_pages() add a no-fail variant for
 bio_add_folio().
 > > Signed-off-by: Johannes Thumshirn <johannes.thumshirn [...] 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1q41kD-006gIP-U6
Subject: Re: [Jfs-discussion] [PATCH v6 18/20] block: add __bio_add_folio
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-raid@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Andreas Gruenbacher <agruenba@redhat.com>,
 Song Liu <song@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 gouhao@uniontech.com, Mike Snitzer <snitzer@kernel.org>,
 jfs-discussion@lists.sourceforge.net, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 Mikulas Patocka <mpatocka@redhat.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, May 30, 2023 at 08:49:21AM -0700, Johannes Thumshirn wrote:
> Just like for bio_add_pages() add a no-fail variant for bio_add_folio().
> 
> Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
