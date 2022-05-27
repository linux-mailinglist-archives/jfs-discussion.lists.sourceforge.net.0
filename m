Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0E25358DF
	for <lists+jfs-discussion@lfdr.de>; Fri, 27 May 2022 07:46:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nuSnr-0002VW-GB; Fri, 27 May 2022 05:46:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+4b38f75a90640a87185b+6851+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1nuSnp-0002VP-LO
 for jfs-discussion@lists.sourceforge.net; Fri, 27 May 2022 05:46:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VDmChBWljedoEkok5R0TCyduHzHyVq8JxgfKEHTfMDU=; b=DJbbptRQXoFebNGOcPha/NT5J9
 jJUo8pazfBa5LHxZEgKsKbneg09i9BSKIXB3en2G7dCjM8LKC86SoZMkzxlDc/wuf74ueb+rBLDiA
 aSWUKDLR94mH7Sqcq7jtXKKhnflFhkOYtW8CSwFaLQUmoSaOZwgpVFYVtiDxABOhHEBU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VDmChBWljedoEkok5R0TCyduHzHyVq8JxgfKEHTfMDU=; b=Q4ck9iS6RMFwNrVZccLTfxqjDk
 bVRR6e3i5hTfCcqnB8BOpgUfLRn79frc2IjXALweXbao4a7yTpRnPsfI72TBHEvtN3uovMFnroyhH
 sVzRy5cbIODhaQoHEYqNDEvKKJzFBeD9lS24fBfrx6h+Zl75sBQO1e4iQJiWgodYeqvo=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuSno-0007c1-1U
 for jfs-discussion@lists.sourceforge.net; Fri, 27 May 2022 05:46:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=VDmChBWljedoEkok5R0TCyduHzHyVq8JxgfKEHTfMDU=; b=Ba72R98mKRQz3+YlxvTHsh9Gd9
 OgbsEJiZ3v+xWXfPrBc3S0v/CgbZsMdn/HkK49qZmODsi1xIPmQPyZd7b6noR+T5lNkQIzPUgTQN3
 RbeQGSXCj365K+RWZzcjqO6k7DA5z01Mi5nipbD1WCfFplsnIl0GCiuP7CmMNt73/9jWflBdCLiFG
 8u8jBscvrDlxTrDBTJGWHO2qZZxpL1I5oj57C8Q023xxT581nt6wbBO7f2Yd+kjIR+vQYL0ycO5NJ
 KpIb+HqRGw7AVBo4uXoOX6BmgIfCGMfJQ9d0V3HspUBSld6Wxo+2kj8pMN0Ofb5M/f8D5RTy1N2i3
 QZu3NfQw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nuSnj-00GhRg-Ro; Fri, 27 May 2022 05:46:19 +0000
Date: Thu, 26 May 2022 22:46:19 -0700
From: Christoph Hellwig <hch@infradead.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <YpBlq+Tvp9dFuK5d@infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
 <20220526192910.357055-9-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220526192910.357055-9-willy@infradead.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, May 26, 2022 at 08:29:09PM +0100,
 Matthew Wilcox (Oracle)
 wrote: > + folio = __filemap_get_folio(mapping, index, > + FGP_CREAT|FGP_WRITE,
 GFP_KERNEL); missing spaces. > + folio_lock(folio);
 > + dst = kmap_local_folio(folio,
 offset_in_folio(folio, pos)); > + memcpy(dst, data, tocopy); 
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
X-Headers-End: 1nuSno-0007c1-1U
Subject: Re: [Jfs-discussion] [RFC PATCH 8/9] jfs: Write quota through the
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

On Thu, May 26, 2022 at 08:29:09PM +0100, Matthew Wilcox (Oracle) wrote:
> +			folio = __filemap_get_folio(mapping, index,
> +					FGP_CREAT|FGP_WRITE, GFP_KERNEL);

missing spaces.

> +		folio_lock(folio);
> +		dst = kmap_local_folio(folio, offset_in_folio(folio, pos));
> +		memcpy(dst, data, tocopy);

mecpy_to_folio would be nice here.

And gain the helper seems generic, but unlike the read side modern
file system often want some kind of journaling.  Not sure if it is worth
sharing it just for ext2 and jfs.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
