Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBED826590A
	for <lists+jfs-discussion@lfdr.de>; Fri, 11 Sep 2020 08:02:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kGc8l-00017r-UW; Fri, 11 Sep 2020 06:02:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+8b03dcf5e621e88c3391+6228+infradead.org+hch@casper.srs.infradead.org>)
 id 1kGc8e-00017L-NU
 for jfs-discussion@lists.sourceforge.net; Fri, 11 Sep 2020 06:02:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gQphWQCU5VjNrWDqCFqtQ550fk5he6cvU1opUnwp6c8=; b=HUlxUc12stBIQyFqV8i3J6/DC3
 OF5ZPgypXOxawjkzS4B/4dj1nptXuD8UJmZJvhwh/y+njwKpFioM7wSlpejRpksxfFA2OfJ7I/YAS
 g5NYf7DmDrYXtrldBOp3kzfxxHN3AhT/sD3S/JnrFNeINoGJsATKKRuSSWCoOY2OC0sg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gQphWQCU5VjNrWDqCFqtQ550fk5he6cvU1opUnwp6c8=; b=dvhbLcQ6Hif+ebcYZnE/JfxLlO
 rYcW5Zno/ZYSmh7HJEGZlX1Ps6ThomepT0CFFacQYMkZAtilv1azScSE0kcm8kz3d2R3G4gJ16EKO
 e5362TLAF+jFNjPM2TADoDgVC9Gl+ByYw4y2AzG4OygXGMSkMgUYsjyWLgHI+NQkYlis=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kGc8Z-003sQQ-Nt
 for jfs-discussion@lists.sourceforge.net; Fri, 11 Sep 2020 06:02:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=gQphWQCU5VjNrWDqCFqtQ550fk5he6cvU1opUnwp6c8=; b=TtW8Tw/Awwjlz9gH0OBnuKs1qy
 7ZLv4Qt3qKqoCfvga77I2/h5nvdFdHI9hpnYnu3Z9U0gdWLfS1wccy9ndxj/OGxCCy/w3dZm2/NqO
 VBRvwCWm9c4caIpKq4MW1M7BaX3GTDleILIrKUDRZ0AcDLXqQF5ylxpch3CePtqA4upeRwm5bOsLk
 KZDpL5J5/9rWDAwBp4mxpxL/QZmDvVgkeWDKlKnz9xZX3nOsZJ9I5AHk24TzOsfwvm6bR1TOM+lqP
 MOvya4XR6dE4YqtiRtFIdMEbjVNKiKFuCaoVeooODCme9uI8WHd++HAXBJSwGBh9hrkT1UoibW9nQ
 G7J6otAA==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kGbjv-00040M-0T; Fri, 11 Sep 2020 05:36:51 +0000
Date: Fri, 11 Sep 2020 06:36:50 +0100
From: Christoph Hellwig <hch@infradead.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20200911053650.GB15114@infradead.org>
References: <20200910234707.5504-1-willy@infradead.org>
 <20200910234707.5504-7-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200910234707.5504-7-willy@infradead.org>
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
X-Headers-End: 1kGc8Z-003sQQ-Nt
Subject: Re: [Jfs-discussion] [PATCH v2 6/9] iomap: Convert read_count to
 read_bytes_pending
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

On Fri, Sep 11, 2020 at 12:47:04AM +0100, Matthew Wilcox (Oracle) wrote:
> Instead of counting bio segments, count the number of bytes submitted.
> This insulates us from the block layer's definition of what a 'same page'
> is, which is not necessarily clear once THPs are involved.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
