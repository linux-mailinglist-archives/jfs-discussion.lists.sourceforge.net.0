Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA87265985
	for <lists+jfs-discussion@lfdr.de>; Fri, 11 Sep 2020 08:43:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kGcmI-0008Kr-AN; Fri, 11 Sep 2020 06:43:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+8b03dcf5e621e88c3391+6228+infradead.org+hch@casper.srs.infradead.org>)
 id 1kGcmE-0008Kb-Ps
 for jfs-discussion@lists.sourceforge.net; Fri, 11 Sep 2020 06:43:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aIvY0q20GUY/DyC1n3nmNDnvd2ld2xPPMKNm8jNNfkM=; b=g7d3MFg2TONXre7GNVClZ64qzw
 gMwOTTeuzcYHELJN2bMZSxENB71muxodfiFEB6P/y0V8QQRH/lgvmDdvH2WtrJUv1o9Di7EolgUJC
 bwcZD+tl+XWgDwvSy7hVjK8tYaLTNUL0mbXvXYvLDiUaoswSLB/uTL4l+SBweG4vev8E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aIvY0q20GUY/DyC1n3nmNDnvd2ld2xPPMKNm8jNNfkM=; b=kyQg0h6qFxBUw9vsQbt5WoUqEd
 +5LvAkItlkpJuNZOPg3xDtBQpqDNeUAT6hn1jMKfsRmA5RzKT9jqq+uuJomrnSKxX12jFc8VkxUKA
 JdJeMiNEvncdLa+jdUv1pznEQndmB6wZRUl+XLDwGlzGRtYn0bppEcxW15bQEHZ5v77A=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kGcm8-003fqB-Fm
 for jfs-discussion@lists.sourceforge.net; Fri, 11 Sep 2020 06:43:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=aIvY0q20GUY/DyC1n3nmNDnvd2ld2xPPMKNm8jNNfkM=; b=iOa8WVA07pDrSye4+Sgz/bCdG7
 rG9Wvg4hwkJeg9OyR+jG6wGqjzEWeTJPBPRlulGaPOS8UQZBVL3v+KPzz0WfLKwmrsxExuJ5t5xC5
 g3J0StagGG7heOkmNejJ2RO5a5Kvk0eL9K7O7byeRuioMbN3ZBxYUCJm8k9q6vSg+oLVpkaeIS9T+
 fZf53xjd66KreZwQg9XqEGbThYuwm+YofNf/i+KbJjLceEwM1rLoD+dVeahBKNYDwpYu/LwqinWqA
 hQy5DfAYGwoUs4wZuoGCRTDTlsjSnnTSPgon+3SyLB+AkkNy0/stPaoD3NvES6scv3l3F42l2mz3W
 VscFLl6Q==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kGclq-0007pp-Lt; Fri, 11 Sep 2020 06:42:54 +0000
Date: Fri, 11 Sep 2020 07:42:54 +0100
From: Christoph Hellwig <hch@infradead.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20200911064254.GA24511@infradead.org>
References: <20200910234707.5504-1-willy@infradead.org>
 <20200910234707.5504-10-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200910234707.5504-10-willy@infradead.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lst.de]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kGcm8-003fqB-Fm
Subject: Re: [Jfs-discussion] [PATCH v2 9/9] iomap: Change calling
 convention for zeroing
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
 linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, Sep 11, 2020 at 12:47:07AM +0100, Matthew Wilcox (Oracle) wrote:
> Pass the full length to iomap_zero() and dax_iomap_zero(), and have
> them return how many bytes they actually handled.  This is preparatory
> work for handling THP, although it looks like DAX could actually take
> advantage of it if there's a larger contiguous area.

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
