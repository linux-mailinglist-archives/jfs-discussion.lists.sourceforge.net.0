Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAB6788775
	for <lists+jfs-discussion@lfdr.de>; Fri, 25 Aug 2023 14:32:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qZVyc-00036s-1P;
	Fri, 25 Aug 2023 12:31:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1qZVyb-00036j-2q
 for jfs-discussion@lists.sourceforge.net;
 Fri, 25 Aug 2023 12:31:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oa2DiKgqinYHGUlfVabFRaa9lCnvdRWonjhld6TJThM=; b=SnYXBqAiSakpH6k74NJsQs53ug
 Af2t1TQX7JKSCbj7mGyHYQSNAacsTQFKJfXDfid68+eaJeTGqj69Lstt43xqkErF5qmKRgf+U7wfo
 E7pTAWrIUexSmjd3+SOZQwRvcjvzU2TS4onwF6ZIw40cubH+13GuRjNQSEXIV5iG474U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oa2DiKgqinYHGUlfVabFRaa9lCnvdRWonjhld6TJThM=; b=VDMhCONeXAgxK70GHkaK+lbZ2a
 d574D0ZW5pXLnanxUtW6mGQjmEAHQzU6ddoXfWL0iTRo28BYrwtepqs0hy/pUA6TjqhACZNebPa+s
 2fqcjOkJHn05QO5KMJJV2WlPSjOkwedXjCiX23zSVZb0k+sVNLClsKscy5HNLaYVJxCw=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qZVyU-0004IS-R5 for jfs-discussion@lists.sourceforge.net;
 Fri, 25 Aug 2023 12:31:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 423B567AFF;
 Fri, 25 Aug 2023 12:31:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4995C433C8;
 Fri, 25 Aug 2023 12:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1692966692;
 bh=xeeE9OL56szUlQkfE3YZ9y93xazUihAuaZdpblcR+s8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rYxUt/BNCSb8buvXjaAcup2J1SslDw1TyEcVw0oiLcLcsLdknXXkP8H2XqQgoScPa
 1lmK2CmQ2xFjJxsG4hLP6xL0Xmkr8o8Sj/APOKnOq9h9+Rcz9ClQn9PYhms1g07+8X
 xy8GRvz45I+NOyAIUG0dL3a7fT9YvAWMajZd1FIYzSJH/xg8wy3ZXjkDansQY6jvSM
 0LdryvUEWBthmCJ1VEX/OPc6HQzuaRc1gLY7qtH61GajBIXvJ7YpdHiESh0V1ev8yl
 InZHsBWQnm3Ph138e17lvinJpfHew3I4JudLlcv5C8PhY1kz5b+2ZNneMZG3ImGsul
 ACFN3zmFmGZXg==
Date: Fri, 25 Aug 2023 14:31:27 +0200
To: Jan Kara <jack@suse.cz>
Message-ID: <20230825-autark-irrgarten-2e76ee966762@brauner>
References: <20230818123232.2269-1-jack@suse.cz>
 <20230823104857.11437-24-jack@suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230823104857.11437-24-jack@suse.cz>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Aug 23, 2023 at 12:48:35PM +0200, Jan Kara wrote:
 > Convert jfs to use bdev_open_by_dev() and pass the handle around. > > CC:
 Dave Kleikamp <shaggy@kernel.org> > CC: jfs-discussion@lists.sourc [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qZVyU-0004IS-R5
Subject: Re: [Jfs-discussion] [PATCH 24/29] jfs: Convert to
 bdev_open_by_dev()
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
From: Christian Brauner via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christian Brauner <brauner@kernel.org>
Cc: Jens Axboe <axboe@kernel.dk>, Dave Kleikamp <shaggy@kernel.org>,
 jfs-discussion@lists.sourceforge.net, Christoph Hellwig <hch@infradead.org>,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Aug 23, 2023 at 12:48:35PM +0200, Jan Kara wrote:
> Convert jfs to use bdev_open_by_dev() and pass the handle around.
> 
> CC: Dave Kleikamp <shaggy@kernel.org>
> CC: jfs-discussion@lists.sourceforge.net
> Acked-by: Christoph Hellwig <hch@lst.de>
> Acked-by: Dave Kleikamp <dave.kleikamp@oracle.com>
> Signed-off-by: Jan Kara <jack@suse.cz>
> ---

Looks good to me,
Reviewed-by: Christian Brauner <brauner@kernel.org>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
