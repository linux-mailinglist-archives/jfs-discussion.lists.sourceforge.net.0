Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EB971757F
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 06:27:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4DQL-0001gH-NW;
	Wed, 31 May 2023 04:27:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hch@lst.de>) id 1q4DQJ-0001g3-Ig
 for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 04:26:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5sN6vFID4Y9NF66kqBa6RW+qj5bqKbv/Px2VdKOmM8A=; b=TqReJVLfvnFXUweVFvFGcvDzKU
 ox6LXtJsj+xjSxruUuMwCmUD29nSaoblntjwi3bBbV3ajL2II5JWdKke0MFk5adpK35tCTJw3ZgNI
 EBlSA5CcnBtCIm5Gh1gojPv2MNuTD8Y7zXhRoqF/0D4/4QbRSRDc5q4cMYaF45e+yKNc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5sN6vFID4Y9NF66kqBa6RW+qj5bqKbv/Px2VdKOmM8A=; b=ZNhbkeWA62sMbmpHogZPCCPy93
 LfScg4j9Wubeo3ljNxnE3F+Sz9RtvKLmLFqlZ9YE2NB7ASfWHGYAMCW0+sysV+76wAAPqu2pCeIwe
 FbABgYXhcATa/S+XWD7q10q1P5C66NBIuNhyxaJG/Ph1w+NZ97QhyWVVch7VGmbb4Cgw=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4DQJ-0076ct-9F for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 04:26:59 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 89F1768B05; Wed, 31 May 2023 06:26:51 +0200 (CEST)
Date: Wed, 31 May 2023 06:26:51 +0200
From: Christoph Hellwig <hch@lst.de>
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Message-ID: <20230531042651.GO32705@lst.de>
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
 <5a142a7663a4beb2966d82f25708a9f22316117c.1685461490.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5a142a7663a4beb2966d82f25708a9f22316117c.1685461490.git.johannes.thumshirn@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, May 30, 2023 at 08:49:21AM -0700, Johannes Thumshirn
 wrote: > Just like for bio_add_pages() add a no-fail variant for
 bio_add_folio().
 Can we call this bio_add_folio_nofail? I really regret the __ prefix for
 bio_add_page these days - it wasn't really intended to be used as widely
 originally..
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q4DQJ-0076ct-9F
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
 jfs-discussion@lists.sourceforge.net, Matthew Wilcox <willy@infradead.org>,
 Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
 linux-mm@kvack.org, dm-devel@redhat.com, Mikulas Patocka <mpatocka@redhat.com>,
 Hannes Reinecke <hare@suse.de>, linux-fsdevel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, May 30, 2023 at 08:49:21AM -0700, Johannes Thumshirn wrote:
> Just like for bio_add_pages() add a no-fail variant for bio_add_folio().

Can we call this bio_add_folio_nofail?  I really regret the __ prefix for
bio_add_page these days - it wasn't really intended to be used as widely
originally..

> +void __bio_add_folio(struct bio *, struct folio *, size_t len, size_t off);

.. and please spell out the parameters.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
