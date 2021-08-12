Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B39CD3EA657
	for <lists+jfs-discussion@lfdr.de>; Thu, 12 Aug 2021 16:18:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mEBXM-0005Fl-5f; Thu, 12 Aug 2021 14:18:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jack@suse.cz>)
 id 1mEBXK-0005FZ-PO; Thu, 12 Aug 2021 14:18:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QR0JcWHj1RZ/z/tKtiOSkgL8u32xy5MinF2YRbQktU0=; b=E6ycHqCA2tRFyBPwckTwU5pjck
 G32lk+JttSF1VIqXjBljb+kKBnsP/m8HGcSUSUch8e7o+ttQ5A72/x7Pq7AuVYikq5tNlpUEndSCR
 BI4+xPWwAOWlZ4LFews9zL8qFXdMc/zGTN7ptyNB5oCuDEMxaguG1vFp3SwqRqhfKV6s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QR0JcWHj1RZ/z/tKtiOSkgL8u32xy5MinF2YRbQktU0=; b=NdAc+MzVKUwctLTeqd6hLSDA40
 2sFDdNM9QLPWpT4jJnzom8YgCga+Mf7wWidyqa52qfTkix1AtMVTDRmEoLVEnt68PQ5lTVMqe8QvS
 bdARXdbyIwY2rkE9OrJHEsLgeRcspqfU+x/dgnpQWUEYuTF0E2TwR+QfLkyYgvc9rhfU=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mEBXG-004BD7-5M; Thu, 12 Aug 2021 14:18:21 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out1.suse.de (Postfix) with ESMTP id EC51F221FB;
 Thu, 12 Aug 2021 14:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1628777891; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QR0JcWHj1RZ/z/tKtiOSkgL8u32xy5MinF2YRbQktU0=;
 b=izsYXAnlwq0cGmtUOspRecEZb1InAmamvsaIRayjGFS8M/0ZUexNZY+S1duUgzZ9cgRU2F
 lMB4RgYEhtYLESL387fUGSs0Gdl+5Zl7dXAu8UfhNUpeilQL4NbxuVecsgPFCfTxnpaEj/
 tP+nvArHEd0UO6nsAqx6WPY5UTvfctk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1628777891;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QR0JcWHj1RZ/z/tKtiOSkgL8u32xy5MinF2YRbQktU0=;
 b=lZX0QR0k/mtDnK8yXBjujF70H9W/NQkcE9hOMI+uSGHq9AV0G1WW8UCC17IilVLgrlIH8w
 vC6oiDC00FnWprDQ==
Received: from quack2.suse.cz (unknown [10.100.224.230])
 by relay2.suse.de (Postfix) with ESMTP id D7944A3F4E;
 Thu, 12 Aug 2021 14:18:11 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id BEA981F2BA7; Thu, 12 Aug 2021 16:18:11 +0200 (CEST)
Date: Thu, 12 Aug 2021 16:18:11 +0200
From: Jan Kara <jack@suse.cz>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Message-ID: <20210812141811.GF14675@quack2.suse.cz>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-5-pali@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210808162453.1653-5-pali@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mEBXG-004BD7-5M
Subject: Re: [Jfs-discussion] [RFC PATCH 04/20] isofs: joliet: Fix
 iocharset=utf8 mount option
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

On Sun 08-08-21 18:24:37, Pali Roh=E1r wrote:
> Currently iocharset=3Dutf8 mount option is broken. To use UTF-8 as iochar=
set,
> it is required to use utf8 mount option.
> =

> Fix iocharset=3Dutf8 mount option to use be equivalent to the utf8 mount
> option.
> =

> If UTF-8 as iocharset is used then s_nls_iocharset is set to NULL. So
> simplify code around, remove s_utf8 field as to distinguish between UTF-8
> and non-UTF-8 it is needed just to check if s_nls_iocharset is set to NULL
> or not.
> =

> Signed-off-by: Pali Roh=E1r <pali@kernel.org>

Looks good to me. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

I can also take this patch through my tree if you want.

								Honza

> ---
>  fs/isofs/inode.c  | 27 +++++++++++++--------------
>  fs/isofs/isofs.h  |  1 -
>  fs/isofs/joliet.c |  4 +---
>  3 files changed, 14 insertions(+), 18 deletions(-)
> =

> diff --git a/fs/isofs/inode.c b/fs/isofs/inode.c
> index 21edc423b79f..678e2c51b855 100644
> --- a/fs/isofs/inode.c
> +++ b/fs/isofs/inode.c
> @@ -155,7 +155,6 @@ struct iso9660_options{
>  	unsigned int overriderockperm:1;
>  	unsigned int uid_set:1;
>  	unsigned int gid_set:1;
> -	unsigned int utf8:1;
>  	unsigned char map;
>  	unsigned char check;
>  	unsigned int blocksize;
> @@ -356,7 +355,6 @@ static int parse_options(char *options, struct iso966=
0_options *popt)
>  	popt->gid =3D GLOBAL_ROOT_GID;
>  	popt->uid =3D GLOBAL_ROOT_UID;
>  	popt->iocharset =3D NULL;
> -	popt->utf8 =3D 0;
>  	popt->overriderockperm =3D 0;
>  	popt->session=3D-1;
>  	popt->sbsector=3D-1;
> @@ -389,10 +387,13 @@ static int parse_options(char *options, struct iso9=
660_options *popt)
>  		case Opt_cruft:
>  			popt->cruft =3D 1;
>  			break;
> +#ifdef CONFIG_JOLIET
>  		case Opt_utf8:
> -			popt->utf8 =3D 1;
> +			kfree(popt->iocharset);
> +			popt->iocharset =3D kstrdup("utf8", GFP_KERNEL);
> +			if (!popt->iocharset)
> +				return 0;
>  			break;
> -#ifdef CONFIG_JOLIET
>  		case Opt_iocharset:
>  			kfree(popt->iocharset);
>  			popt->iocharset =3D match_strdup(&args[0]);
> @@ -495,7 +496,6 @@ static int isofs_show_options(struct seq_file *m, str=
uct dentry *root)
>  	if (sbi->s_nocompress)		seq_puts(m, ",nocompress");
>  	if (sbi->s_overriderockperm)	seq_puts(m, ",overriderockperm");
>  	if (sbi->s_showassoc)		seq_puts(m, ",showassoc");
> -	if (sbi->s_utf8)		seq_puts(m, ",utf8");
>  =

>  	if (sbi->s_check)		seq_printf(m, ",check=3D%c", sbi->s_check);
>  	if (sbi->s_mapping)		seq_printf(m, ",map=3D%c", sbi->s_mapping);
> @@ -518,9 +518,10 @@ static int isofs_show_options(struct seq_file *m, st=
ruct dentry *root)
>  		seq_printf(m, ",fmode=3D%o", sbi->s_fmode);
>  =

>  #ifdef CONFIG_JOLIET
> -	if (sbi->s_nls_iocharset &&
> -	    strcmp(sbi->s_nls_iocharset->charset, CONFIG_NLS_DEFAULT) !=3D 0)
> +	if (sbi->s_nls_iocharset)
>  		seq_printf(m, ",iocharset=3D%s", sbi->s_nls_iocharset->charset);
> +	else
> +		seq_puts(m, ",iocharset=3Dutf8");
>  #endif
>  	return 0;
>  }
> @@ -863,14 +864,13 @@ static int isofs_fill_super(struct super_block *s, =
void *data, int silent)
>  	sbi->s_nls_iocharset =3D NULL;
>  =

>  #ifdef CONFIG_JOLIET
> -	if (joliet_level && opt.utf8 =3D=3D 0) {
> +	if (joliet_level) {
>  		char *p =3D opt.iocharset ? opt.iocharset : CONFIG_NLS_DEFAULT;
> -		sbi->s_nls_iocharset =3D load_nls(p);
> -		if (! sbi->s_nls_iocharset) {
> -			/* Fail only if explicit charset specified */
> -			if (opt.iocharset)
> +		if (strcmp(p, "utf8") !=3D 0) {
> +			sbi->s_nls_iocharset =3D opt.iocharset ?
> +				load_nls(opt.iocharset) : load_nls_default();
> +			if (!sbi->s_nls_iocharset)
>  				goto out_freesbi;
> -			sbi->s_nls_iocharset =3D load_nls_default();
>  		}
>  	}
>  #endif
> @@ -886,7 +886,6 @@ static int isofs_fill_super(struct super_block *s, vo=
id *data, int silent)
>  	sbi->s_gid =3D opt.gid;
>  	sbi->s_uid_set =3D opt.uid_set;
>  	sbi->s_gid_set =3D opt.gid_set;
> -	sbi->s_utf8 =3D opt.utf8;
>  	sbi->s_nocompress =3D opt.nocompress;
>  	sbi->s_overriderockperm =3D opt.overriderockperm;
>  	/*
> diff --git a/fs/isofs/isofs.h b/fs/isofs/isofs.h
> index 055ec6c586f7..dcdc191ed183 100644
> --- a/fs/isofs/isofs.h
> +++ b/fs/isofs/isofs.h
> @@ -44,7 +44,6 @@ struct isofs_sb_info {
>  	unsigned char s_session;
>  	unsigned int  s_high_sierra:1;
>  	unsigned int  s_rock:2;
> -	unsigned int  s_utf8:1;
>  	unsigned int  s_cruft:1; /* Broken disks with high byte of length
>  				  * containing junk */
>  	unsigned int  s_nocompress:1;
> diff --git a/fs/isofs/joliet.c b/fs/isofs/joliet.c
> index be8b6a9d0b92..c0f04a1e7f69 100644
> --- a/fs/isofs/joliet.c
> +++ b/fs/isofs/joliet.c
> @@ -41,14 +41,12 @@ uni16_to_x8(unsigned char *ascii, __be16 *uni, int le=
n, struct nls_table *nls)
>  int
>  get_joliet_filename(struct iso_directory_record * de, unsigned char *out=
name, struct inode * inode)
>  {
> -	unsigned char utf8;
>  	struct nls_table *nls;
>  	unsigned char len =3D 0;
>  =

> -	utf8 =3D ISOFS_SB(inode->i_sb)->s_utf8;
>  	nls =3D ISOFS_SB(inode->i_sb)->s_nls_iocharset;
>  =

> -	if (utf8) {
> +	if (!nls) {
>  		len =3D utf16s_to_utf8s((const wchar_t *) de->name,
>  				de->name_len[0] >> 1, UTF16_BIG_ENDIAN,
>  				outname, PAGE_SIZE);
> -- =

> 2.20.1
> =

-- =

Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
