Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5039A53639D
	for <lists+jfs-discussion@lfdr.de>; Fri, 27 May 2022 15:57:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nuaSc-000119-Cp; Fri, 27 May 2022 13:57:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1nuaSa-00010w-MH
 for jfs-discussion@lists.sourceforge.net; Fri, 27 May 2022 13:56:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rVGNfA2KOKMMKQxHMw7Bl8sMDqhn/iAj5Rbvd+jGcrE=; b=H9cpuw4kVQGOvPeElXisANB0zc
 ZPDJ+gbQHg5tDTJ8CFmCfSmWjWmypcL3uMM+XWU4tXNMobKOWh96fK2DietWFjYODk6u2BuH3ao5w
 UMP4EJX/VYGfRgLcFVi9Ha8gwP3OT64XdKRNPh7q261b2Ym7tkLuvMlkpNU/knKTEkE8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rVGNfA2KOKMMKQxHMw7Bl8sMDqhn/iAj5Rbvd+jGcrE=; b=L5YMI58WHF7f036f91Y7CSC8AC
 IjpF+ZCo78CBi+qC2QZMYG8uEHB3cZJKeaIYy5pafM/4qZtqdsc4Q9TRmFp3qlVor/rRBpqTa6Lb8
 dmobLSQw++gFpYZapKiUr2312+3FoaZdLzrtv7xxBidyKoe59tIWiBKJPgwzCAIGt12Y=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuaSZ-004KnA-0g
 for jfs-discussion@lists.sourceforge.net; Fri, 27 May 2022 13:56:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=rVGNfA2KOKMMKQxHMw7Bl8sMDqhn/iAj5Rbvd+jGcrE=; b=UYhm/b1bVNzPzhbsD47JkMo1vj
 R5iqplgtUNxUSuNc+pCWlQRknQg17DiyAyzTKgQWdU3R6RGllaC1pyYS4ateLvZU5YSXOHH1HC5gu
 UGd+BkkskdbS/2rPIufl5w2djB7D+W92CYmDUFJ60GgSgr0MASrIXe663xZ/AN1cScISusM4bugEx
 yDTrKexJJmI2JUNMCLE7LQY0F0dHGT1rZJyomzkOOUx+3LzbqkVzm8c/H2Mx++M0+EIY90urJsSMm
 jEvHf/6r8ebgeocVmxbFla/lJrpu07EKNZ9LDWevVKuZdGUcQskISEAqywwB5nPH8r/Z1DJgVEn6n
 cW7ceybQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nuaSS-0028gs-Fh; Fri, 27 May 2022 13:56:52 +0000
Date: Fri, 27 May 2022 14:56:52 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <YpDYpHG0cZM9E5lD@casper.infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
 <20220526192910.357055-8-willy@infradead.org>
 <YpBlF2xbfL2yY98n@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YpBlF2xbfL2yY98n@infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, May 26, 2022 at 10:43:51PM -0700, Christoph Hellwig
 wrote: > > static ssize_t jfs_quota_read(struct super_block *sb, int type,
 char *data, > > + size_t len, loff_t pos) > > { > > struct inode [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nuaSZ-004KnA-0g
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
Cc: linux-fsdevel@vger.kernel.org, "Darrick J . Wong" <djwong@kernel.org>,
 jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, May 26, 2022 at 10:43:51PM -0700, Christoph Hellwig wrote:
> >  static ssize_t jfs_quota_read(struct super_block *sb, int type, char *data,
> > +			      size_t len, loff_t pos)
> >  {
> >  	struct inode *inode = sb_dqopt(sb)->files[type];
> > +	struct address_space *mapping = inode->i_mapping;
> >  	size_t toread;
> > +	pgoff_t index;
> >  	loff_t i_size = i_size_read(inode);
> >  
> > +	if (pos > i_size)
> >  		return 0;
> > +	if (pos + len > i_size)
> > +		len = i_size - pos;
> >  	toread = len;
> > +	index = pos / PAGE_SIZE;
> > +
> >  	while (toread > 0) {
> > +		struct folio *folio = read_mapping_folio(mapping, index, NULL);
> > +		size_t tocopy = PAGE_SIZE - offset_in_page(pos);
> > +		void *src;
> > +
> > +		if (IS_ERR(folio))
> > +			return PTR_ERR(folio);
> > +
> > +		src = kmap_local_folio(folio, offset_in_folio(folio, pos));
> > +		memcpy(data, src, tocopy);
> > +		kunmap_local(src);
> 
> It would be great to have a memcpy_from_folio like the existing
> memcpy_from_page for this.

Yes, I agree.  It could copy more than a single page like
zero_user_segments() does.

> > +		folio_put(folio);
> >  
> >  		toread -= tocopy;
> >  		data += tocopy;
> > +		pos += tocopy;
> > +		index++;
> >  	}
> >  	return len;
> 
> And this whole helper is generic now.  It might be worth to move it
> into fs/quota/dquot.c as generic_quota_read.

I was thinking it was filemap_read_kernel(inode, pos, dst, len)
but perhaps both of these things ...


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
