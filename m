Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7074663D20
	for <lists+jfs-discussion@lfdr.de>; Tue, 10 Jan 2023 10:42:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pFB93-00073P-I2;
	Tue, 10 Jan 2023 09:42:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hirofumi@parknet.co.jp>) id 1pFB91-00073E-BJ;
 Tue, 10 Jan 2023 09:42:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/N8BBePM0Hg7XKVrHO/rDQnvjJizHOglcUDCZ0wzVLQ=; b=SJ36yPo0BggIUdJV5k5pmoCN07
 udFZ5NDFcGbmd8KUrhYw1SJNxBsdNGIyAEUORys+OhTY92WL1nzsToqUEIDEqGqpF11z81cxgvMJg
 HALV9ZzyeDEisJ2X8aYpUHT+1vOf8bIhhB/OpsSik2JK62NH21/lzIOo/1gHvWODqJpg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/N8BBePM0Hg7XKVrHO/rDQnvjJizHOglcUDCZ0wzVLQ=; b=BDMlIA5HIsu3K9NgN2U+672VSe
 oTgtw37XK93yz/q8z6fCdQvji1cUbBVddJKQ3HwuCrq0J4TgcfjAj7FjGPmWyYLcb0sCX4dojPMA4
 I2h77F/3tYk1FthXVSyrHh9b+u3WZDyOfGcRdD+x9ShJX9vaM+y34obxrtPSAWKwbb28=;
Received: from mail.parknet.co.jp ([210.171.160.6])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1pFB8w-00Cgew-T5; Tue, 10 Jan 2023 09:42:11 +0000
Received: from ibmpc.myhome.or.jp (server.parknet.ne.jp [210.171.168.39])
 by mail.parknet.co.jp (Postfix) with ESMTPSA id DBC882055F9C;
 Tue, 10 Jan 2023 18:17:09 +0900 (JST)
Received: from devron.myhome.or.jp (foobar@devron.myhome.or.jp [192.168.0.3])
 by ibmpc.myhome.or.jp (8.17.1.9/8.17.1.9/Debian-1) with ESMTPS id
 30A9H8X3104114
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Tue, 10 Jan 2023 18:17:09 +0900
Received: from devron.myhome.or.jp (foobar@localhost [127.0.0.1])
 by devron.myhome.or.jp (8.17.1.9/8.17.1.9/Debian-1) with ESMTPS id
 30A9H8gj370581
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Tue, 10 Jan 2023 18:17:08 +0900
Received: (from hirofumi@localhost)
 by devron.myhome.or.jp (8.17.1.9/8.17.1.9/Submit) id 30A9H6Hl370575;
 Tue, 10 Jan 2023 18:17:06 +0900
From: OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
In-Reply-To: <20221226142150.13324-2-pali@kernel.org> ("Pali
 =?iso-8859-1?Q?Roh=E1r=22's?= message
 of "Mon, 26 Dec 2022 15:21:33 +0100")
References: <20221226142150.13324-1-pali@kernel.org>
 <20221226142150.13324-2-pali@kernel.org>
Date: Tue, 10 Jan 2023 18:17:05 +0900
Message-ID: <874jsyvje6.fsf@mail.parknet.co.jp>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Pali Rohár <pali@kernel.org> writes: > Currently iocharset=utf8
    mount option is broken and error is printed to > dmesg when it is used. To
    use UTF-8 as iocharset, it is required to use > utf8=1 mount option. > >
   Fix iocharset=utf8 mount [...] 
 
 Content analysis details:   (-0.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [210.171.160.6 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1pFB8w-00Cgew-T5
Subject: Re: [Jfs-discussion] [RFC PATCH v2 01/18] fat: Fix iocharset=utf8
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Pavel Machek <pavel@ucw.cz>,
 linux-cifs@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Salah Triki <salah.triki@gmail.com>, Shyam Prasad N <sprasad@microsoft.com>,
 Tom Talpey <tom@talpey.com>, Kari Argillander <kari.argillander@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anton Altaparmakov <anton@tuxera.com>, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Luis de Bethencourt <luisbg@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 Paulo Alcantara <pc@cjr.nz>, linux-kernel@vger.kernel.org,
 Ronnie Sahlberg <lsahlber@redhat.com>, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Pali Roh=E1r <pali@kernel.org> writes:

> Currently iocharset=3Dutf8 mount option is broken and error is printed to
> dmesg when it is used. To use UTF-8 as iocharset, it is required to use
> utf8=3D1 mount option.
>
> Fix iocharset=3Dutf8 mount option to use be equivalent to the utf8=3D1 mo=
unt
> option and remove printing error from dmesg.

[...]

> -
> -	There is also an option of doing UTF-8 translations
> -	with the utf8 option.
> -
> -.. note:: ``iocharset=3Dutf8`` is not recommended. If unsure, you should=
 consider
> -	  the utf8 option instead.
> +	**utf8** is supported too and recommended to use.
>  =

>  **utf8=3D<bool>**
> -	UTF-8 is the filesystem safe version of Unicode that
> -	is used by the console. It can be enabled or disabled
> -	for the filesystem with this option.
> -	If 'uni_xlate' gets set, UTF-8 gets disabled.
> -	By default, FAT_DEFAULT_UTF8 setting is used.
> +	Alias for ``iocharset=3Dutf8`` mount option.
>  =

>  **uni_xlate=3D<bool>**
>  	Translate unhandled Unicode characters to special
> diff --git a/fs/fat/Kconfig b/fs/fat/Kconfig
> index 238cc55f84c4..e98aaa3bb55b 100644
> --- a/fs/fat/Kconfig
> +++ b/fs/fat/Kconfig
> @@ -93,29 +93,12 @@ config FAT_DEFAULT_IOCHARSET
>  	  like FAT to use. It should probably match the character set
>  	  that most of your FAT filesystems use, and can be overridden
>  	  with the "iocharset" mount option for FAT filesystems.
> -	  Note that "utf8" is not recommended for FAT filesystems.
> -	  If unsure, you shouldn't set "utf8" here - select the next option
> -	  instead if you would like to use UTF-8 encoded file names by default.
> +	  "utf8" is supported too and recommended to use.

This patch fixes the issue of utf-8 partially only. I think we can't
still recommend only partially working one.

[...]

> -	opts->utf8 =3D IS_ENABLED(CONFIG_FAT_DEFAULT_UTF8) && is_vfat;
> -
>  	if (!options)
>  		goto out;
>  =

> @@ -1318,10 +1316,14 @@ static int parse_options(struct super_block *sb, =
char *options, int is_vfat,
>  					| VFAT_SFN_CREATE_WIN95;
>  			break;
>  		case Opt_utf8_no:		/* 0 or no or false */
> -			opts->utf8 =3D 0;
> +			fat_reset_iocharset(opts);

This changes the behavior of "iocharset=3Diso8859-1,utf8=3Dno" for
example. Do we need this user visible change here?

>  			break;
>  		case Opt_utf8_yes:		/* empty or 1 or yes or true */
> -			opts->utf8 =3D 1;
> +			fat_reset_iocharset(opts);
> +			iocharset =3D kstrdup("utf8", GFP_KERNEL);
> +			if (!iocharset)
> +				return -ENOMEM;
> +			opts->iocharset =3D iocharset;
>  			break;
>  		case Opt_uni_xl_no:		/* 0 or no or false */
>  			opts->unicode_xlate =3D 0;
> @@ -1359,18 +1361,11 @@ static int parse_options(struct super_block *sb, =
char *options, int is_vfat,
>  	}
>  =

>  out:
> -	/* UTF-8 doesn't provide FAT semantics */
> -	if (!strcmp(opts->iocharset, "utf8")) {
> -		fat_msg(sb, KERN_WARNING, "utf8 is not a recommended IO charset"
> -		       " for FAT filesystems, filesystem will be "
> -		       "case sensitive!");
> -	}
> +	opts->utf8 =3D !strcmp(opts->iocharset, "utf8") && is_vfat;

Still broken, so I think we still need the warning here (would be
tweaked warning).

>  	/* If user doesn't specify allow_utime, it's initialized from dmask. */
>  	if (opts->allow_utime =3D=3D (unsigned short)-1)
>  		opts->allow_utime =3D ~opts->fs_dmask & (S_IWGRP | S_IWOTH);
> -	if (opts->unicode_xlate)
> -		opts->utf8 =3D 0;

unicode_xlate option is exclusive with utf8, need to adjust
somewhere. (with this patch, unicode_xlate and utf8 will shows by
show_options())

> +	else if (utf8)
> +		return fat_utf8_strnicmp(name->name, str, alen);
> +	else
> +		return nls_strnicmp(t, name->name, str, alen);
>  }

Not strong opinion though, maybe we better to consolidate this to a
(inline) function? (FWIW, it may be better to refactor to provide some
filename functions to hide the detail of handling nls/utf8)

Thanks.
-- =

OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
