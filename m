Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 853885358DC
	for <lists+jfs-discussion@lfdr.de>; Fri, 27 May 2022 07:44:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nuSlX-0002SS-8n; Fri, 27 May 2022 05:44:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+4b38f75a90640a87185b+6851+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1nuSlW-0002SL-Da
 for jfs-discussion@lists.sourceforge.net; Fri, 27 May 2022 05:44:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EVMWT2Hdj3E5/5rxLxTdp6J40l9tuFSHJ/tM0mvcJHk=; b=ducR2YJsJRDIM6xcme6/2RUksw
 nQb2PqWnY98aQ3Q8hd/zUlgVEcLtvi9PXqEp8E8JnctAhFqb/fp71R2Nuda6GVhA9wdU0cID8EaRJ
 l2Fqpci6QdPUM/Vxz/PM6hluQpCRt4hpx84TUyxFzqwmqRpHK0TkkwXcNk3/E4e7WqUg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EVMWT2Hdj3E5/5rxLxTdp6J40l9tuFSHJ/tM0mvcJHk=; b=aKHr+9dxo8HVD6BscugpWtjCpx
 8b5h6KylTHuQv1gVvf+HbNtYJbRIOv0YNWvYhTbnSI3YSXxhC6tfoHx1ZTDrfgRwCBjLsQ6YdD6mZ
 Irq33gHInHvjw7jiYJv/0vLrreqnFH4FvkMVP5OJpAD2RVL7z1ubdHm9THzSMklOOntM=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuSlS-0007Wr-Vj
 for jfs-discussion@lists.sourceforge.net; Fri, 27 May 2022 05:44:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=EVMWT2Hdj3E5/5rxLxTdp6J40l9tuFSHJ/tM0mvcJHk=; b=xNY7SWS3e9FPDxkkTIrQ4BXpLL
 qFw/Hy8qA3+BBUI2wByadkCJtVK1x0+eaRMHKF6xp6WMLWk02N1kba1gPVNX9Jd7f/4+DQoa1pkBq
 iJ421raX1dhZCRWCyifKD2HG76LifXAEPzwSoh3P49+/YIgtKYtlqHG+pcDxM2rxqsdhI5s3nxk9W
 U6NAkAaTHHhyGlkV6scBE+SXBv66NPWYXXb7I9bCSGfqd/cZ3IYTrGNC1KRDSQljG0Sx2+eTxweOj
 nfTQOD6oc/9phdDCxUtFs1/g7Mb25nY6r6VbnDFdEw4uGKJWbUoAnNnAl1ZbjvHy+BTlXFui9gPyV
 9rVl1I/g==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nuSlL-00GhBW-Cm; Fri, 27 May 2022 05:43:51 +0000
Date: Thu, 26 May 2022 22:43:51 -0700
From: Christoph Hellwig <hch@infradead.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <YpBlF2xbfL2yY98n@infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
 <20220526192910.357055-8-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220526192910.357055-8-willy@infradead.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > static ssize_t jfs_quota_read(struct super_block *sb, int
 type, char *data, > + size_t len, loff_t pos) > { > struct inode *inode =
 sb_dqopt(sb)->files[type]; > + struct address_space *mapping = ino [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nuSlS-0007Wr-Vj
Subject: Re: [Jfs-discussion] [RFC PATCH 7/9] jfs: Read quota through the
 page cache
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
Cc: linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 jfs-discussion@lists.sourceforge.net, "Darrick J . Wong" <djwong@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

>  static ssize_t jfs_quota_read(struct super_block *sb, int type, char *data,
> +			      size_t len, loff_t pos)
>  {
>  	struct inode *inode = sb_dqopt(sb)->files[type];
> +	struct address_space *mapping = inode->i_mapping;
>  	size_t toread;
> +	pgoff_t index;
>  	loff_t i_size = i_size_read(inode);
>  
> +	if (pos > i_size)
>  		return 0;
> +	if (pos + len > i_size)
> +		len = i_size - pos;
>  	toread = len;
> +	index = pos / PAGE_SIZE;
> +
>  	while (toread > 0) {
> +		struct folio *folio = read_mapping_folio(mapping, index, NULL);
> +		size_t tocopy = PAGE_SIZE - offset_in_page(pos);
> +		void *src;
> +
> +		if (IS_ERR(folio))
> +			return PTR_ERR(folio);
> +
> +		src = kmap_local_folio(folio, offset_in_folio(folio, pos));
> +		memcpy(data, src, tocopy);
> +		kunmap_local(src);

It would be great to have a memcpy_from_folio like the existing
memcpy_from_page for this.

> +		folio_put(folio);
>  
>  		toread -= tocopy;
>  		data += tocopy;
> +		pos += tocopy;
> +		index++;
>  	}
>  	return len;

And this whole helper is generic now.  It might be worth to move it
into fs/quota/dquot.c as generic_quota_read.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
