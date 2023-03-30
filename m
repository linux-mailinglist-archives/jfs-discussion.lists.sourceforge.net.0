Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CF46D0A70
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 17:52:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phuZD-00016O-4l;
	Thu, 30 Mar 2023 15:52:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dsterba@suse.cz>) id 1phuZB-00016I-OD
 for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 15:51:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2yS40KCGRn33M8KOiRBih+sriFcKgmpqdM+Nv90LiDU=; b=nVHapIv6GwCjpAe/65v+uBBQHM
 Oudz58DW2zSoFzEBHVoqHtKsLjyyUepNlv5opP9Y6u/Eoqc2pBlfCc/VEtLU9S78r6FDS7usLDlaq
 hfcON70jHDzdEchiZ2v3iiDymWyowIreq29P2YmY6YwbxeUXeh4xGRJYMWRVXuxPPNu0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2yS40KCGRn33M8KOiRBih+sriFcKgmpqdM+Nv90LiDU=; b=fN5Fl/fGoSnHNEjdcc0P5/1dHS
 8PjQQ0jg+CMQ3cX2DKb7C9MzkxYccp2/IDCmDw3vBzF5gvEfPFEyQPCAjEi/w/q2IQnmyJh/RtpNF
 8oRUwOcPJ+bipwD5Ply13ecxNZKVENkr2nSfAHb1SOEs7aEKb765HFuTVdMYbhi0TCuE=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1phuZ8-009qof-GJ for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 15:51:58 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id E7EC321A44;
 Thu, 30 Mar 2023 15:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1680191504;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2yS40KCGRn33M8KOiRBih+sriFcKgmpqdM+Nv90LiDU=;
 b=MFS5n40yxVAJF9ZO+WaiYvkkpgBDqrv9lgebTzMeE1hI+hm4f7RZcVq/aMPquuCibm4WDb
 LRmREwdLyX3d2H3T+KlqlbYXmXRmouPrPQa2u7HWoHjP/db/A/ksgwv8RGSdw0GsSdscas
 0tyjAoJ2+DXv2pdfoarhmeZnqqeyauQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1680191504;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2yS40KCGRn33M8KOiRBih+sriFcKgmpqdM+Nv90LiDU=;
 b=cRXQrMF8Zho2lVcr5CfxyUDFpcyx+CZ3wYvx/HWOczyJAbF0WSnRlIHHHz5Z2RU/Y1x4fP
 bvQUDtYlWWMz+gDA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 737D31348E;
 Thu, 30 Mar 2023 15:51:44 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id l9JXGxCwJWRXWAAAMHmgww
 (envelope-from <dsterba@suse.cz>); Thu, 30 Mar 2023 15:51:44 +0000
Date: Thu, 30 Mar 2023 17:45:29 +0200
From: David Sterba <dsterba@suse.cz>
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Message-ID: <20230330154529.GS10580@twin.jikos.cz>
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1680172791.git.johannes.thumshirn@wdc.com>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 30, 2023 at 03:43:42AM -0700, Johannes Thumshirn
 wrote: > We have two functions for adding a page to a bio, __bio_add_page()
 which is > used to add a single page to a freshly created bio a [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
X-Headers-End: 1phuZ8-009qof-GJ
Subject: Re: [Jfs-discussion] [PATCH v2 00/19] bio: check return values of
 bio_add_page
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
Reply-To: dsterba@suse.cz
Cc: Jens Axboe <axboe@kernel.dk>, linux-raid@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Andreas Gruenbacher <agruenba@redhat.com>,
 Song Liu <song@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 David Sterba <dsterba@suse.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-btrfs@vger.kernel.org, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Mar 30, 2023 at 03:43:42AM -0700, Johannes Thumshirn wrote:
> We have two functions for adding a page to a bio, __bio_add_page() which is
> used to add a single page to a freshly created bio and bio_add_page() which is
> used to add a page to an existing bio.
> 
> While __bio_add_page() is expected to succeed, bio_add_page() can fail.
> 
> This series converts the callers of bio_add_page() which can easily use
> __bio_add_page() to using it and checks the return of bio_add_page() for
> callers that don't work on a freshly created bio.
> 
> Lastly it marks bio_add_page() as __must_check so we don't have to go again
> and audit all callers.
> 
> Changes to v1:
> - Removed pointless comment pointed out by Willy
> - Changed commit messages pointed out by Damien
> - Colledted Damien's Reviews and Acks
> 
> Johannes Thumshirn (19):

>   btrfs: repair: use __bio_add_page for adding single page
>   btrfs: raid56: use __bio_add_page to add single page

The btrfs patches added to misc-next, thanks.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
