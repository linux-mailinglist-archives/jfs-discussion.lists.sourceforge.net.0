Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F92D3EA656
	for <lists+jfs-discussion@lfdr.de>; Thu, 12 Aug 2021 16:18:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mEBWp-0001HH-PV; Thu, 12 Aug 2021 14:17:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jack@suse.cz>)
 id 1mEBWo-0001Gy-S0; Thu, 12 Aug 2021 14:17:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1LOq+1RQ1bTZ6xSCL5P+LUHz6PeiGtFp6lwo2Lqqi7Q=; b=Bp1XoqJgrbpbGSkqePpr42fSmt
 DWCzWl8emzjz76LIIwvsFcftIlOGQQb/ceHWqd6FbWBcZbkP9a/K2wGMlr9jaKE1iBIw1zIT6MWW2
 +3H0ohxxQhSIIYJYx7oW0elf074crEVXrqScBhe0xuRf4qaE/E1geDHHgf3eBE/Unq2U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1LOq+1RQ1bTZ6xSCL5P+LUHz6PeiGtFp6lwo2Lqqi7Q=; b=YWz49rfukgNxHRiM+mnY4rK3eZ
 rv3GDuvv/Wt6bFdKEwb2gJA0QJqPbexu2Mm6n8Akm9R+w62F0HNVcJ3ajMoAie9c67Ud5z/KWTbNK
 +kXJKtTGcWHfVd2KnvQACS5ESgytPTtyUQWpgr90DJ27IJewNDRyLEod9IP+VnANzmS4=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mEBWk-004BBd-Qa; Thu, 12 Aug 2021 14:17:50 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id 4F2141FF47;
 Thu, 12 Aug 2021 14:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1628777857; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1LOq+1RQ1bTZ6xSCL5P+LUHz6PeiGtFp6lwo2Lqqi7Q=;
 b=SyRasx6BYceomp5A+vWd4xR0dle1B5guJeUWfAt8MXCICkXDRM4Oz3QToHB6VB0i3wuklT
 rD1ODhLj1qp3Gxa/cBNEn2uynbbVSk3bEWm1MvgSMO1+bSW5Vz10g7cH5ayULBga1nLnI0
 F5UXM0ya2H7/DIFqNTn5zZVy+6MCS1k=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1628777857;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1LOq+1RQ1bTZ6xSCL5P+LUHz6PeiGtFp6lwo2Lqqi7Q=;
 b=GnzDUaCqYiTEgMmiYEgvAadtT34kHXqFeZpKyBC6BK2GN55zyPQnlN7MyWkUiuOme/CnH1
 ZhReSiomtDrRUaDw==
Received: from quack2.suse.cz (unknown [10.100.224.230])
 by relay2.suse.de (Postfix) with ESMTP id 6B05DA3F4E;
 Thu, 12 Aug 2021 14:17:36 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id 46CF11F2BA7; Thu, 12 Aug 2021 16:17:36 +0200 (CEST)
Date: Thu, 12 Aug 2021 16:17:36 +0200
From: Jan Kara <jack@suse.cz>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Message-ID: <20210812141736.GE14675@quack2.suse.cz>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-4-pali@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210808162453.1653-4-pali@kernel.org>
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
X-Headers-End: 1mEBWk-004BBd-Qa
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

On Sun 08-08-21 18:24:36, Pali Roh=E1r wrote:
> Currently iocharset=3Dutf8 mount option is broken. To use UTF-8 as iochar=
set,
> it is required to use utf8 mount option.
> =

> Fix iocharset=3Dutf8 mount option to use be equivalent to the utf8 mount
> option.
> =

> If UTF-8 as iocharset is used then s_nls_map is set to NULL. So simplify
> code around, remove UDF_FLAG_NLS_MAP and UDF_FLAG_UTF8 flags as to
> distinguish between UTF-8 and non-UTF-8 it is needed just to check if
> s_nls_map set to NULL or not.
> =

> Signed-off-by: Pali Roh=E1r <pali@kernel.org>

Thanks for the cleanup. It looks good. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

Or should I take this patch through my tree?

								Honza


> ---
>  fs/udf/super.c   | 50 ++++++++++++++++++------------------------------
>  fs/udf/udf_sb.h  |  2 --
>  fs/udf/unicode.c |  4 ++--
>  3 files changed, 21 insertions(+), 35 deletions(-)
> =

> diff --git a/fs/udf/super.c b/fs/udf/super.c
> index 2f83c1204e20..6e8c29107b04 100644
> --- a/fs/udf/super.c
> +++ b/fs/udf/super.c
> @@ -349,10 +349,10 @@ static int udf_show_options(struct seq_file *seq, s=
truct dentry *root)
>  		seq_printf(seq, ",lastblock=3D%u", sbi->s_last_block);
>  	if (sbi->s_anchor !=3D 0)
>  		seq_printf(seq, ",anchor=3D%u", sbi->s_anchor);
> -	if (UDF_QUERY_FLAG(sb, UDF_FLAG_UTF8))
> -		seq_puts(seq, ",utf8");
> -	if (UDF_QUERY_FLAG(sb, UDF_FLAG_NLS_MAP) && sbi->s_nls_map)
> +	if (sbi->s_nls_map)
>  		seq_printf(seq, ",iocharset=3D%s", sbi->s_nls_map->charset);
> +	else
> +		seq_puts(seq, ",iocharset=3Dutf8");
>  =

>  	return 0;
>  }
> @@ -558,19 +558,24 @@ static int udf_parse_options(char *options, struct =
udf_options *uopt,
>  			/* Ignored (never implemented properly) */
>  			break;
>  		case Opt_utf8:
> -			uopt->flags |=3D (1 << UDF_FLAG_UTF8);
> +			if (!remount) {
> +				unload_nls(uopt->nls_map);
> +				uopt->nls_map =3D NULL;
> +			}
>  			break;
>  		case Opt_iocharset:
>  			if (!remount) {
> -				if (uopt->nls_map)
> -					unload_nls(uopt->nls_map);
> -				/*
> -				 * load_nls() failure is handled later in
> -				 * udf_fill_super() after all options are
> -				 * parsed.
> -				 */
> +				unload_nls(uopt->nls_map);
> +				uopt->nls_map =3D NULL;
> +			}
> +			/* When nls_map is not loaded then UTF-8 is used */
> +			if (!remount && strcmp(args[0].from, "utf8") !=3D 0) {
>  				uopt->nls_map =3D load_nls(args[0].from);
> -				uopt->flags |=3D (1 << UDF_FLAG_NLS_MAP);
> +				if (!uopt->nls_map) {
> +					pr_err("iocharset %s not found\n",
> +						args[0].from);
> +					return 0;
> +				}
>  			}
>  			break;
>  		case Opt_uforget:
> @@ -2139,21 +2144,6 @@ static int udf_fill_super(struct super_block *sb, =
void *options, int silent)
>  	if (!udf_parse_options((char *)options, &uopt, false))
>  		goto parse_options_failure;
>  =

> -	if (uopt.flags & (1 << UDF_FLAG_UTF8) &&
> -	    uopt.flags & (1 << UDF_FLAG_NLS_MAP)) {
> -		udf_err(sb, "utf8 cannot be combined with iocharset\n");
> -		goto parse_options_failure;
> -	}
> -	if ((uopt.flags & (1 << UDF_FLAG_NLS_MAP)) && !uopt.nls_map) {
> -		uopt.nls_map =3D load_nls_default();
> -		if (!uopt.nls_map)
> -			uopt.flags &=3D ~(1 << UDF_FLAG_NLS_MAP);
> -		else
> -			udf_debug("Using default NLS map\n");
> -	}
> -	if (!(uopt.flags & (1 << UDF_FLAG_NLS_MAP)))
> -		uopt.flags |=3D (1 << UDF_FLAG_UTF8);
> -
>  	fileset.logicalBlockNum =3D 0xFFFFFFFF;
>  	fileset.partitionReferenceNum =3D 0xFFFF;
>  =

> @@ -2308,8 +2298,7 @@ static int udf_fill_super(struct super_block *sb, v=
oid *options, int silent)
>  error_out:
>  	iput(sbi->s_vat_inode);
>  parse_options_failure:
> -	if (uopt.nls_map)
> -		unload_nls(uopt.nls_map);
> +	unload_nls(uopt.nls_map);
>  	if (lvid_open)
>  		udf_close_lvid(sb);
>  	brelse(sbi->s_lvid_bh);
> @@ -2359,8 +2348,7 @@ static void udf_put_super(struct super_block *sb)
>  	sbi =3D UDF_SB(sb);
>  =

>  	iput(sbi->s_vat_inode);
> -	if (UDF_QUERY_FLAG(sb, UDF_FLAG_NLS_MAP))
> -		unload_nls(sbi->s_nls_map);
> +	unload_nls(sbi->s_nls_map);
>  	if (!sb_rdonly(sb))
>  		udf_close_lvid(sb);
>  	brelse(sbi->s_lvid_bh);
> diff --git a/fs/udf/udf_sb.h b/fs/udf/udf_sb.h
> index 758efe557a19..4fa620543d30 100644
> --- a/fs/udf/udf_sb.h
> +++ b/fs/udf/udf_sb.h
> @@ -20,8 +20,6 @@
>  #define UDF_FLAG_UNDELETE		6
>  #define UDF_FLAG_UNHIDE			7
>  #define UDF_FLAG_VARCONV		8
> -#define UDF_FLAG_NLS_MAP		9
> -#define UDF_FLAG_UTF8			10
>  #define UDF_FLAG_UID_FORGET     11    /* save -1 for uid to disk */
>  #define UDF_FLAG_GID_FORGET     12
>  #define UDF_FLAG_UID_SET	13
> diff --git a/fs/udf/unicode.c b/fs/udf/unicode.c
> index 5fcfa96463eb..622569007b53 100644
> --- a/fs/udf/unicode.c
> +++ b/fs/udf/unicode.c
> @@ -177,7 +177,7 @@ static int udf_name_from_CS0(struct super_block *sb,
>  		return 0;
>  	}
>  =

> -	if (UDF_QUERY_FLAG(sb, UDF_FLAG_NLS_MAP))
> +	if (UDF_SB(sb)->s_nls_map)
>  		conv_f =3D UDF_SB(sb)->s_nls_map->uni2char;
>  	else
>  		conv_f =3D NULL;
> @@ -285,7 +285,7 @@ static int udf_name_to_CS0(struct super_block *sb,
>  	if (ocu_max_len <=3D 0)
>  		return 0;
>  =

> -	if (UDF_QUERY_FLAG(sb, UDF_FLAG_NLS_MAP))
> +	if (UDF_SB(sb)->s_nls_map)
>  		conv_f =3D UDF_SB(sb)->s_nls_map->char2uni;
>  	else
>  		conv_f =3D NULL;
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
