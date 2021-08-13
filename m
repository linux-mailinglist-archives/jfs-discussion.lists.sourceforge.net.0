Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FEA3EB641
	for <lists+jfs-discussion@lfdr.de>; Fri, 13 Aug 2021 15:48:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mEXY4-0003OL-AH; Fri, 13 Aug 2021 13:48:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jack@suse.cz>)
 id 1mEXY2-0003Nr-Fp; Fri, 13 Aug 2021 13:48:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iKfxhwub3oLTOa/l2On4u32rCTa2b379k/9DNB6qAU0=; b=dI0ebQExAqzsmlrlePOu9n3OCb
 TdmK3kXrlJY7BslJoJFUt+LKOhnvzC1PPSgnqQG8nOqcEqqXoddE322z8mdenl1xCwA9i/AQ9ylzz
 R7Icv26hDWZxvALD1SI1yTCbjtt0AYRU1ElORE86ZltM+nUmRej/c9l83LyAP75a/YMw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iKfxhwub3oLTOa/l2On4u32rCTa2b379k/9DNB6qAU0=; b=E2GszlOsMwDSHHGHDdZnQJGeqH
 WG/qVvlNEFhSPdd0BkstztMMIKepIky3Q0y86ITjmE1/664UPdZsG8AQuaDxMpAIBbRihtuQ3fRt8
 HpgvRdZQRD8d95+S16dxYiC1dIBZXe596PLY9o6QmxyMWvr1k5X+SiEBL1FNj/+SEHsk=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mEXY0-00058C-F8; Fri, 13 Aug 2021 13:48:34 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id D61AE1FFC4;
 Fri, 13 Aug 2021 13:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1628862502; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iKfxhwub3oLTOa/l2On4u32rCTa2b379k/9DNB6qAU0=;
 b=Z8uS515S7zGDIuGZKjdGQnOGi1B1NMkvn5EMA+l5RfMfD16SG+wM9Mm19p+1gipU7UNAHX
 0E1CJ40H6H/zsQSY2HDwFUHjF2rqaZ5HB9V3rjis6qJb/e0Pz6SehsbBqLGTKBNap1mO4r
 qDyFX3gpOxFN0s2mLPgjWuzgZ7EINj0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1628862502;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iKfxhwub3oLTOa/l2On4u32rCTa2b379k/9DNB6qAU0=;
 b=zyI2xYTl44lkAN35E0504dtH/sg3z277p6lXJScR58eQIKfhnvpgRsIr1Y6nFxZ5yCYNkB
 DAkXUUrU1WgUfMAg==
Received: from quack2.suse.cz (jack.udp.ovpn1.prg.suse.de [10.100.224.230])
 by relay2.suse.de (Postfix) with ESMTP id 6A489A3B87;
 Fri, 13 Aug 2021 13:48:22 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id 4587E1E423D; Fri, 13 Aug 2021 15:48:22 +0200 (CEST)
Date: Fri, 13 Aug 2021 15:48:22 +0200
From: Jan Kara <jack@suse.cz>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Message-ID: <20210813134822.GF11955@quack2.suse.cz>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-4-pali@kernel.org>
 <20210812141736.GE14675@quack2.suse.cz>
 <20210812155134.g67ncugjvruos3cy@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210812155134.g67ncugjvruos3cy@pali>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.cz]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mEXY0-00058C-F8
Subject: Re: [Jfs-discussion] [RFC PATCH 03/20] udf: Fix iocharset=utf8
 mount option
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
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Luis de Bethencourt <luisbg@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Anton Altaparmakov <anton@tuxera.com>,
 Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 linux-fsdevel@vger.kernel.org, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Andrew Morton <akpm@linux-foundation.org>,
 Marek =?iso-8859-1?Q?Beh=FAn?= <marek.behun@nic.cz>,
 Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu 12-08-21 17:51:34, Pali Roh=E1r wrote:
> On Thursday 12 August 2021 16:17:36 Jan Kara wrote:
> > On Sun 08-08-21 18:24:36, Pali Roh=E1r wrote:
> > > Currently iocharset=3Dutf8 mount option is broken. To use UTF-8 as io=
charset,
> > > it is required to use utf8 mount option.
> > > =

> > > Fix iocharset=3Dutf8 mount option to use be equivalent to the utf8 mo=
unt
> > > option.
> > > =

> > > If UTF-8 as iocharset is used then s_nls_map is set to NULL. So simpl=
ify
> > > code around, remove UDF_FLAG_NLS_MAP and UDF_FLAG_UTF8 flags as to
> > > distinguish between UTF-8 and non-UTF-8 it is needed just to check if
> > > s_nls_map set to NULL or not.
> > > =

> > > Signed-off-by: Pali Roh=E1r <pali@kernel.org>
> > =

> > Thanks for the cleanup. It looks good. Feel free to add:
> > =

> > Reviewed-by: Jan Kara <jack@suse.cz>
> > =

> > Or should I take this patch through my tree?
> =

> Hello! Patches are just RFC, mostly untested and not ready for merging.
> I will wait for feedback and then I do more testing nad prepare new
> patch series.

OK, FWIW I've also tested the UDF and isofs patches.

								Honza

-- =

Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
