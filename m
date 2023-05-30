Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0541F716860
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:59:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q41kx-0000Z0-Jb;
	Tue, 30 May 2023 15:59:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1q41kw-0000Yu-3t
 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:59:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=18OSvYiG0zIcEikpFuO5yhaNcppNczPdkyzmCbvrupw=; b=KQjHWRh2QPqtiNW+xGcQRlaUb0
 iQZodZHILZWj5fLSrJm1m9/dTeAnfSQ5Y1ACGBUgnewSJHh4Zy9XIT9LwN6yVzQISZ+XPQ6Rx0o2v
 NwZ4rkGc1jdP1EDvBlfaqulMezCsbSF/3YIy1KkEfZLHm8ij4cx+Lc/SjUtynYjBt4qw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=18OSvYiG0zIcEikpFuO5yhaNcppNczPdkyzmCbvrupw=; b=lPQxMy3WAZdYRDE3InGbOd9LQW
 EHIeWG5VHQG2G4c/Lf1ii6uSxg/weEJrf9eUgw0XX5vxvEoGr0q0wOcCht9vo8o6IWKZRygx/8mwL
 gWyXMhavn6K6IcrEbPsOyOWCQVyoT6D9njRElcmMLn6OM5fOD8XQ+F3HhnMUxprUi0iM=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q41kv-0004JL-G5 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:59:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=18OSvYiG0zIcEikpFuO5yhaNcppNczPdkyzmCbvrupw=; b=PQ7AUm4XmnRX/4BaMtwqnZFAQx
 xQiTbKyqkKcVG7e15O+WskcS69vdvksxtc/q+R7kTa8LZmQPPAqJSJZWh3nyQA4iG1u4z/VA14rAd
 zPBVbJI0piRA8g5fixcGudecRTQ0mT67MUv19JKHQKsELGGBWyBOx+H1/e8yB25df7rj4TVyBDBmt
 K/X0ZvHTImU88VELnSxLmQ8k9uq5mntW+w3tblr9JupFCIvj3BfZ23BMFw+fi0UkIrPg/v/qEe3MC
 9jBcrMWe3r05qiGG8t/0HubdNMJh+3SYkCxGNMu0ArKeSbop61CdcLGnJvi0JBDefL8H8BAhUcHRo
 kxzwRIog==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1q41kO-006QMe-SK; Tue, 30 May 2023 15:58:56 +0000
Date: Tue, 30 May 2023 16:58:56 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Message-ID: <ZHYdQJQ7S4ya09Jt@casper.infradead.org>
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
 <3d45098a7640897cbace54713efe10d88b74c160.1685461490.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d45098a7640897cbace54713efe10d88b74c160.1685461490.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, May 30, 2023 at 08:49:23AM -0700, Johannes Thumshirn
 wrote: > Now that all callers of bio_add_folio() check the return value,
 mark it as > __must_check. > > Signed-off-by: Johannes Thumshirn < [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
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
X-Headers-End: 1q41kv-0004JL-G5
Subject: Re: [Jfs-discussion] [PATCH v6 20/20] block: mark bio_add_folio as
 __must_check
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

On Tue, May 30, 2023 at 08:49:23AM -0700, Johannes Thumshirn wrote:
> Now that all callers of bio_add_folio() check the return value, mark it as
> __must_check.
> 
> Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org>



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
