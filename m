Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E76154422D
	for <lists+jfs-discussion@lfdr.de>; Thu,  9 Jun 2022 05:55:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nz9Fq-0000Nk-4c; Thu, 09 Jun 2022 03:54:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hch@lst.de>) id 1nz9Fn-0000Ne-2s
 for jfs-discussion@lists.sourceforge.net; Thu, 09 Jun 2022 03:54:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+vUac8OuJKkYNa/J+tWrhcrfp1Pm+KPeE4o7xnpqQcg=; b=S7XvqjzYaXafn0xxbwxZBTO5KP
 nEhfWJ6x9rHnO5VGgHorBd3pinTfAtUGGLw7RbjJwItHXairlj0lCCPEw+6DmfcMGASTNJlJgdfrO
 viKNcW9bx7t5igABF7DMGdr87d2W44VxKBNFC8G4RG7bb3GQMT0XabUjeKI0fsYsD45w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+vUac8OuJKkYNa/J+tWrhcrfp1Pm+KPeE4o7xnpqQcg=; b=Vo3yGQt6Nzvlq9MoDUQ8fHDC3O
 owxi/SFc9KB9xeRM+dsBTPvjtS8HgJLb6LFbfBfnYw9qOqcqXfBvXjZFqDEmle7HxPWk8JJ+NL92T
 nY6qhdTTffeFiRpAvqkp420VMm3Ry4Qg+1miXlZIshmU6yD8zbw6QqYl7Wq9LZEXIdaE=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nz9Fj-0006qp-9L
 for jfs-discussion@lists.sourceforge.net; Thu, 09 Jun 2022 03:54:38 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id AF07268B05; Thu,  9 Jun 2022 05:54:19 +0200 (CEST)
Date: Thu, 9 Jun 2022 05:54:19 +0200
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20220609035419.GA31288@lst.de>
References: <20220608150451.1432388-1-hch@lst.de>
 <20220608150451.1432388-2-hch@lst.de> <YqDQ31eEWR4fRopC@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YqDQ31eEWR4fRopC@casper.infradead.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jun 08, 2022 at 05:39:59PM +0100,
 Matthew Wilcox wrote:
 > On Wed, Jun 08, 2022 at 05:04:47PM +0200, Christoph Hellwig wrote: > >
 @@ -551,7 +548,8 @@ static int parse_options(char *options, str [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1nz9Fj-0006qp-9L
Subject: Re: [Jfs-discussion] [PATCH 1/5] ext2: remove nobh support
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, linux-ext4@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Jun 08, 2022 at 05:39:59PM +0100, Matthew Wilcox wrote:
> On Wed, Jun 08, 2022 at 05:04:47PM +0200, Christoph Hellwig wrote:
> > @@ -551,7 +548,8 @@ static int parse_options(char *options, struct super_block *sb,
> >  			clear_opt (opts->s_mount_opt, OLDALLOC);
> >  			break;
> >  		case Opt_nobh:
> > -			set_opt (opts->s_mount_opt, NOBH);
> > +			ext2_msg(sb, KERN_INFO,
> > +				"nobh option not supported");
> >  			break;
> 
> This is the only part I wonder about.  Should we just silently accept
> the nobh option instead of emitting a message?

That is how ext2 handles other ignores messages.  Note that it still
accepts the option, it just prints a short line in dmesg.

> Also, is it time to start emitting a message for nfs' intr option?  ;-)

Talk to the nfs folks..


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
