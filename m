Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E1C7191B6
	for <lists+jfs-discussion@lfdr.de>; Thu,  1 Jun 2023 06:21:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4Znk-0001XG-5l;
	Thu, 01 Jun 2023 04:20:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hch@lst.de>) id 1q4Znb-0001XA-8G
 for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Jun 2023 04:20:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EI9QUJ7Nesm48YGEoFZ4mX00s6dVIGtrGWIdNhMsvuw=; b=ZcfV7OJzsyfxfeUx4FKFeZwTZ7
 y0xkaW5WH2HDu2FpCLUS+0Xqkk9aebpiVzk/LrNqiMKrdoSiqL5Uo5n3eWcklt2OsHXSE1ztJODnE
 BNqI4OkvsBR8iRydGtM7m9LLhVQQCgvlwaP9mBhTlxUbtJDCdpew03KrNRltAvPw/scs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EI9QUJ7Nesm48YGEoFZ4mX00s6dVIGtrGWIdNhMsvuw=; b=FgeOBnL8ZfhtRTlel31AJWXeVu
 czqx0UC21GL2L/Gnk5t1u08GWMcg7qxHI8HG9mYFzXArw1dnEbAmcQNk6QoD/vouWVyzuksWSkG90
 v0W7gaHSgqCxCNlUIiX7EoSuok01Qtc4J333UifXieG0V/8qPbK0s/Qp9gsJmQY89udA=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4Zna-0001jR-GU for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Jun 2023 04:20:31 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B611767373; Thu,  1 Jun 2023 06:20:21 +0200 (CEST)
Date: Thu, 1 Jun 2023 06:20:21 +0200
From: Christoph Hellwig <hch@lst.de>
To: Dave Chinner <david@fromorbit.com>
Message-ID: <20230601042021.GA21768@lst.de>
References: <cover.1685532726.git.johannes.thumshirn@wdc.com>
 <58fa893c24c67340a63323f09a179fefdca07f2a.1685532726.git.johannes.thumshirn@wdc.com>
 <ZHfMC86ktyLtIxNb@dread.disaster.area>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZHfMC86ktyLtIxNb@dread.disaster.area>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 01, 2023 at 08:36:59AM +1000, Dave Chinner wrote:
 > We lose adjacent page merging with this change. This is only used for adding
 the first folio to a brand new bio, so there is nothing to merge with yet
 at this point. 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1q4Zna-0001jR-GU
Subject: Re: [Jfs-discussion] [PATCH v7 19/20] fs: iomap: use
 bio_add_folio_nofail where possible
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Song Liu <song@kernel.org>, dm-devel@redhat.com,
 Christoph Hellwig <hch@lst.de>, Andreas Gruenbacher <agruenba@redhat.com>,
 Matthew Wilcox <willy@infradead.org>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Mike Snitzer <snitzer@kernel.org>,
 Ming Lei <ming.lei@redhat.com>, linux-raid@vger.kernel.org,
 Bob Peterson <rpeterso@redhat.com>, Mikulas Patocka <mpatocka@redhat.com>,
 Hannes Reinecke <hare@suse.de>, gouha7@uniontech.com,
 Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, linux-mm@kvack.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Jun 01, 2023 at 08:36:59AM +1000, Dave Chinner wrote:
> We lose adjacent page merging with this change.

This is only used for adding the first folio to a brand new bio,
so there is nothing to merge with yet at this point.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
