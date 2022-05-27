Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 572455358C8
	for <lists+jfs-discussion@lfdr.de>; Fri, 27 May 2022 07:35:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nuSdH-0000CF-Ft; Fri, 27 May 2022 05:35:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+4b38f75a90640a87185b+6851+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1nuSdF-0000C9-GF
 for jfs-discussion@lists.sourceforge.net; Fri, 27 May 2022 05:35:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IhpncNkSVwNW8djKD1CtCOTMAlu1Jlslv5PWKDVJ7BI=; b=GYN9jkGQSpzGsP21jHbRdkoauH
 NOqtZXKdTieKwEjZ5HcxEjzOSmqfb4USZC9EQM8kQZpd0OQCZr/h+za2o0geFiNjMWPQbHX80NivG
 JFz3e9u4u8JBfviZz6Ia5BtEx1VgFj3jIcAzVP5+zBX7hMhiyqviVDyDXADAy65qWwgc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IhpncNkSVwNW8djKD1CtCOTMAlu1Jlslv5PWKDVJ7BI=; b=f0yE9nZX9AGxkHVffrNzV21ndl
 HdW9B9/cN2oqvuRsc47KDq5f3Xq78EJhMwm059Bfsx0ljrU2e9A8W4i77pwwLjVIqD1dAB0uL0Loo
 KaXnO4zRdy33ezghqojBFU4NeHWv8NPFzLof+hLhMyh4gU5wE0lX8hqKeXEUPxVRyeIg=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuSdA-003tad-C7
 for jfs-discussion@lists.sourceforge.net; Fri, 27 May 2022 05:35:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=IhpncNkSVwNW8djKD1CtCOTMAlu1Jlslv5PWKDVJ7BI=; b=Iu+5xSdnHdFtNCcbjSscGyPTk1
 5RQBLAm3XnpIf86YaLwLEgzWD/TiACu/tqudFkEagTJLA0JSuyRLva7dQpM5eQno88iXlQBUTdCU6
 LQcWVhfTgTPI7zVKWnGKa7z5+zcxiL1k8d0Oh9MezzkONY9DI5vLlo48pkn+EiyL9b1RnhsyoBPQ2
 rA4b7uWeeIeeivJvVxIqeCS/co7zlxuFwuYFUPc6UKyyPtbUgub8pEdzmrDfnDfF8MbrNG+cfJYa/
 dYyXwS/peNYUjIquKpd2pu/DSSg43RzLemJGskAplu7eshfWMw3UOzTwgL/4b3g1J7YaHXNasuuoM
 ZRHZiHRg==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nuScx-00GgJo-6n; Fri, 27 May 2022 05:35:11 +0000
Date: Thu, 26 May 2022 22:35:11 -0700
From: Christoph Hellwig <hch@infradead.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <YpBjD4Y7su+GVSkX@infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
 <20220526192910.357055-2-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220526192910.357055-2-willy@infradead.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, May 26, 2022 at 08:29:02PM +0100,
 Matthew Wilcox (Oracle)
 wrote: > Al's patch. > > Signed-off-by: Matthew Wilcox (Oracle)
 <willy@infradead.org>
 Hmm, that is a bit of a weird changelog.. > /* for data sync or sync, we
 need sync completion processing */ > - if (iocb->ki_flags & IOCB_DSYNC) >
 + if (iocb->ki_flags & IOCB_DSYNC && > + !(dio_flags & IOMAP_DIO_NOSYNC))
 > dio->flags |= IOMAP [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nuSdA-003tad-C7
Subject: Re: [Jfs-discussion] [RFC PATCH 1/9] IOMAP_DIO_NOSYNC
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

On Thu, May 26, 2022 at 08:29:02PM +0100, Matthew Wilcox (Oracle) wrote:
> Al's patch.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

Hmm, that is a bit of a weird changelog..

>  		/* for data sync or sync, we need sync completion processing */
> -		if (iocb->ki_flags & IOCB_DSYNC)
> +		if (iocb->ki_flags & IOCB_DSYNC &&
> +		    !(dio_flags & IOMAP_DIO_NOSYNC))
>  			dio->flags |= IOMAP_DIO_NEED_SYNC;
>  
>  		/*

I think we also need to skip the setting of IOMAP_DIO_WRITE_FUA below
(or find a way to communicate back to the that FUA was used, which
seems way more complicated)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
