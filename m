Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D254F265908
	for <lists+jfs-discussion@lfdr.de>; Fri, 11 Sep 2020 08:02:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kGc7z-0006Ye-Vs; Fri, 11 Sep 2020 06:01:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+8b03dcf5e621e88c3391+6228+infradead.org+hch@casper.srs.infradead.org>)
 id 1kGc7x-0006YQ-Fi
 for jfs-discussion@lists.sourceforge.net; Fri, 11 Sep 2020 06:01:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p/cH8MXuZzCKuPPmti7QDphLipv+FPQX4l4ZWjjEoYc=; b=CXesaLKrdIRZEOy3nkGukfppio
 phIUIyccN3PleFIiAKv4dsYt1PQ6fwHrmeFTJXiY0S8KWMCbabUpkK3zii//dj510+ot7tFLL0uuU
 RkPU3YzM7HBfnFEosZ9CrO28fVityBbT2WLFVS2Aq/j09Occ/Rd4DoQprbrUWcZK2RKQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p/cH8MXuZzCKuPPmti7QDphLipv+FPQX4l4ZWjjEoYc=; b=Lz/sxnN2GD4n+YBON7bLMeTHr/
 ggRITZ9/opV08xGU2aInegdB6bC3ruXTPjKWVuMQvgTFMgDWUmQBwvBzn/tye1rfeJ4jy96i2qi9M
 eHPPrSBZ2P/cHt3bEgXm5z/Dzm+4oFLnA125A/E8kUWEGK9r7HBAYymuOmW+bN9qd1m0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kGc7m-003sLi-Qt
 for jfs-discussion@lists.sourceforge.net; Fri, 11 Sep 2020 06:01:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=p/cH8MXuZzCKuPPmti7QDphLipv+FPQX4l4ZWjjEoYc=; b=ZlUs99gwDP63poq1V7RJnCx15p
 GWPQsJznaLYXI9GyHVKOaB8NeHGK5Z1gQw0WPGRQA/IEz1LiPfuGL3sWL0qN8l8AgtKkwA+1ijU7W
 cAP3oU+VdgXVRyPhUvsT5LFAWByJJCVp/o2lPoHyvCCYSC6eWPMrPChgHKQhUV0/mfw3YZm7PGdOq
 XOY0a+NkAGuyMbMqvUrY3DvZqppcMD5NT/viDmKRSt2GTTM4iSk0x+T60nV70CD2i5x1BYiD1iBk7
 ROVK4/sUFa2JzzkoAvahQIxqSE27aFRRdK9kWAESBAQgi7uBRT1dIwUjcire7ZxyUCnCg4152+PjK
 jz7Q2b1g==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kGbjG-0003xg-Ur; Fri, 11 Sep 2020 05:36:11 +0000
Date: Fri, 11 Sep 2020 06:36:10 +0100
From: Christoph Hellwig <hch@infradead.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20200911053610.GA15114@infradead.org>
References: <20200910234707.5504-1-willy@infradead.org>
 <20200910234707.5504-6-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200910234707.5504-6-willy@infradead.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kGc7m-003sLi-Qt
Subject: Re: [Jfs-discussion] [PATCH v2 5/9] iomap: Support arbitrarily many
 blocks per page
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
Cc: Christoph Hellwig <hch@infradead.org>, jfs-discussion@lists.sourceforge.net,
 linux-nvdimm@lists.01.org, Dave Kleikamp <shaggy@kernel.org>,
 "Darrick J . Wong" <darrick.wong@oracle.com>, linux-kernel@vger.kernel.org,
 linux-xfs@vger.kernel.org, Dave Chinner <dchinner@redhat.com>,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, Sep 11, 2020 at 12:47:03AM +0100, Matthew Wilcox (Oracle) wrote:
> Size the uptodate array dynamically to support larger pages in the
> page cache.  With a 64kB page, we're only saving 8 bytes per page today,
> but with a 2MB maximum page size, we'd have to allocate more than 4kB
> per page.  Add a few debugging assertions.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> Reviewed-by: Dave Chinner <dchinner@redhat.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
