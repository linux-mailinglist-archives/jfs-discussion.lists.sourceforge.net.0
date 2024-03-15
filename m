Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AA287DA1C
	for <lists+jfs-discussion@lfdr.de>; Sat, 16 Mar 2024 13:18:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rlSyv-0001Km-5d;
	Sat, 16 Mar 2024 12:17:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <chenyuan0y@gmail.com>) id 1rlFH2-0003Ha-Oq
 for jfs-discussion@lists.sourceforge.net;
 Fri, 15 Mar 2024 21:39:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gseDtCj5kEimrUcS/V6U8zFbZSIu0bkcVbJlKBzpZlQ=; b=UvAPuSwut6N0jlzI3mOysaE2cj
 x9/Xao6pi99mPvXrb+IgR9NmwaCdFKGIoDfrXdRWA3BL6P/K42f6MrxE0zb0JtN9bJUov3sBv5rap
 MScKovqPIpOjMvvt/A7rT0aueN7G01iGM2uResKY5bAuLN5sUOXy1XKv1dhN+18v15kc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=gseDtCj5kEimrUcS/V6U8zFbZSIu0bkcVbJlKBzpZlQ=; b=G
 oWRPD6sXmeEYSDrD7rpAhdbvdCTJOrQrYkCGvSUDFo07IjG8mISolFjzPtlAPAN208LAR1PddfxtL
 k46GqCrAGJoHzGT52aXwAYZ+E0eWvN1lQRk7yBbvPsDTk9nWL+usknrXLMSX1KADfaCoH3nJ2eDxh
 FGjEhi0DY9zALrPE=;
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rlFGp-0000Ys-Ld for jfs-discussion@lists.sourceforge.net;
 Fri, 15 Mar 2024 21:39:33 +0000
Received: by mail-oi1-f177.google.com with SMTP id
 5614622812f47-3c3747e7f8cso994898b6e.0
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 15 Mar 2024 14:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1710538756; x=1711143556; darn=lists.sourceforge.net;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=gseDtCj5kEimrUcS/V6U8zFbZSIu0bkcVbJlKBzpZlQ=;
 b=OroLv6Dz1uKeDJI1jm/UnVkNUHl8qOXF6GP0FFT7kNy5oSOvLRm0z1Qw6w1vQmoWcU
 zrkxAx+H4JPVwaFqFgz5tngZRTGgdeg/BO6XjC6queT8PKi8S9sPQE0w75Ib2VxrAV2C
 Cirs15/LFuIcqSpHEIUyENcFwi6uHjNX50ANal4JeYsp6GAGpBlXvxzy+bMbtuNQyC5B
 43NEUXrVj1tHPGEIl52X/MUOLARsbuelLO0nKHou2cMOn0GJxl6nnIcU/h8Q9U/1xb+2
 Q3JU1nzqG5gQ5uEeh/v+Dm2vT7+qXXYokoQufk1hmR1ngGI/4ggeHf0msvARjyNVazC0
 P7SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710538756; x=1711143556;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gseDtCj5kEimrUcS/V6U8zFbZSIu0bkcVbJlKBzpZlQ=;
 b=DGn5q5/TzYNYUKUSkeM1ZzTLSdRWOtVQNAg3oevxPtGW2Si5rLybIstjBqiepFPCLo
 rpfzmxa92xyguAsnPDb536ZjhdvjrbliR1Yx0Xdmf0QXCprSy/HI7V0yK6k2eOt1PLM0
 d5MwnHG/9lJPN1PmqP+c2GRxRme7MN/dfg4mcoSVeiV48s7CCmaXZZ+Hf4dCquoARvm4
 CVFrGv8TYvpEDHYGoUveOlpFLnWRxG92gBTFlKYFnUQKoaGjbs2uH6qbEnbiSlMDdP3n
 p5M+eUH5FzT11256jMUEoJz0HeGGtGYIya5suNvmj85JjgxPf5cJOv7Zru3CIKswzPit
 VMCA==
X-Gm-Message-State: AOJu0YyB4UvxrID+kdjuQ0HnRm1whOhB11LxTNsQPiVvq9/NGC119gwQ
 qm1DbMqKVdhimCoXTDAjsM6NFkN6AMJmwJSDr59LZyok7rmir80=
X-Google-Smtp-Source: AGHT+IHR4v4iZ/YkOfDufAyEPfY88PvDU3PZ10bTQylVoC07CDQdg+ky6nllVynrgzCj8a7bPdqH0Q==
X-Received: by 2002:a05:6870:808d:b0:221:f921:467e with SMTP id
 q13-20020a056870808d00b00221f921467emr6586704oab.21.1710538756219; 
 Fri, 15 Mar 2024 14:39:16 -0700 (PDT)
Received: from cy-server ([2620:0:e00:550a:309:1e3b:44b7:197c])
 by smtp.gmail.com with ESMTPSA id
 x26-20020ae9f81a000000b00785d538aebdsm2393840qkh.95.2024.03.15.14.39.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Mar 2024 14:39:15 -0700 (PDT)
Date: Fri, 15 Mar 2024 16:39:15 -0500
To: shaggy@kernel.org, ghandatmanas@gmail.com, juntong.deng@outlook.com,
 code@siddh.me, andrew.kanner@gmail.com, wonguk.lee1023@gmail.com
Message-ID: <ZfTAAxRf6yoc5oxa@cy-server>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear JFS Developers,
 We are curious whether the function `dbFindLeaf()`
 would have an off-by-one out-of-bounds read. The function `dbFindLeaf` is
 https://elixir.bootlin.com/linux/v6.8/source/fs/jfs/jfs_dmap.c#L2942 and
 the relevant code is ``` static int dbFindLeaf(dmtree_t *tp, int l2nb, int
 *leafidx, bool is_ctl) [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chenyuan0y[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.177 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.177 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rlFGp-0000Ys-Ld
X-Mailman-Approved-At: Sat, 16 Mar 2024 12:17:44 +0000
Subject: [Jfs-discussion] [fs/jsf] Question about possible off-by-one check
 in dbFindLeaf()
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
From: Chenyuan Yang via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Chenyuan Yang <chenyuan0y@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net, zzjas98@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Dear JFS Developers,

We are curious whether the function `dbFindLeaf()` would have an off-by-one out-of-bounds read.

The function `dbFindLeaf` is https://elixir.bootlin.com/linux/v6.8/source/fs/jfs/jfs_dmap.c#L2942
and the relevant code is
```
static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, bool is_ctl)
{
	int ti, n = 0, k, x = 0;
	int max_size;

	max_size = is_ctl ? CTLTREESIZE : TREESIZE;
  ...
	for (k = le32_to_cpu(tp->dmt_height), ti = 1;
	     k > 0; k--, ti = ((ti + n) << 2) + 1) {
		/* search the four nodes at this level, starting from
		 * the left.
		 */
		for (x = ti, n = 0; n < 4; n++) {
			/* sufficient free space found.  move to the next
			 * level (or quit if this is the last level).
			 */
			if (x + n > max_size)
				return -ENOSPC;
			if (l2nb <= tp->dmt_stree[x + n])
				break;
		}
    ...
	}
  ...
}
```

The sanity check of size index `(x + n > max_size)`is off by one. `x + n` needs to be smaller than `max_size` to fit the dmt_stree array. This check was added recently through this commit: https://lore.kernel.org/all/20231107154654.3765336-14-sashal@kernel.org

One possible fix would be
```
-			if (x + n > max_size)
+			if (x + n >= max_size)
```

Please kindly correct us if we missed any key information. Looking forward to your response!

Best,
Chenyuan


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
